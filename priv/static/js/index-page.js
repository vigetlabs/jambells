$("#enter-room").submit(function(e) {
  e.preventDefault()
  window.location = "/" + $("#room-code").val()
})
