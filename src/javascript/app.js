var $       = require('jquery')
var Game    = require('./game')
var Preview = require('./preview')

// js for previewing songs in full
var previewNode = document.querySelector('#room-info')

if (previewNode) new Preview(previewNode)

// Index page
// #TODO Add basic routing
$('#enter-room').submit(function(e) {
  e.preventDefault()
  window.location = '/' + $('#room-code').val()
})

// Game page
var container = document.getElementById('game')

if (container) {
  window.game = new Game(container)
}
