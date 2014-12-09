getNoteUrl   = require('../util/getNoteUrl')
audioContext = require('./audioContext')
eventsModule = require('smokesignals')
testAudio    = document.createElement('audio')

module.exports = class Sound

  volume: 1

  constructor: (note) ->
    eventsModule.convert(@)
    @context = audioContext
    @load(getNoteUrl(note))

  initialize: =>
    @volume = 0
    @play()
    @volume = 1

  play: =>
    if @buffer
      source = @context.createBufferSource()
      gainNode = @context.createGain()
      source.buffer = @buffer
      gainNode.gain.value = @volume
      source.connect(gainNode)
      gainNode.connect(@context.destination)
      source.start(0)

    else unless @queued
      @queued = true
      @once('ready', @play)

  load: (url) ->
    request = new XMLHttpRequest()
    request.open('get', url, true)
    request.responseType = 'arraybuffer'
    request.onload = @decodeAudio
    request.send()

  decodeAudio: (e) =>
    @context.decodeAudioData(e.currentTarget.response, @saveBuffer)

  saveBuffer: (incomingBuffer) =>
    @buffer = incomingBuffer
    @emit('ready')
