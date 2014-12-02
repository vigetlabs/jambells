var Actions    = require('../constants/actions');
var Dispatcher = require('../dispatcher');

module.exports = {

  play: function(param) {
    Dispatcher.dispatch({
      type  : Actions.PLAY_SONG,
      param : param
    });
  }

};
