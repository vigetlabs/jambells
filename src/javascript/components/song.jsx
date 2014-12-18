/**
 * @jsx React.DOM
 */

var HandBell    = require('../lib/Handbell')
var Sound       = require('../lib/Sound')
var React       = require('react')
var Note        = require('./note')
var $           = require('jquery')
var SongStore   = require('../stores/song')
var SongActions = require('../actions/song')
var tempo       = require('../constants/tempo')

module.exports = React.createClass({

  bpmToMs: function() {
    return 60 / this.props.bpm * 1000
  },

  setRefreshState: function() {
    this.setState({
      ended                : false,
      milliseconds_elapsed : 0,
      playing              : false,
      start_time           : null
    })
  },

  getInitialState: function() {
    return {
      ended                : false,
      leader               : false,
      milliseconds_elapsed : 0,
      player_note          : null,
      playing              : false,
      pulse                : 0,
      start_time           : null
    }
  },

  songLength: function() {
    return this.props.notes[this.props.notes.length-1].milliseconds_from_start
  },

  step: function(timestamp) {
    if ( ! this.state.start_time) {
      this.setState({
        start_time : timestamp + this.props.startOffset
      })

      this.state.leader && this.countInMeasure()
    }

    this.setState({
      milliseconds_elapsed: (timestamp - this.state.start_time)
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
      playing     : SongStore.get('playing'),
      leader      : SongStore.get('player_note') == 0,
      player_note : this.props.playerNotes[SongStore.get('player_note')]
    })
  },

  playCountInBeat: function() {
    if (this.state.pulse % parseInt(this.props.measure.split('/')[0]) == 0) {
      this.countInBeats.primary.play()
    } else {
      this.countInBeats.secondary.play()
    }

    if (this.state.pulse == this.props.countIn) {
      clearInterval(this.pulseInterval)
      this.setState({
        pulse : 0
      })
    } else {
      this.setState({
        pulse : this.state.pulse + 1
      })
    }
  },

  countInMeasure: function() {
    this.playCountInBeat()
    this.pulseInterval = setInterval(this.playCountInBeat.bind(this), this.bpmToMs())
  },

  componentDidMount: function() {
    SongStore.on('change', this.onChange.bind(this))
    SongStore.on('refresh', this.setRefreshState.bind(this))

    this.countInBeats = {
      primary   : new Sound('PRIMARY'),
      secondary : new Sound('SECONDARY')
    }
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
      viewable   = difference > -tempo.TIME_WINDOW_IN_MS * 0.6 && difference < tempo.TIME_WINDOW_IN_MS * 0.1

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
    return parseInt(SongStore.get('player_note')) === 0
  },

  renderCompleted: function() {
    return (
      <main className="song-container">
        <div className="song-ended">
          <div className="thin-wrap -center">
            <h2>Nice Playing!</h2>
            {this.isFirstPlayer() &&
                <button className="button -green -large -block" onClick={this.replay}>Play Again?</button>
            }
            <a href="/" className="button -gold -large -block">Back to Home</a>
            <div className="social-actions">
              <span>Share on</span>
              <a href="https://www.facebook.com/sharer/sharer.php?u=http://jambells.com" class="social-button" target="_blank">
                 Facebook
              </a>
              <span>or</span>
              <a href="https://twitter.com/intent/tweet?text=Play %23handbells without any instruments! Try out JamBells at http://jambells.com/ via @JamBellsApp" class="social-button" target="_blank">
                Twitter
              </a>
            </div>
          </div>
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

  replay: function() {
    SongActions.replay()
  }

})
