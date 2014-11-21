/**
 * @jsx React.DOM
 */

var React = require('react')
var Note  = require('./note')

module.exports = React.createClass({
  this.state.whatever
  getInitialState: function() {
    return {
      delta: 1
    }
  },

  componentDidMount: function() {
    var component = this
    setInterval(function(){
      component.setState({ delta: this.state.delta + 1 })
    }, 1000)
  },

  renderNotes: function(notes) {
    return notes.map(function(note, index){
      return <Note note={note} beat={index + 1} />
    })
  },

  render: function() {
    var song   = this.props.song
    var height = 150
    var style  = {
      WebkitTransform : 'translateY(' + (-150 * this.state.delta) + 'px)'
    }

    return (
      <main className="song-container">
        <header className="song-header">
          <button onClick={this._startGame}>Start</button>
          <button onClick={this._pauseGame}>Pause</button>
        </header>
        <div className="song-music">
          <ol className="song-notes" style={style}>
            {this.renderNotes(song.notes)}
          </ol>
        </div>
      </main>
    )
  }

})
