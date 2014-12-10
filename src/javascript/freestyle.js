var $              = require('jquery')
var HandBell       = require('./lib/Handbell')
var isTouch        = ('ontouchend' in document)
var respondToEvent = isTouch ? 'touchstart' : 'click'

var Freestyle = function() {
  this.initialize()
}

Freestyle.prototype = {
  initialize: function() {
    this.$buttons  = $('.freestyle-note-button')
    this.$styles   = $('.freestyle-style-button')
    this.$play     = $('#play-now')
    this.touchPlay = true

    this.setupHandbell()

    if (isTouch) {
      this.$play.addClass('-show')
      this.$play.on(respondToEvent, function(e){
        this.handBell.ding()
        this.$play.removeClass('-show')
      }.bind(this))
    }

    this.setupWatchers()
  },

  setupHandbell: function() {
    var note = this.$buttons.filter('.-active').data('note')
    this.savedNote = note

    this.handBell = new HandBell(note)
    this.handBell.initialize()
  },

  setupWatchers: function() {
    this.$buttons.on(respondToEvent, this.updateHandbell.bind(this))
    this.$styles.on(respondToEvent, this.updateStyle.bind(this))
  },

  updateHandbell: function(e) {
    var $el = $(e.target)
    var note = $el.data('note')

    this.$buttons.removeClass('-active')
    $el.addClass('-active')

    if (this.savedNote != note) {
      this.savedNote = note
      this.handBell.setNote(note)
    }

    if (isTouch) {
      this.touchPlay && this.handBell.ding()
    } else {
      this.handBell.ding()
    }
  },

  updateStyle: function(e) {
    var $el   = $(e.target)
    var style = $el.data('style')

    this.$styles.removeClass('-active')
    $el.addClass('-active')

    this.touchPlay = (style == "touch")
  }
}

module.exports = Freestyle
