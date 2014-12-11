/**
 * @jsx React.DOM
 */

var React       = require('react')
var Note        = require('./note')
var SongStore   = require('../stores/song')
var SongActions = require('../actions/song')
var tempo       = require('../constants/tempo')

module.exports = React.createClass({
  getInitialState: function() {
    return {
      ended                : false,
      milliseconds_elapsed : 0,
      new_room             : false,
      player_note          : null,
      playing              : false,
      start_time           : null
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
    if (this.state.milliseconds_elapsed > this.songLength() + tempo.ENDING_SONG_BUFFER) {
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
  },

  onChange: function() {
    this.setState({
      new_room    : SongStore.get('new_room'),
      player_note : this.props.playerNotes[SongStore.get('player_note')],
      playing     : SongStore.get('playing')
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
      note       = note_info.note
      delay      = note_info.milliseconds_from_start
      difference = delay - this.state.milliseconds_elapsed
      viewable   = difference > -tempo.TIME_WINDOW_IN_MS * 0.8 && difference < tempo.TIME_WINDOW_IN_MS * 0.2

      if (viewable) {
        return (
          <Note alt={index % 2 ? true : false}
                beat={index + 1}
                difference={difference}
                note={note}
                playerNote={this.state.player_note}
                timeWindowInMilliseconds={tempo.TIME_WINDOW_IN_MS} />
        )
      }

    }.bind(this))
  },

  isFirstPlayer: function() {
    console.log('Player #', SongStore.get('player_note'));

    var playerIndex = parseInt(SongStore.get('player_note'))

    return playerIndex === 0
  },

  getOption: function(option, index) {
    return <option value={index}>{option}</option>
  },

  renderCompleted: function() {
    return (
      <main className="song-container">
        <div className="song-ended">
          <h2>Nice Playing!</h2>
          {this.isFirstPlayer() &&
            <div>
              <label>Start another room and to play a song listed below:</label>
              <select onChange={this._startRoom}>
                {this.getOption.map(this.props.songOptions)}
              </select>
            </div>
          }
          {this.state.new_room &&
            <a href={'/' + this.state.new_room} className="button -gold -large -block">Join New Room?</a>
          }
          {!this.state.new_room &&
            <p>Want to play again? Tell the game creator to <b>Play Again</b>.</p>
          }
          <a href="/" className="button -green -large -block">Back to Home</a>
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
  },

  _startRoom: function() {
    SongActions.startRoom()
  }
})
