/**
 * @jsx React.DOM
 */
var React   = window.React = require('react')
var Song    = require('./components/song')
var Bell    = require('./lib/Bell')
var $       = require('jquery')
var Phoenix = require('./vendor/phoenix')

var socket       = new Phoenix.Socket("ws://" + location.host + "/ws");
var audioContext = new AudioContext()
var userToken    = Math.random().toString(36).substr(2)
var bell         = new Bell(audioContext)
var data         = $("#room-info").data()

module.exports = function(container) {
  socket.join("room", data.id.toString(), {}, function(chan){
    chan.send("user:joined", {user_token: userToken})

    // any time a user joins or leaves you get this message
    chan.on("room:update", function(message){
      present  = message.users_present
      ready    = message.users_ready
      userInfo = message.user_info

      $('#noteSelection').val(data.song.roles[userInfo.indexOf(userToken)].toLowerCase());

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

    $('body').on('touchstart mousedown', function(){
      var $noteSelection = $('#noteSelection')
      var note = $noteSelection.val()
      bell.ring(note)
    })

    chan.on("game:started", function(message) {
      userInfo = message.user_info
      playerNumber = userInfo.indexOf(userToken)

      $("#game-page").html("Game started, you're player " + (playerNumber + 1))

      React.renderComponent(<Song bpm={data.song.bpm} notes={data.song.notes.reverse()} playerNote={data.song.roles[playerNumber]} />, container)
    })
  })
}
