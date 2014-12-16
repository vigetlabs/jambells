var ComputerPlayer = require('./lib/computer_player')
var $ = require('jquery')

module.exports = function(el){
  var song = $(el).data('song')

  ComputerPlayer.play(song.notes, song.roles, 1000)
}
