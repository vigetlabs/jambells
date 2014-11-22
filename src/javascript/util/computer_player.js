var ComputerPlayer = function(bell) {
  this.bell = bell
  this.atNote = 0
}

ComputerPlayer.prototype = {
  play: function(song, notesToPlay) {
    this.bpm = song.bpm
    this.notesToPlay = notesToPlay
    this.allNotes = song.notes.reverse()
    var firstBeatTime = this.miliPerBeat() * 3

    setTimeout(function(){
      setInterval(this.ringOrIgnore.bind(this), this.miliPerBeat())
      this.ringOrIgnore()
    }.bind(this), firstBeatTime)
  },

  ringOrIgnore: function() {
    var currentNote = this.allNotes[this.atNote]
    if (this.notesToPlay.indexOf(currentNote) !== -1) {
      this.bell.ring(currentNote.toLowerCase())
    }
    this.atNote += 1
  },

  miliPerBeat: function() {
    return 60000 / parseFloat(this.bpm)
  },

  totalMil: function() {
    return this.miliPerBeat() * this.song.notes.length
  }
}

module.exports = ComputerPlayer
