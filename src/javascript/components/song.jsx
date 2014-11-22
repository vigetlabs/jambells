/**
 * @jsx React.DOM
 */

var React = require('react')
var Note  = require('./note')

module.exports = React.createClass({

  getInitialState: function() {
    return {
      intervalsElapsed: 0
    }
  },

  intervalLength: 25,

  beatsPerMili: function() {
    return parseFloat(this.props.bpm) / 60000
  },

  miliElapsed: function() {
    return this.state.intervalsElapsed * this.intervalLength
  },

  beatsElapsed: function() {
    return this.miliElapsed() * this.beatsPerMili()
  },

  beatHeight: 150,

  initialTop: function() {
    return -(this.beatHeight * this.props.notes.length)
  },

  top: function() {
    return this.initialTop() + (this.beatsElapsed() * this.beatHeight)
  },

  componentDidMount: function() {
    setInterval(function(){
      console.log('hay')
      this.setState({ intervalsElapsed: this.state.intervalsElapsed + 1 })
    }.bind(this), this.intervalLength)
  },

  renderNotes: function(notes) {
    return notes.map(function(note, index){
      return <Note note={note} beat={index + 1} />
    })
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
