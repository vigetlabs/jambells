var Events     = require('events')
var Dispatcher = require('../dispatcher')
var Actions    = require('../constants/actions')

var merge      = require('react/lib/merge')
var CHANGE     = 'change'

var _data      = {
  playing     : false,
  player_note : null
}

var Song = merge(Events.EventEmitter.prototype, {

  onChange: function(callback) {
    this.on(CHANGE, callback)
  },

  offChange: function(callback) {
    this.removeListener(CHANGE, callback)
  },

  get: function(key) {
    return typeof key === 'undefined' ? _data : _data[key]
  },

  set: function(key, value) {
    _data[key] = value
    Song.emit(CHANGE)
  }

})

module.exports = Song

Dispatcher.register(function(action) {
  switch (action.type) {
    case Actions.PLAY_SONG:
      Song.set('playing', true)
      break
    case Actions.PAUSE_SONG:
      Song.set('playing', false)
      break
    case Actions.SET_PLAYER_NOTE:
      Song.set('player_note', action.param)
      break
    default:
      return true
  }
})
