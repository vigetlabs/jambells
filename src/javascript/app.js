var $    = require('jquery')
var Game = require('./game')

// js for previewing songs in full
require('./preview')

// Index page
// #TODO Add basic routing
$("#enter-room").submit(function(e) {
  e.preventDefault()
  window.location = "/" + $("#room-code").val()
})

// Game page
var container = document.getElementById('game')

if (container) {
  window.game = new Game(container)
}
