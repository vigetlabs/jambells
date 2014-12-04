// Fix this if anyone cares at some point...
// #TODO - i broke this. Love, Dan

// var Bell         = require('./lib/Bell')
// var audioContext = new AudioContext()

// var Preview = function(el) {
//   this.el      = el
//   this.preview = document.querySelector('#preview-play')
//   this.bell    = new Bell(audioContext)
//   this.song    = JSON.parse(this.el.getAttribute('data-song'))
//   this.notes   = this.song.notes
//   this.bindEvents()
// };

// Preview.prototype = {
//   bindEvents: function() {
//     this.preview.addEventListener('click', this.playNotes.bind(this))
//   },

//   playNotes: function() {
//     this.notes.forEach(function(note_info){
//       var note  = note_info.note.toLowerCase()
//       var delay = note_info.milliseconds_from_start

//       setTimeout(this.ringBellNote(note).bind(this), delay)
//     }.bind(this))
//   },

//   ringBellNote: function(note) {
//     return function() {
//       console.log('Play', note)
//       this.bell.ring(note)
//     }.bind(this)
//   }
// }

// module.exports = Preview
