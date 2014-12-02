var $ = require('jquery')

var song_info = $("#room-info").data("song")

if (song_info != undefined) {
  var Bell = require('./lib/Bell')

  var audioContext = new AudioContext()
  var bell         = new Bell(audioContext)

  var notes       = song_info.notes
  var miliPerBeat = 60000 / song_info.bpm

  var index = 0

  var playNotes = function() {
    notes.forEach(function(note_info){
      var note  = note_info.note.toLowerCase()
      var delay = note_info.milliseconds_from_start

      setTimeout(function(){bell.ring(note)}, delay)
    })
  }

  $("#preview-play").click(function(e) {
    e.preventDefault()

    playNotes()
  })
}
