var Actions    = require('../constants/actions');
var Dispatcher = require('../dispatcher');

module.exports = {

  play: function(param) {
    Dispatcher.dispatch({
      type  : Actions.PLAY_SONG,
      param : param
    });
  },

  createRoom: function() {
    Dispatcher.dispatch({ type : Actions.CREATE_ROOM });
  },

  joinRoom: function() {
    Dispatcher.dispatch({ type : Actions.JOIN_ROOM });
  }

};
