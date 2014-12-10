var Events     = require('events')
var Dispatcher = require('../dispatcher')
var Actions    = require('../constants/actions')
var assign     = require('object-assign')

var CHANGE     = 'change'

var _data      = {
  playing     : false,
  player_note : null
}

var Song = assign({}, Events.EventEmitter.prototype, {

  onChange: function(callback) {
    this.on(CHANGE, callback)
  },

  offChange: function(callback) {
    this.removeListener(CHANGE, callback)
  },

  get: function(key) {
    return typeof key === 'string' ? _data[key] : _data
  },

  set: function(key, value) {
    _data = typeof key === 'object' ? assign({}, _data, key) : _data[key] = value
    Song.emit(CHANGE)
  },

  replay: function() {
    Song.emit(CHANGE)
  }

})

module.exports = Song

Dispatcher.register(function(action) {
  switch (action.type) {
    case Actions.PLAY_SONG:
      Song.set({
        'playing'     : true,
        'player_note' : action.param
      })
      break

    case Actions.REPLAY_SONG:
      Song.replay()
      break

    default:
      return true
  }
})
