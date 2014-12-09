var $            = require('jquery')
var HandBell     = require('./lib/Handbell')
var audioContext = require('./lib/audioContext')
var getNoteUrl   = require('./util/getNoteUrl')

var Freestyle = function() {
  this.initialize()
}

Freestyle.prototype = {
  initialize: function() {
    this.$select = $("#freestyle-note-select")
    this.$play   = $("#play-button")

    this.setupHandbell()
    this.watchSelect()
  },

  setupHandbell: function() {
    var note = this.$select.val()

    if (this.handBell) {
      console.log("shutting down handbell")
      this.$play.off('click')
      this.handBell.off()
    }

    this.handBell = new HandBell(getNoteUrl(note), audioContext)
    this.$play.on('click', this.handBell.ding.bind(this.handBell))
  },

  watchSelect: function() {
    this.$select.change(function() {
      this.setupHandbell()
    }.bind(this))
  }
}

module.exports = Freestyle
