// Fix this if anyone cares at some point...
// #TODO - i broke this. Love, Dan

// var $ = require('jquery')

// var song_info = $("#room-info").data("song")

// if (song_info != undefined) {
//   var Bell = require('./lib/Bell')

// <<<<<<< HEAD
// if (song_info) {
//   var notes       = song_info.notes
//   var miliPerBeat = 60000 / song_info.bpm

//   var index = 0

//   var playNote = function() {
//     console.log(notes[index])

//     bell.ring(notes[index].toLowerCase())

//     index++

//     if (index < notes.length) {
//       setTimeout(playNote, miliPerBeat)
//     } else {
//       console.log("Song over")
//     }
// =======
//   var audioContext = new AudioContext()
//   var bell         = new Bell(audioContext)

//   var notes       = song_info.notes
//   var miliPerBeat = 60000 / song_info.bpm

//   var index = 0

//   var playNotes = function() {
//     notes.forEach(function(note_info){
//       var note  = note_info.note.toLowerCase()
//       var delay = note_info.milliseconds_from_start

//       setTimeout(function(){bell.ring(note)}, delay)
//     })
// >>>>>>> Converted existing songs to new song format
//   }

//   $("#preview-play").click(function(e) {
//     e.preventDefault()
// <<<<<<< HEAD

//     playNote()
//   })

// =======

//     playNotes()
//   })
// >>>>>>> Converted existing songs to new song format
// }
