/**
 * @jsx React.DOM
 */

var React              = require('react')
var Note               = require('./note')
var $                  = require('jquery')
var SongStore          = require('../stores/song')

module.exports = React.createClass({

  BEGINNING_SONG_BUFFER : 2000,
  ENDING_SONG_BUFFER    : 2000,
  TIME_WINDOW_IN_MS     : 3000,

  getInitialState: function() {
    return {
      ended                       : false,
      milliseconds_elapsed        : 0,
      player_note                 : null,
      playing                     : false,
      start_time                  : null
    }
  },

  songLength: function() {
    return this.props.notes[this.props.notes.length-1].milliseconds_from_start
  },

  step: function(timestamp) {
    if ( ! this.state.start_time) {
      this.setState({
        start_time : timestamp
      })
    }

    this.setState({
      milliseconds_elapsed: timestamp - this.state.start_time
    })

    // Song has ended
    if (this.state.milliseconds_elapsed > this.songLength() + this.ENDING_SONG_BUFFER) {
      this.setState({
        playing : false,
        ended   : true
      })
    }
  },

  componentDidUpdate: function(prevProps, prevState) {
    if (this.state.playing) {
      window.requestAnimationFrame(this.step)
    } else {
      window.cancelAnimationFrame(this.step)
    }
    // TODO: Initialize bell here?
  },

  componentDidUnmount: function() {
    // TODO: Tear down bell here?
  },

  onChange: function() {
    this.setState({
      playing     : SongStore.get('playing'),
      player_note : this.props.playerNotes[SongStore.get('player_note')].toLowerCase()
    })
  },

  componentDidMount: function() {
    SongStore.on('change', this.onChange.bind(this))
  },

  renderNotes: function(notes) {
    var difference
    var note
    var delay
    var viewable

    return notes.map(function(note_info, index){
      note       = note_info.note.toLowerCase()
      delay      = note_info.milliseconds_from_start
      difference = delay - this.state.milliseconds_elapsed
      viewable   = difference > -this.TIME_WINDOW_IN_MS * 0.8 && difference < this.TIME_WINDOW_IN_MS * 0.2

      if (viewable) {
        return (
          <Note alt={index % 2 ? true : false}
                beat={index + 1}
                difference={difference}
                note={note}
                playerNote={this.state.player_note}
                timeWindowInMilliseconds={this.TIME_WINDOW_IN_MS} />
        )
      }

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

    return (
      <main className="song-container">
        <div className="song-music">
          <ol className="song-notes">
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
