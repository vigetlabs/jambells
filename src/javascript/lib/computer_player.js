var Sound        = require('./Sound')
var getNoteUrl   = require('../util/getNoteUrl')
var audioContext = require('./audioContext')

var ComputerPlayer = function() {
  this.atNote = 0
}

ComputerPlayer.prototype = {
  initialize: function(song, notesToPlay) {
    this.bpm = song.bpm
    this.miliPerBeat = 60000 / parseFloat(this.bpm)
    this.firstBeatTime = this.miliPerBeat * 4
    this.notesToPlay = notesToPlay
    this.allNotes = song.notes.slice(0).reverse()
    this.handBells = {}
    this.noteTimes = []
    this.allNotes.forEach(this.initializeNote.bind(this))
  },

  play: function() {
    this.noteTimes.forEach(this.queueNote.bind(this))
  },

  initializeNote: function(note, index) {
    if(note && !this.handBells[note]) {
      this.handBells[note] = new Sound(getNoteUrl(note), audioContext)
    }

    this.noteTimes.push({
      note: note,
      delay: (this.firstBeatTime + index * this.miliPerBeat)
    })
  },

  queueNote: function(noteTime) {
    setTimeout(this.ringNote.bind(this, noteTime.note), noteTime.delay)
  },

  ringNote: function(note) {
    if (this.notesToPlay.indexOf(note) !== -1) {
      this.handBells[note].play()
    }
  }
}

module.exports = ComputerPlayer
