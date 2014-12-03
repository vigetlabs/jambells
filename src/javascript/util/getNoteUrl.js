var testAudio = document.createElement('audio')
var mp3support = !!(testAudio.canPlayType && testAudio.canPlayType('audio/mpeg;').replace(/no/, ''))

module.exports = function(note) {
  return "/sounds/bell-" + note.charAt(0).toUpperCase() + note.slice(1) + (mp3support ? '.mp3' : '.ogg')
}
