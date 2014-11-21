var socket = new Phoenix.Socket("ws://" + location.host + "/ws");
var audioContext = new AudioContext()

var bell = new Bell(audioContext)

socket.join("room", $("#room-info").data("id").toString(), {}, function(chan){
  chan.send("user:joined", {})

  chan.on("room:update", function(message){
    $("#users-present").html(message.users_present)
    $("#users-ready").html(message.users_ready)
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
