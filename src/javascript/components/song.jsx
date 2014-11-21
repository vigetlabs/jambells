/**
 * @jsx React.DOM
 */

var React = require('react')
var Note  = require('./note')

var delta = 1;

module.exports = React.createClass({

  componentDidMount: function() {
    setInterval(this.render.bind(this), 1000)
  },

  renderNotes: function(notes) {
    return notes.map(function(note, index){
      return <Note note={note} beat={index + 1} />
    })
  },

  render: function() {
    var song   = this.props.song
    var height = 150
    // This style never ends up being changed from -150.
    // WHY! !?!?!??!!
    var style  = {
      WebkitTransform : 'translateY(' + (-150 * delta++) + 'px)'
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
