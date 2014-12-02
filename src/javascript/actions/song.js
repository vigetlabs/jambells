var Actions    = require('../constants/actions');
var Dispatcher = require('../dispatcher');

module.exports = {

  play: function(params) {
    Dispatcher.dispatch({ type : Actions.PLAY_SONG});
  },

  pause: function(params) {
    Dispatcher.dispatch({ type : Actions.PAUSE_SONG});
  }

};
