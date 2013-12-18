$(document).ready(function(){

  App.router = new App.Router();
  $('.bxslider').bxSlider();

  if (window.location.hash && window.location.hash == '#_=_') {
      window.location.hash = '';
  }

});

