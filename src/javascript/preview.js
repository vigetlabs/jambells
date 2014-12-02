var $ = require('jquery')
var Bell = require('./lib/Bell')

var audioContext = new AudioContext()
var bell         = new Bell(audioContext)

var song_info   = $("#room-info").data("song")

if (song_info) {
  var notes       = song_info.notes
  var miliPerBeat = 60000 / song_info.bpm

  var index = 0

  var playNote = function() {
    console.log(notes[index])

    bell.ring(notes[index].toLowerCase())

    index++

    if (index < notes.length) {
      setTimeout(playNote, miliPerBeat)
    } else {
      console.log("Song over")
    }
  }

  $("#preview-play").click(function(e) {
    e.preventDefault()

    playNote()
  })

}
