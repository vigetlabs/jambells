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
    if (this.props.note === this.props.playerNote) {
      return <strong className={'type-' + this.props.note}>{this.props.note}</strong>
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
