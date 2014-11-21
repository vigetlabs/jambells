var socket = new Phoenix.Socket("ws://" + location.host + "/ws");

socket.join("room", $("#room-info").data("id").toString(), {}, function(chan){
  chan.on("room:update", function(message){
    $("#users-present").html(message.users_present)
    $("#users-ready").html(message.users_ready)
  });

  $("#ready-button").click(function(e) {
    e.preventDefault()
    $("#ready-button").hide()
    chan.send("user:ready", {})
  })

  chan.send("ping", {})
});
