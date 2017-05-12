// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
document.addEventListener('DOMContentLoaded', function() {
  console.log('psh');

  var vid = document.getElementById('homeVid')
  var pauseButton = document.querySelector("#polina button")
  
  vid.addEventListener('click', function(e) {
    e.preventDefault()
    console.log('checked');
  })

  pauseButton.addEventListener("click", function(){
    vid.classList.toggle("stopfade");
    if (vid.paused){
      vid.play();
      // pauseButton.innerHTML = "Pause"
    }
    else{
      vid.pause();
      // pauseButton.innerHTML = "Play";
    }
  })
});
