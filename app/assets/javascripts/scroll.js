$(function(){
  addMovieListener();
  addCastListener();
  addInfoListener();
})

function addMovieListener(){
  $("#new_search").submit(function() {
    scrollBottom();
});
}

function addCastListener(){
  $('#movie-section').click(function(){
    scrollBottom();
  });
}

function addInfoListener(){
  $('#cast-section').click(function(){
    setTimeout('scrollBottom()', 3600);
  })
}

function scrollBottom(){
  $('html, body').animate({scrollTop:$(document).height()}, 'slow');
}



