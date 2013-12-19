$(document).ready(function() {
  $('#settingsBtn').click(function(e){
      //get collapse content selector
      e.preventDefault();
      var toggle_switch = $(this);


      var collapse_content_selector = $('#edit-dash');

      //make the collapse content to be shown or hide

      collapse_content_selector.toggle(function(){
        if($(this).css('display')=='none'){
                                //change the button label to be 'Show'
                                toggle_switch.html('EDIT');
                              }else{
                                //change the button label to be 'Hide'
                                toggle_switch.html('HIDE');
                              }
                            });
    });

});