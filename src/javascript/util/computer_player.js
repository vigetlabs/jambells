var ComputerPlayer = function(bell) {
  this.bell = bell
  this.atNote = 0
}

ComputerPlayer.prototype = {
  play: function(song, notesToPlay) {
    this.bpm = song.bpm
    this.miliPerBeat = 60000 / parseFloat(this.bpm)
    this.notesToPlay = notesToPlay
    this.allNotes = song.notes.slice(0)
    this.allNotes.reverse()
    var firstBeatTime = this.miliPerBeat * 3
    var noteTimes = []

    this.allNotes.forEach(function(note, index) {
      noteTimes.push({ note: note, delay: (firstBeatTime + index * this.miliPerBeat) })
    }.bind(this))

    noteTimes.forEach(function(noteTime) {
      setTimeout(this.ringNote(noteTime.note).bind(this), noteTime.delay)
    }.bind(this))

  },

  ringNote: function(note) {
    return function() {
      if (this.notesToPlay.indexOf(note) !== -1) {
        console.log('COMPUTER', note)
        this.bell.ring(note.toLowerCase())
      } else if(note !== '') {
        console.log('PLAYER')
      }
    }
  }
}

module.exports = ComputerPlayer
