var $        = require('jquery')
var HandBell = require('./lib/Handbell')

var Freestyle = function() {
  this.initialize()
}

Freestyle.prototype = {
  initialize: function() {
    this.$buttons = $('.freestyle-note-button')
    this.$body    = $('body')

    this.setupHandbell()
    this.watchButtons()
  },

  setupHandbell: function() {
    var note = this.$buttons.filter('.-active').data('note')

    this.handBell = new HandBell(note)
    this.$body.on('touchstart', this.handBell.initialize)
  },

  updateHandbell: function(e) {
    var $el = $(e.target)
    var note = $el.data('note')

    this.$buttons.removeClass('-active')
    $el.addClass('-active')

    this.handBell.setNote(note)
  },

  watchButtons: function() {
    this.$buttons.on('touchstart', this.updateHandbell.bind(this))
  }
}

module.exports = Freestyle
