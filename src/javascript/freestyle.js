var $        = require('jquery')
var HandBell = require('./lib/Handbell')
var respondToEvent = ('ontouchend' in document) ? 'touchstart' : 'click'
var Freestyle = function() {
  this.initialize()
}

Freestyle.prototype = {
  initialize: function() {
    this.$buttons = $('.freestyle-note-button')
    this.$body    = $('body')

    this.setupHandbell()
  },

  setupHandbell: function() {
    var note = this.$buttons.filter('.-active').data('note')

    this.handBell = new HandBell(note)
    this.handBell.initialize()
    this.$buttons.on(respondToEvent, this.updateHandbell.bind(this))
    this.$buttons.on(respondToEvent, this.handBell.ding.bind(this.handBell))
  },

  updateHandbell: function(e) {
    var $el = $(e.target)
    var note = $el.data('note')

    this.$buttons.removeClass('-active')
    $el.addClass('-active')

    this.handBell.setNote(note)
  }
}

module.exports = Freestyle
