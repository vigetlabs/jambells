var audioContext = new AudioContext()
var bell = new Bell(audioContext)

var song_info   = $("#room-info").data("song")

var notes       = song_info.notes
var miliPerBeat = 30000 / song_info.bpm

var index = 0

var playNote = function() {
  console.log(index)

  bell.ring(notes[index].toLowerCase())

  index++

  if (index < notes.length) {
    setTimeout(playNote, miliPerBeat)
  } else {
    console.log("Song over")
  }
}

$("#play").click(function(e) {
  e.preventDefault()

  playNote()
})
