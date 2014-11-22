window.AudioContext = window.AudioContext || window.webkitAudioContext

function Note(audioFile) {
  this.audioFileURL = "http://" + location.host + audioFile
  this.loaded = false
}

Note.prototype = {
  play: function(audioContext) {
    if (this.loaded) {
      this.playInContext(audioContext)
    } else {
      this.loadSound(audioContext)
    }
  },

  playInContext: function(audioContext) {
    var source = audioContext.createBufferSource()
    source.buffer = this.buffer
    source.connect(audioContext.destination);
    source.start(0)
  },

  loadSound: function(audioContext) {
    var note = this
    var request = new XMLHttpRequest();
    request.open('GET', this.audioFileURL, true);
    request.responseType = 'arraybuffer';

    request.onload = function() {
      audioContext.decodeAudioData(request.response, function(buffer) {
        note.buffer = buffer
        note.loaded = true
        note.play(audioContext)
      }, function() { alert('This bell malfunctioned! Reload the page.') })
    }
    request.send()
  }
}

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
      }
    }

    return this.memoizedNotes
  }
}
