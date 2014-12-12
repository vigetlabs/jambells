// desktop firefox has ontouchend in document
var firefox    = navigator.userAgent.indexOf("Firefox") != -1
var isTouch    = ('ontouchend' in document) && (!firefox)

module.exports = isTouch
