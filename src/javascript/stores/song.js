var Events     = require('events');
var Dispatcher = require('../dispatcher');
var Actions    = require('../constants/actions');

var merge      = require('react/lib/merge');
var CHANGE     = 'change';

var _data      = {
  playing : false
}

var Song = merge(Events.EventEmitter.prototype, {

  onChange: function(callback) {
    this.on(CHANGE, callback);
  },

  offChange: function(callback) {
    this.removeListener(CHANGE, callback);
  },

  get: function(key) {
    return typeof key === 'string' ? _data[key] : _data;
  },

  set: function(prop, value) {
    _data = typeof prop === 'object' ? _data.merge(prop) : _data.set(prop, value);
    Song.emit(CHANGE);
  },

  pause: function() {
    Song.set('playing', false)
  },

  play: function() {
    Song.set('playing', false)
  }

});

module.exports = Song;

Dispatcher.register(function(action) {
  switch (action.type) {
    case Actions.PLAY_GAME:
      Song.play();
      break;
    case Actions.PLAY_GAME:
      Song.pause();
      break;
    default:
      return true;
  }
});
