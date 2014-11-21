var socket = new Phoenix.Socket("ws://" + location.host + "/ws");
var audioContext = new AudioContext()
var bell = new Bell(audioContext)

socket.join("room", $("#room-info").data("id").toString(), {}, function(chan) {
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

  $('body').on('touchstart mousedown', function(){
    var $noteSelection = $('#noteSelection')
    var note = $noteSelection.val()
    bell.ring(note)
  })

})
