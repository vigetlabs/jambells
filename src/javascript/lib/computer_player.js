var Sound = require('./Sound')
var tempo = require('../constants/tempo')

ComputerPlayer = {
  play: function(noteObjects, unassignedNotes) {
    this.firstBeatDelay  = this.calculateFirstBeatDelay()
    this.noteObjects     = noteObjects
    this.unassignedNotes = unassignedNotes
    this.handBells       = {}
    this.noteTimes       = []
    this.noteObjects.forEach(this.initializeNote.bind(this))

    this.noteTimes.forEach(this.queueNote.bind(this))
  },

  initializeNote: function(noteObject, index) {
    if (this.unassignedNotes.indexOf(noteObject.note) != -1) {
      if (!this.handBells[noteObject.note]) {
        this.handBells[noteObject.note] = new Sound(noteObject.note)
      }

      this.noteTimes.push({
        note  : noteObject.note,
        delay : (this.firstBeatDelay + noteObject.milliseconds_from_start)
      })
    }
  },

  queueNote: function(noteTime) {
    setTimeout(this.ringNote.bind(this, noteTime.note), noteTime.delay)
  },

  ringNote: function(note) {
    this.handBells[note].play()
  },

  calculateFirstBeatDelay: function() {
    return tempo.TIME_WINDOW_IN_MS / 3
  }
}

module.exports = ComputerPlayer
