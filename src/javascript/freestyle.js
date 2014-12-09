var $        = require('jquery')
var HandBell = require('./lib/Handbell')

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

    this.handBell = new HandBell(note)
    this.handBell.initialize()
    this.$play.on('click', this.handBell.ding.bind(this.handBell))
  },

  updateHandbell: function() {
    var note = this.$select.val()

    this.handBell.setNote(note)
  },

  watchSelect: function() {
    this.$select.change(function() {
      this.updateHandbell()
    }.bind(this))
  }
}

module.exports = Freestyle
