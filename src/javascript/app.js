var $       = require('jquery')
var Game    = require('./game')
var Preview = require('./preview')

var songSelect = function() {
  var $container = $('.song-list');
  var $songs = $container.find('li');
  var $form = $('form[action="/rooms"]');
  var $select = $form.find('select[name="room[song]"]');

  var pickSong = function() {
    var $song = $(this);
    $song.addClass('-selected');
    var songName = $song.data('select');
    $select.val(songName);
    $form.submit();
  }

  var addEvents = function() {
    $songs.on('click', pickSong);
  }

  return {
    init: function() {
      addEvents();
    }
  }
}();

songSelect.init();


// js for previewing songs in full
var previewNode = document.querySelector('#room-info')

if (previewNode) new Preview(previewNode)

// Game page
var container = document.getElementById('game')

if (container) {
  window.game = new Game(container)
}
