Sound        = require('./Sound')
eventsModule = require('smokesignals')
isAndroid = navigator.userAgent.toLowerCase().indexOf("android") > -1

module.exports = class Handbell

  threshold: 400 # event.rotationRate.alpha threshold

  constructor: (audioUrl, audioContext) ->
    eventsModule.convert(@)
    @sound = new Sound(audioUrl, audioContext)

  initialize: () =>
    # Bell must be initialized by user input (touch) to play sounds on iOS
    @sound.initialize()

    window.addEventListener "devicemotion", @ring, false

    if @sound.buffer
      @ready()
    else
      @sound.on('ready', @ready)

  ready: =>
    @emit('ready')

  ring: (e) =>
    motion = e.rotationRate.alpha

    if motion
      # Normalize android values
      if isAndroid
        motion *= 60 if isAndroid
    else
      # Fallback to acceleration if mot
      motion = e.acceleration.z * 50

    if @forwardRing(motion)
      @ding()
    else if @backwardsRing(motion)
      @dong()

    @updatePositionValues(motion)

  ding: =>
    @isForwardPosition = true
    @sound.play()
    @emit('ding')

  dong: =>
    @isBackPosition = true
    @sound.play()
    @emit('dong')

  forwardRing: (motion) ->
    motion < -@threshold and not @isForwardPosition

  backwardsRing: (motion) ->
    motion > @threshold * 1.75 and not @isBackPosition

  updatePositionValues: (motion) ->
    @isBackPosition = if @backPosition then motion >= @threshold * 0.9
    @isForwardPosition = if @isForwardPosition then motion <= -@threshold * 0.9
