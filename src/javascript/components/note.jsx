/**
 * @jsx React.DOM
 */

var React = require('react')

module.exports = React.createClass({

  getInitialState: function() {
    return {
      played : false,
      note   : null,
      beat   : null
    }
  },

  componentDidMount: function() {
    this.setState({
      note : this.props.note,
      beat : this.props.beat
    })
  },

  percentageOffset: function() {
    return (this.props.difference / this.props.timeWindowInMilliseconds) * 100
  },

  top: function() {
    return this.props.beatOffset - this.percentageOffset()
  },

  noteContent: function() {
    var note       = this.props.note
    var typeOfNote = note === this.props.playerNote ? 'player-note' : 'other-note'
    var className  = 'type-' + note + ' ' + typeOfNote + (this.props.alt ? ' -alt' : '');

    if (note) {
      return (
        <figure className={className}>
          <img src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs%3D" width="0" height="0" alt="" />
          <span>{note}</span>
        </figure>
      )
    } else {
      return <figure />
    }
  },

  render: function() {
    var beat = this.props.beat
    var style = {
      WebkitTransform : 'translateY(' + this.top() + '%)'
    }

    return (
      <li className={'beat-' + beat} style={style}>
        { this.noteContent() }
      </li>
    )
  }

})
