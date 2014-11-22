var $    = require('jquery')
var game = require('./game')

// Index page
// #TODO Add basic routing
$("#enter-room").submit(function(e) {
  e.preventDefault()
  window.location = "/" + $("#room-code").val()
})

// Game page
var container = document.getElementById('game-page')

if (container) {
  game(container)
}
