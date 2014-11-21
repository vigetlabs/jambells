/**
 * @jsx React.DOM
 */

var React = window.React = require('react')
var Song = require('./components/song')

var someSong = {
  name    : 'Jingle Bells',
  bpm     : 152,
  measure : '4/4',
  notes   : ['E', 'E', 'E', 'REST', 'E', 'E', 'E', 'REST', 'E', 'G', 'C', 'D', 'E', 'HOLD', 'HOLD', 'HOLD', 'F', 'F', 'F', 'F', 'F', 'E', 'E', 'E', 'E', 'D', 'D', 'E', 'D', 'HOLD', 'G', 'HOLD', 'E', 'E', 'E', 'REST', 'E', 'E', 'E', 'REST', 'E', 'G', 'C', 'D', 'E', 'HOLD', 'HOLD', 'HOLD', 'F', 'F', 'F', 'F', 'F', 'E', 'E', 'E', 'G', 'G', 'F', 'D', 'C', 'HOLD', 'HOLD', 'HOLD']
}

if (container = document.getElementById('game-page')) {
  React.renderComponent(<Song song={someSong} />, container)
}
