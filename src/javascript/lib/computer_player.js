var Sound        = require('./Sound')
var getNoteUrl   = require('../util/getNoteUrl')
var audioContext = require('./audioContext')

ComputerPlayer = {
  play: function(noteObjects, unassignedNotes) {
    // TODO: Move TIME_WINDOW_IN_MS to shared variable
    this.firstBeatTime   = 1000 // Song.TIME_WINDOW_IN_MS / 3
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
        this.handBells[noteObject.note] = new Sound(getNoteUrl(noteObject.note), audioContext)
      }

      this.noteTimes.push({
        note  : noteObject.note,
        delay : (this.firstBeatTime + noteObject.milliseconds_from_start)
      })
    }
  },

  queueNote: function(noteTime) {
    setTimeout(this.ringNote.bind(this, noteTime.note), noteTime.delay)
  },

  ringNote: function(note) {
    this.handBells[note].play()
  }
}

module.exports = ComputerPlayer
