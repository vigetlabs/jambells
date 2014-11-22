/**
 * @jsx React.DOM
 */

var React = require('react')
var Note  = require('./note')

module.exports = React.createClass({

  getInitialState: function() {
    return {
      miliElapsed: 0
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
    console.log('stepping')
    if (!this.state.start) this.setState({ start: timestamp })
    this.setState({ miliElapsed: timestamp - this.state.start })
    if (this.state.miliElapsed < this.totalMil()) {
      window.requestAnimationFrame(this.step);
    }
  },

  componentDidMount: function() {
    this.state.start = null;
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
      <main className="song-container">
        <header className="song-header">
          <button onClick={this._startGame}>Start</button>
          <button onClick={this._pauseGame}>Pause</button>
        </header>
        <div className="song-music">
          <ol className="song-notes" style={style}>
            {this.renderNotes(this.props.notes)}
          </ol>
        </div>
      </main>
    )
  }

})
