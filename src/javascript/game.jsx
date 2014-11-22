/**
 * @jsx React.DOM
 */
window.AudioContext = window.AudioContext || window.webkitAudioContext

var React   = window.React = require('react')
var Song    = require('./components/song')
var Bell    = require('./lib/Bell')
var $       = require('jquery')
var Phoenix = require('./vendor/phoenix')

var Game = function(container) {
  this.container = container
  this.cacheDom()
  this.data = this.$lobby.data()
  this.note = this.$noteSelection.val()
  this.bell = new Bell( new AudioContext() )
  this.userToken = Math.random().toString(36).substr(2)
  this.connect()
}

Game.prototype = {
  connect: function() {
    var socket = new Phoenix.Socket("ws://" + location.host + "/ws");
    socket.join("room", this.data.id.toString(), {}, this.setup.bind(this))
  },

  cacheDom: function() {
    this.$lobby = $("#game-lobby")
    this.$noteSelection = $('#noteSelection')
    this.$readyButton = $("#ready-button")
    this.$startButton = $("#start-game")
    this.$game = $("#game")
    this.$usersPresent = $("#users-present")
    this.$usersReady = $("#users-ready")
  },

  start: function(e) {
    e.preventDefault()
    this.chan.send("game:start", {})
  },

  ring: function() {
    this.bell.ring(this.note)
  },

  setup: function(chan) {
    this.chan = chan

    this.$readyButton.click(this.announceReady.bind(this))
    this.$startButton.click(this.start.bind(this))
    this.$game.on('touchstart mousedown', this.ring.bind(this))
    this.chan.send("user:joined", {user_token: this.userToken});
    this.chan.on("room:update", this.renderRoomInfo.bind(this));
    this.chan.on("game:started", this.renderGame.bind(this))
  },

  announceReady: function(e) {
    e.preventDefault()
    this.$readyButton.hide()
    this.chan.send("user:ready", {})
  },

  renderGame: function(message) {
    playerNumber = message.user_info.indexOf(this.userToken)
    this.$lobby.hide()
    this.$game.show()
    React.renderComponent(<Song bpm={this.data.song.bpm} notes={this.data.song.notes.reverse()} playerNote={this.data.song.roles[playerNumber]} bell={ this.bell } />, this.container)
  },

  renderRoomInfo: function(message) {
    // any time a user joins or leaves you get this message
    present  = message.users_present
    ready    = message.users_ready
    userInfo = message.user_info

    if (present == ready && userInfo[0] == this.userToken) {
      this.$startButton.show()
    }

    // TODO: This should be a react view probably
    this.note = this.data.song.roles[userInfo.indexOf(this.userToken)].toLowerCase()
    this.$noteSelection.val(this.note);
    this.$usersPresent.html(present)
    this.$usersReady.html(ready)
  }
}

module.exports = Game
