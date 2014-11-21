window.AudioContext = window.AudioContext || window.webkitAudioContext

Bell = function(audioContext) {
  this.audioContext = audioContext
}

Bell.prototype = {
  ringDuration: 100,

  ring: function(frequency) {
    this.oscillator =  this.audioContext.createOscillator()
    this.setOscillatorType('square')
    this.setOscillatorFrequency(frequency)
    this.oscillator.start(0)
    this.oscillator.connect(this.audioContext.destination)
    setTimeout(this.mute.bind(this), this.ringDuration);
  },

  mute: function() {
    this.oscillator.stop(0)
  },

  setOscillatorType: function(type) {
    this.oscillator.type = type
  },

  setOscillatorFrequency: function(frequency) {
    this.oscillator.frequency.value = frequency
  }
}
