var $              = require('jquery')
var HandBell       = require('./lib/Handbell')
var isTouch        = ('ontouchend' in document)
var respondToEvent = isTouch ? 'touchstart' : 'click'

var Freestyle = function() {
  this.initialize()
}

Freestyle.prototype = {
  initialize: function() {
    this.$buttons = $('.freestyle-note-button')
    this.$play    = $('#play-now')

    this.setupHandbell()

    if (isTouch) {
      this.$play.addClass('-show')
      this.$play.on(respondToEvent, function(e){
        this.handBell.ding.call(this.handBell)
        this.$play.removeClass('-show')
      }.bind(this))
    }

    this.$buttons.on(respondToEvent, this.updateHandbell.bind(this))
  },

  setupHandbell: function() {
    var note = this.$buttons.filter('.-active').data('note')
    this.savedNote = note

    this.handBell = new HandBell(note)
    this.handBell.initialize()
  },

  updateHandbell: function(e) {
    var $el = $(e.target)
    var note = $el.data('note')

    this.$buttons.removeClass('-active -fill')
    $el.addClass('-active')

    if (this.savedNote != note) {
      this.savedNote = note
      this.handBell.setNote(note)
    }

    !isTouch && this.handBell.ding()
  }
}

module.exports = Freestyle
