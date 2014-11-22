/**
 * @jsx React.DOM
 */

var React = require('react')
var Note  = require('./note')

module.exports = React.createClass({

  getInitialState: function() {
    return {
      miliElapsed : 0,
      start       : null,
      score       : 0
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

  beatHeight: 150,

  initialTop: function() {
    return -(this.beatHeight * this.props.notes.length)
  },

  top: function() {
    return this.initialTop() + (this.beatsElapsed() * this.beatHeight)
  },

  step: function(timestamp) {
    if (!this.state.start) {
      this.setState({
        start      : timestamp,
        start_time : new Date().getTime()
      })
    }

    this.setState({
      miliElapsed: timestamp - this.state.start
    })

    if (this.state.miliElapsed < this.totalMil()) {
      window.requestAnimationFrame(this.step);
    }
  },

  componentDidMount: function() {
    window.requestAnimationFrame(this.step);
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

    return (
      <main className="song-container" onClick={this.checkScore}>
        <div className="song-music">
          <ol className="song-notes" style={style}>
            {this.renderNotes(this.props.notes)}
          </ol>
        </div>
      </main>
    )
  },

  checkScore: function() {
    var currentTime   = new Date().getTime()
    var startTime     = this.state.start_time
    var elapsedTime   = currentTime - startTime
    var exactNoteTime = 0
    var shouldLoop    = true
    var i             = 0

    while (shouldLoop !== false) {
      exactNoteTime = i * 1000

      if (exactNoteTime > elapsedTime + 200) {
        shouldLoop = false
        break
      }

      if ((exactNoteTime >= elapsedTime - 200) && (exactNoteTime <= elapsedTime + 200)  ) {
        console.log('Score!!')
        shouldLoop = false
      }

      i++
    }
  }

})
