/**
 * @jsx React.DOM
 */

var React          = window.React = require('react')
var Song           = require('./components/song')
var HandBell       = require('./lib/HandBell')
var $              = require('jquery')
var Phoenix        = require('./vendor/phoenix')
var SongActions    = require('./actions/song')
var ComputerPlayer = require('./lib/computer_player')
var getNoteUrl     = require('./util/getNoteUrl')
var audioContext   = require('./lib/audioContext')

var Game = function(container) {
  this.container = container
  this.cacheDom()
  this.data = this.$lobby.data()
  this.computerPlayer = new ComputerPlayer()
  this.userToken = Math.random().toString(36).substr(2)
  this.gameLeader = false
  this.attachSong()
  this.connect()
}

Game.prototype = {
  attachSong: function() {
    React.renderComponent(<Song bpm={this.data.song.bpm} notes={this.data.song.notes} playerNotes={this.data.song.roles} bell={ this.bell } />, this.container)
  },

  connect: function() {
    var socket = new Phoenix.Socket('ws://' + location.host + '/ws')
    socket.join('room', this.data.id.toString(), {}, this.setup.bind(this))
  },

  cacheDom: function() {
    this.$lobby         = $('#game-lobby')
    this.$noteSelection = $('#noteSelection')
    this.$readyButton   = $('#ready-button')
    this.$startButton   = $('#start-game')
    this.$game          = $('#game')
    this.$usersPresent  = $('#users-present')
    this.$usersReady    = $('#users-ready')
  },

  start: function(e) {
    if (this.$startButton.not(':disabled')) {
      e.preventDefault()
      this.chan.send('game:start', {})
    }
  },

  setup: function(chan) {
    this.chan = chan
    this.$readyButton.click(this.announceReady.bind(this))
    this.$startButton.click(this.start.bind(this))
    this.chan.send("user:joined", {user_token: this.userToken})
    this.chan.on("room:update", this.renderRoomInfo.bind(this))
    this.chan.on("game:started", this.renderGame.bind(this))
  },

  announceReady: function(e) {
    e.preventDefault()
    // Initialize bell with touch
    this.handBell.initialize()
    this.handBell.sound.play()
    this.$readyButton.hide()
    this.$startButton.show()
    this.chan.send('user:ready', {})
  },

  renderGame: function(message) {
    var playerNumber = message.user_info.indexOf(this.userToken)
    // var unassignedNotes = this.data.song.roles.slice(this.ready)
    // this.computerPlayer.initialize(this.data.song, unassignedNotes)

    this.$lobby.hide()
    this.$game.show()

    SongActions.play(message.user_info.indexOf(this.userToken))

    if (this.gameLeader && this.ready < this.data.song.roles.length) {
      // this.computerPlayer.play()
    }
  },

  renderRoomInfo: function(message) {
    // any time a user joins or leaves you get this message
    var present     = message.users_present
    var userInfo    = message.user_info
    this.ready      = message.users_ready
    this.gameLeader = userInfo[0] == this.userToken

    if (this.gameLeader) {
      this.$startButton.text('Start the Song!')
    } else {
      this.$startButton.text('Please Wait')
    }

    if (present == this.ready && this.gameLeader) {
      this.$startButton.removeAttr('disabled')
    }

    // TODO: This should be a react view probably
    if(!this.handBell) {
        var note = this.data.song.roles[userInfo.indexOf(this.userToken)].toLowerCase()
        this.handBell = new HandBell(getNoteUrl(note), audioContext)
        this.$game.on('click', this.handBell.ding.bind(this.handBell))
        this.$noteSelection.val(note);
    }

    this.$usersPresent.html(present)
    this.$usersReady.html(this.ready)
  }
}

module.exports = Game
