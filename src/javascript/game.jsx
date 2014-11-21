/**
 * @jsx React.DOM
 */

var React = window.React = require('react');
var Sheet = require('./components/sheet');

if (container = document.getElementById('game')) {
  React.renderComponent(<Sheet />, container);
}
