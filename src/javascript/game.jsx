/**
 * @jsx React.DOM
 */
window.AudioContext = window.AudioContext || window.webkitAudioContext

var React          = window.React = require('react')
var Song           = require('./components/song')
var Bell           = require('./lib/Bell')
var $              = require('jquery')
var Phoenix        = require('./vendor/phoenix')
var ComputerPlayer = require('./util/computer_player')
var SongActions    = require('./actions/song')

var ringDebounceDelay = false

var Game = function(container) {
  this.container = container
  this.cacheDom()
  this.data         = this.$lobby.data()
  this.note         = this.$noteSelection.val()
  this.bell         = new Bell( new AudioContext() )
  this.computerBell = new ComputerPlayer(this.bell)
  this.userToken    = Math.random().toString(36).substr(2)
  this.gameLeader   = false
  this.attachSong()
  this.connect()
}

Game.prototype = {
  attachSong: function() {
    React.renderComponent(<Song bpm={this.data.song.bpm} notes={this.data.song.notes.reverse()} playerNotes={this.data.song.roles} bell={ this.bell } />, this.container)
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

  ring: function() {
    if (!ringDebounceDelay) {
      ringDebounceDelay = true
      setTimeout(function(){
        ringDebounceDelay = false
      }, 100)

      this.bell.ring(this.note)
    }

    return false
  },

  setup: function(chan) {
    this.chan = chan

    this.$readyButton.click(this.announceReady.bind(this))
    this.$startButton.click(this.start.bind(this))
    this.$game.on('touchstart mousedown', this.ring.bind(this))
    this.chan.send('user:joined', {user_token: this.userToken})
    this.chan.on('room:update', this.renderRoomInfo.bind(this))
    this.chan.on('game:started', this.renderGame.bind(this))
  },

  announceReady: function(e) {
    e.preventDefault()
    this.$readyButton.hide()
    this.$startButton.show()
    this.chan.send('user:ready', {})
  },

  renderGame: function(message) {
    this.$lobby.hide()
    this.$game.show()

    SongActions.play(message.user_info.indexOf(this.userToken))

    if (this.gameLeader && this.ready < this.data.song.roles.length) {
      var unassignedNotes = this.data.song.roles.slice(this.ready)
      this.computerBell.play(this.data.song, unassignedNotes)
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
    this.note = this.data.song.roles[userInfo.indexOf(this.userToken)].toLowerCase()
    this.$noteSelection.val(this.note)
    this.$usersPresent.html(present)
    this.$usersReady.html(this.ready)
  }
}

module.exports = Game
