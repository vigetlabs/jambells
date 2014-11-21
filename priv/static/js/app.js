var socket = new Phoenix.Socket("ws://" + location.host + "/ws");
var audioContext = new AudioContext()
var userToken = Math.random().toString(36).substr(2)

var bell = new Bell(audioContext)

socket.join("room", $("#room-info").data("id").toString(), {}, function(chan){
  chan.send("user:joined", {user_token: userToken})

  chan.on("room:update", function(message){
    present = message.users_present
    ready   = message.users_ready

    $("#users-present").html(present)
    $("#users-ready").html(ready)
  });

  $("#ready-button").click(function(e) {
    e.preventDefault()
    $("#ready-button").hide()
    chan.send("user:ready", {})
  })

  chan.on("note:play", function(message) {
    // I don't think this is necessary, since
    // we don't want it to ring when the server
    // responds, but rather immediately when
    // the user touchstarts or mousedowns

    // bell.ring(message.note)
  })

  $('body').on('touchstart mousedown', function(){
    var $noteSelection = $('#noteSelection')
    var note = parseInt($noteSelection.val())
    chan.send("note:send", {note: note})
    bell.ring(note)
  })

})
