/**
 * @jsx React.DOM
 */

var React              = require('react')
var Note               = require('./note')
var bellMotionDetector = require('../util/bell_motion_detector')
var $                  = require('jquery')
var SongStore          = require('../stores/song');

module.exports = React.createClass({

  getInitialState: function() {
    return {
      miliElapsed : 0,
      start_time  : null,
      delta_time  : 0,
      player_note : null,
      playing     : false,
      ended       : false
    }
  },

  beatsPerMili: function() {
    return parseFloat(this.props.bpm) / 60000
  },

  miliPerBeat: function() {
    return 60000 / parseFloat(this.props.bpm)
  },

  beatsElapsed: function() {
    return this.state.miliElapsed * this.beatsPerMili()
  },

  totalMil: function() {
    return this.miliPerBeat() * this.props.notes.length
  },

  initialTop: function() {
    return -(this.beatHeight * this.props.notes.length)
  },

  top: function() {
    return this.initialTop() + (this.beatsElapsed() * this.beatHeight)
  },

  step: function(timestamp) {
    if ( ! this.state.start_time) {
      this.setState({
        start_time : timestamp
      })
    }

    this.setState({
      miliElapsed: timestamp - this.state.start_time
    })

    if (this.state.miliElapsed > this.totalMil() ) {
      this.setState({
        playing : false,
        ended   : true
      })
    }
  },

  componentDidUpdate: function(prevProps, prevState) {
    if ( this.state.playing ) {
      window.requestAnimationFrame(this.step)
    } else {
      window.cancelAnimationFrame(this.step)
    }
  },

  onChange: function() {
    this.setState({
      playing     : SongStore.get('playing'),
      player_note : this.props.playerNotes[SongStore.get('player_note')]
    })
  },

  componentDidMount: function() {
    SongStore.on('change', this.onChange.bind(this))

    this.beatHeight = $('body').height() / 5
  },

  renderNotes: function(notes) {
    return notes.map(function(note, index){
      return <Note alt={index % 2 ? true : false} note={note} beat={index + 1} playerNote={this.state.player_note} />
    }.bind(this))
  },

  renderCompleted: function() {
    return (
      <main className="song-container">
        <div className="song-ended">
          <h2>Nice Playing!</h2>
          <a href="/" className="button -gold -large">Back to Home</a>
        </div>
      </main>
    )
  },

  render: function() {
    if (this.state.ended) return this.renderCompleted()

    if ( ! this.state.playing) return <noscript />

    var style = {
      WebkitTransform : 'translateY(' + this.top() + 'px)'
    }

    return (
      <main className="song-container">
        <div className="song-music">
          <ol className="song-notes" style={style}>
            {this.renderNotes(this.props.notes)}
          </ol>
        </div>
        <div className="note-target">
          <figure>
            <img src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs%3D" width="0" height="0" alt="" />
          </figure>
        </div>
      </main>
    )
  }
})
