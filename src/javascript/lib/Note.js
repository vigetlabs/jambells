var Note = function(audioFile) {
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

module.exports = Note