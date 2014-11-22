/**
 * @jsx React.DOM
 */
var React = window.React = require('react')
var Song = require('./components/song')


var socket = new Phoenix.Socket("ws://" + location.host + "/ws");
var audioContext = new AudioContext()

var userToken = Math.random().toString(36).substr(2)

var bell = new Bell(audioContext)

var song   = $("#room-info").data("song")
var player = new Player(song)

socket.join("room", $("#room-info").data("id").toString(), {}, function(chan){
  chan.send("user:joined", {user_token: userToken})

  chan.on("room:update", function(message){
    present  = message.users_present
    ready    = message.users_ready
    userInfo = message.user_info

    if (present == ready && userInfo[0] == userToken) {
      $("#start-game").show()
    }

    $("#users-present").html(present)
    $("#users-ready").html(ready)
  });

  $("#ready-button").click(function(e) {
    e.preventDefault()
    $("#ready-button").hide()
    chan.send("user:ready", {})
  })

  $("#start-game").click(function(e) {
    e.preventDefault()
    chan.send("game:start", {})
  })

  chan.on("note:play", function(message) {
    // something
  })

  $('body').on('touchstart mousedown', function(){
    var $noteSelection = $('#noteSelection')
    var note = $noteSelection.val()
    bell.ring(note)
  })

  chan.on("game:started", function(message) {
    userInfo = message.user_info
    playerNumber = userInfo.indexOf(userToken) + 1

    $("#game-page").html("Game started, you're player " + playerNumber)

    if (container = document.getElementById('game-page')) {
      React.renderComponent(<Song bpm={song.bpm} notes={song.notes.reverse()} />, container)
    }
  })
})
