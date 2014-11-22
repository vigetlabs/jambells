var bellMotionDetector = function(bell, note) {
  var zThreshold = -1
  var alphaThreshold = -50
  var deltaZThreshold = 3
  var deltaAlphaThreshold = 150
  var debounceThreshold = 250

  var lastZAcceleration = null
  var lastAlphaAcceleration = null
  var lastRungAt = null

  return function(accelerometer) {
    var zAcceleration = accelerometer.acceleration.z
    var alphaAcceleration = accelerometer.rotationRate.alpha
    if (lastZAcceleration === null) lastZAcceleration = zAcceleration
    if (lastAlphaAcceleration === null) lastAlphaAcceleration = alphaAcceleration
    var deltaZ = lastZAcceleration - zAcceleration
    var deltaAlpha = lastAlphaAcceleration - alphaAcceleration

    if (zAcceleration < zThreshold && alphaAcceleration < alphaThreshold && deltaZ > deltaZThreshold && deltaZ > deltaZThreshold) {
      var date = new Date()
      var currentTime = date.getTime()

      if (lastRungAt === null || lastRungAt + debounceThreshold < currentTime) {
        bell.ring(note)
        lastRungAt = currentTime
      }
    }
  }
}

module.exports = bellMotionDetector
