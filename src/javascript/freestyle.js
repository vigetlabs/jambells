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

    this.handBell = new HandBell(getNoteUrl(note), audioContext)
    this.handBell.initialize()
    this.$play.on('click', this.handBell.ding.bind(this.handBell))
  },

  updateHandbell: function() {
    var note = this.$select.val()

    this.handBell.update(getNoteUrl(note), audioContext)
  },

  watchSelect: function() {
    this.$select.change(function() {
      this.updateHandbell()
    }.bind(this))
  }
}

module.exports = Freestyle
