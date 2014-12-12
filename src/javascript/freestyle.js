var $          = require('jquery')
var HandBell   = require('./lib/Handbell')
var isTouch    = require('./util/isTouch')
var clickEvent = isTouch ? 'touchstart' : 'click'

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
      this.setupTouchWatchers()
    } else {
      this.handBell.initialize()
    }

    this.$buttons.on(clickEvent, this.updateHandbell.bind(this))
  },

  setupHandbell: function() {
    var note = this.$buttons.filter('.-active').data('note')
    this.savedNote = note

    this.handBell = new HandBell(note)
  },

  setupTouchWatchers: function() {
    this.$styles            = $('.freestyle-style-button')
    this.$styleInstructions = $('.freestyle-style-instructions')
    this.touchPlay          = true

    this.$styles.on(clickEvent, this.updateStyle.bind(this))

    this.$play.on(clickEvent, function(e){
      this.handBell.initialize()

      this.$styleInstructions.addClass('-show')
      this.$styles.addClass('-show')
      this.$play.removeClass('-show')
    }.bind(this))
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
