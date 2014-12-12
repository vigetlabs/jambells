/**
 * @jsx React.DOM
 */

var React          = window.React = require('react')
var Song           = require('./components/song')
var HandBell       = require('./lib/Handbell')
var $              = require('jquery')
var Phoenix        = require('./vendor/phoenix')
var SongActions    = require('./actions/song')
var SongStore      = require('./stores/song')
var ComputerPlayer = require('./lib/computer_player')
var isTouch        = ('ontouchend' in document)
var respondToEvent = isTouch ? 'touchstart' : 'click'

var Game = function(container) {
  this.container = container
  this.cacheDom()
  this.data = this.$lobby.data()
  this.userToken = Math.random().toString(36).substr(2)
  this.gameLeader = false
  this.gameStarted = false
  this.attachSong()
  this.connect()
  this.listenForReplay()
}

Game.prototype = {

  listenForReplay: function() {
    SongStore.on('replay', this.emitRestart.bind(this))
  },

  emitRestart: function () {
    this.chan.send('game:restart', {})
  },

  attachSong: function() {
    React.renderComponent(<Song bpm={this.data.song.bpm} measure={this.data.song.measure} notes={this.data.song.notes} playerNotes={this.data.song.roles} bell={ this.bell } />, this.container)
  },

  connect: function() {
    var socket = new Phoenix.Socket('ws://' + location.host + '/ws')
    socket.join('room', this.data.id.toString(), {}, this.setup.bind(this))
  },

  cacheDom: function() {
    this.$lobby         = $('#game-lobby')
    this.$readyButton   = $('#ready-button')
    this.$startButton   = $('#start-game')
    this.$game          = $('#game')
    this.$usersPresent  = $('#users-present')
    this.$usersReady    = $('#users-ready')
    this.$bellsList     = $('#bells-list')
    this.$bell          = $('<span class="bell">CPU</span>')
  },

  start: function(e) {
    if (this.$startButton.not(':disabled')) {
      e.preventDefault()
      this.chan.send('game:start', {})
    }
  },

  pong: function(message) {
    this.chan.send('game:pong', {})
  },

  setup: function(chan) {
    this.chan = chan
    this.$readyButton.click(this.announceReady.bind(this))
    this.$startButton.click(this.start.bind(this))
    this.chan.send("user:joined", {user_token: this.userToken})
    this.chan.on("room:update", this.renderRoomInfo.bind(this))
    this.chan.on('game:ping', this.pong.bind(this))
    this.chan.on("game:started", this.renderGame.bind(this))
    this.chan.on("game:restarted", this.refreshLobby.bind(this))

    for (var i=0; i < this.data.song.roles.length; i++) {
      this.$bellsList.append(this.$bell.clone());
    }
    this.testManyPlayers(this.data.song.roles.length);
  },

  refreshLobby: function(message) {
    this.gameStarted = false
    this.$readyButton.show()
    this.$startButton.hide()
    this.$lobby.show()
    this.$game.hide()
    this.renderRoomInfo(message)
    SongActions.refresh()
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
    if (this.gameStarted === false) {
      this.gameStarted = true

      this.$lobby.hide()
      this.$game.show()

      var playerIndex = message.user_tokens.indexOf(this.userToken)

      SongActions.play(playerIndex)

      if (this.gameLeader && this.ready < this.data.song.roles.length) {
        var unassignedNotes = this.data.song.roles.slice(this.ready)
        ComputerPlayer.play(this.data.song.notes, unassignedNotes)
      }
    }
  },

  renderRoomInfo: function(message) {
    // any time a user joins or leaves you get this message
    var present     = message.users_present
    var userTokens  = message.user_tokens
    this.ready      = message.users_ready
    this.gameLeader = userTokens[0] == this.userToken

    if (this.gameLeader) {
      this.$startButton.text('Start the Song!')
    } else {
      this.$startButton.text('Please Wait')
    }

    if (present == this.ready && this.gameLeader) {
      this.$startButton.removeAttr('disabled')
    }

    var noteAssignment = this.data.song.roles[userTokens.indexOf(this.userToken) % this.data.song.roles.length]

    if (this.note != noteAssignment) {
      this.note = noteAssignment

      if (this.handBell) {
        this.handBell.setNote(this.note)
      } else {
        this.handBell = new HandBell(this.note)
        this.$game.on(respondToEvent, this.handBell.ding.bind(this.handBell))
      }
    }

    this.$usersPresent.html(present)
    this.$usersReady.html(this.ready)

    this.$bells = this.$bellsList.find('.bell');
    if(this.$bells.length < present) {
      var numMissing = present - this.$bells.length;
      for(var j=0; j < numMissing; j++) {
        this.$bellsList.append(this.$bell.clone());
      }
    } else if((this.$bells.length > present) && (present >= this.data.song.roles.length)) {
      var numTooMany = this.$bells.length - present;
       for(var j=0; j < numTooMany; j++) {
        this.$bells.last().remove();
      }
    }
    this.$bells = this.$bellsList.find('.bell');

    // Reset in case of game restart
    this.$bells.removeClass('-joined -ready');

    var $joinedBells = this.$bellsList.find('.bell:lt(' + present + ')');
    $joinedBells.addClass('-joined');
    this.testManyPlayers(present);

    var $readyBells = this.$bellsList.find('.bell:lt(' + this.ready + ')');
    $readyBells.addClass('-ready');
  },

  testManyPlayers: function(num) {
    if(num > 7) {
      this.$bellsList.addClass('-many');
    }
  }
}

module.exports = Game
