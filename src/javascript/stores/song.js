var Events     = require('events')
var Dispatcher = require('../dispatcher')
var Actions    = require('../constants/actions')
var assign     = require('object-assign')

var _data      = {
  new_room    : false,
  player_note : null,
  playing     : false
}

var Song = assign({}, Events.EventEmitter.prototype, {

  onChange: function(callback) {
    this.on('change', callback)
    this.on('replay', callback)
  },

  offChange: function(callback) {
    this.removeListener('change', callback)
    this.removeListener('replay', callback)
  },

  get: function(key) {
    return typeof key === 'string' ? _data[key] : _data
  },

  set: function(key, value) {
    _data = typeof key === 'object' ? assign({}, _data, key) : _data[key] = value
    Song.emit('change')
  },

  createRoom: function() {
    Song.emit('replay')
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

    case Actions.CREATE_ROOM:
      Song.createRoom()
      break

    case Actions.JOIN_ROOM:
      Song.set({
        'new_room' : action.param
      })
      break

    default:
      return true
  }
})
