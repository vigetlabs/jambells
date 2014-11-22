/**
 * @jsx React.DOM
 */

var React              = require('react')
var Note               = require('./note')
var bellMotionDetector = require('../util/bell_motion_detector')
var $                  = require('jquery')

module.exports = React.createClass({

  getInitialState: function() {
    return {
      miliElapsed : 0,
      start       : null,
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
    if (!this.state.start) this.setState({ start: timestamp })
    this.setState({ miliElapsed: timestamp - this.state.start })
    if (this.state.miliElapsed < this.totalMil()) {
      window.requestAnimationFrame(this.step);
    } else {
      this.setState({
        ended : true
      })
    }
  },

  componentDidMount: function() {
    this.beatHeight = $('body').height() / 5
    window.requestAnimationFrame(this.step);

    if (window.DeviceOrientationEvent) {
      this.bellMotionDetector = bellMotionDetector(this.props.bell, this.props.playerNote.toLowerCase())
      window.addEventListener('devicemotion', this.bellMotionDetector, false)
    }
  },

  componentDidUnmount: function() {
    if (window.DeviceOrientationEvent) {
      window.removeEventListener('devicemotion', this.bellMotionDetector, false)
    }
  },

  renderNotes: function(notes) {
    return notes.map(function(note, index){
      return <Note note={note} beat={index + 1} playerNote={this.props.playerNote} />
    }.bind(this))
  },

  render: function() {
    var style = {
      WebkitTransform : 'translateY(' + this.top() + 'px)'
    }

    if (this.state.ended) {
      return (
        <main className="song-container">
          <div className="song-ended">
            <h2>Nice Playing!</h2>
            <a href="/" className="button -gold -large">Back to Home</a>
          </div>
        </main>
      )
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
