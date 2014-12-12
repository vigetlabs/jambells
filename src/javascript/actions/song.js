var Actions    = require('../constants/actions');
var Dispatcher = require('../dispatcher');

module.exports = {

  play: function(param) {
    Dispatcher.dispatch({
      type  : Actions.PLAY_SONG,
      param : param
    });
  },

  replay: function(param) {
    Dispatcher.dispatch({ type : Actions.REPLAY });
  },

  refresh: function(param) {
    Dispatcher.dispatch({ type : Actions.REFRESH });
  }

};
