var bell = new Bell(new AudioContext());

function Player(data) {
  this.name = data.name;
  this.measure = data.measure;
  this.bpm = data.bpm;
  this.notes = data.notes;
}

Player.prototype = {
  play: function() {
    this.playAtIndex(0);
  },

  playAtIndex: function(index) {
    index++;

    if (this.notes[index] !== "") {
      console.log("ringing bell: ", this.notes[index]);
      bell.ring(this.notes[index].toLowerCase());
    }

    if (this.notes[index + 1] !== undefined) {
      setTimeout(function() { this.playAtIndex(index) }.bind(this), 60000/this.bpm);
    }
  }
}
