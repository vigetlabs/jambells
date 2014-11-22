var Note = require('./Note')

Bell = function(audioContext) {
  this.audioContext = audioContext
  this.memoizedNotes = null
}

Bell.prototype = {
  ring: function(noteSelection) {
    note = this.notes()[noteSelection]

    if (note) {
      note.play(this.audioContext)
    }
  },

  notes: function() {
    if (this.memoizedNotes === null) {
      this.memoizedNotes = {
        c3: new Note("/sounds/bell-C3.wav"),
        d3: new Note("/sounds/bell-D3.wav"),
        e3: new Note("/sounds/bell-E3.wav"),
        f3: new Note("/sounds/bell-F3.wav"),
        g3: new Note("/sounds/bell-G3.wav"),
        a3: new Note("/sounds/bell-A3.wav"),
        b3: new Note("/sounds/bell-B3.wav"),
        c4: new Note("/sounds/bell-C4.wav"),
        d4: new Note("/sounds/bell-D4.wav"),
        e4: new Note("/sounds/bell-E4.wav"),
        f4: new Note("/sounds/bell-F4.wav"),
        g4: new Note("/sounds/bell-G4.wav"),
        a4: new Note("/sounds/bell-A4.wav"),
        b4: new Note("/sounds/bell-B4.wav"),
        c5: new Note("/sounds/bell-C5.wav"),

        // c3: new Note("/sounds/cat-C3.wav"),
        // d3: new Note("/sounds/cat-D3.wav"),
        // e3: new Note("/sounds/cat-E3.wav"),
        // f3: new Note("/sounds/cat-F3.wav"),
        // g3: new Note("/sounds/cat-G3.wav"),
        // a3: new Note("/sounds/cat-A3.wav"),
        // b3: new Note("/sounds/cat-B3.wav"),
        // c4: new Note("/sounds/cat-C4.wav"),
        // d4: new Note("/sounds/cat-D4.wav"),
        // e4: new Note("/sounds/cat-E4.wav"),
        // f4: new Note("/sounds/cat-F4.wav"),
        // g4: new Note("/sounds/cat-G4.wav"),
        // a4: new Note("/sounds/cat-A4.wav"),
        // b4: new Note("/sounds/cat-B4.wav"),
        // c5: new Note("/sounds/cat-C5.wav"),
      }
    }

    return this.memoizedNotes
  }
}

module.exports = Bell
