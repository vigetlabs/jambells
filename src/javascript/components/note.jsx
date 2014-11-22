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

  noteContent: function() {
    var note = this.props.note

    if (note === this.props.playerNote) {
      return (
        <figure className={'type-' + note + ' player-note' + (this.props.alt ? ' -alt' : '')}>
          <img src="data:image/gif;base64,R0lGODlhAQABAAD/ACwAAAAAAQABAAACADs%3D" width="0" height="0" alt="" />
          <span>{note}</span>
        </figure>
      )
    } else if (note) {
      return (
        <figure className={'type-' + note + ' other-note' + (this.props.alt ? ' -alt' : '')}>
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

    return (
      <li className={'beat-' + beat}>
        { this.noteContent() }
      </li>
    )
  }

})
