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

  render: function() {
    var note = this.props.note
    var beat = this.props.beat

    return (
      <li class={'beat-' + beat}>
        <strong className={'type-' + note}>{note}</strong>
      </li>
    )
  }

})
