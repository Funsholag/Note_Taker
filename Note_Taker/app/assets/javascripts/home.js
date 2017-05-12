// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
document.addEventListener('DOMContentLoaded', function() {
  console.log('psh');

  var vid = document.getElementById('343465699.mp4')
  var pauseButton = document.querySelector("#pauseVid")
  var playButton = document.querySelector("#playVid")
  // var hidden = false;
  vid.addEventListener('click', function(e) {
    e.preventDefault()
    console.log('checked');
  })

  pauseButton.addEventListener("click", function(){
    vid.classList.toggle("stopfade");
    vid.pause();
  })

  playButton.addEventListener("click", function(){
    vid.classList.toggle("stopfade");
    vid.play();
    })
  })
