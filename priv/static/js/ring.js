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
        a: new Note("/sounds/bell-A.wav"),
        b: new Note("/sounds/bell-B.wav"),
        c: new Note("/sounds/bell-C.wav"),
        d: new Note("/sounds/bell-D.wav"),
        e: new Note("/sounds/bell-E.wav"),
        f: new Note("/sounds/bell-F.wav"),
        g: new Note("/sounds/bell-G.wav")
        // a: new Note("/sounds/cat-A.wav"),
        // b: new Note("/sounds/cat-B.wav"),
        // c: new Note("/sounds/cat-C.wav"),
        // d: new Note("/sounds/cat-D.wav"),
        // e: new Note("/sounds/cat-E.wav"),
        // f: new Note("/sounds/cat-F.wav"),
        // g: new Note("/sounds/cat-G.wav")
      }
    }

    return this.memoizedNotes
  }
}
