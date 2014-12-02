var Actions    = require('../constants/actions');
var Dispatcher = require('../dispatcher');

module.exports = {

  play: function() {
    Dispatcher.dispatch({ type : Actions.PLAY_SONG });
  },

  pause: function() {
    Dispatcher.dispatch({ type : Actions.PAUSE_SONG });
  },

  setPlayerNote: function(param) {
    Dispatcher.dispatch({
      type  : Actions.SET_PLAYER_NOTE,
      param : param
    });
  }

};
