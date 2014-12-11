var Events     = require('events')
var Dispatcher = require('../dispatcher')
var Actions    = require('../constants/actions')
var assign     = require('object-assign')

var CHANGE     = 'change'
var REPLAY     = 'replay'
var REFRESH    = 'refresh'

var defaultData = {
  playing     : false,
  player_note : null
}
var _data      = defaultData

var Song = assign({}, Events.EventEmitter.prototype, {

  get: function(key) {
    return typeof key === 'string' ? _data[key] : _data
  },

  set: function(key, value) {
    _data = typeof key === 'object' ? assign({}, _data, key) : _data[key] = value
    Song.emit(CHANGE)
  },

  replay: function() {
    Song.emit(REPLAY)
  },

  refresh: function() {
    _data = defaultData
    Song.emit(REFRESH)
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
    case Actions.REPLAY:
      Song.replay()
      break
    case Actions.REFRESH:
      Song.refresh()
      break
    default:
      return true
  }
})
