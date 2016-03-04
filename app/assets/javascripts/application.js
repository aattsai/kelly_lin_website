// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require semantic-ui
//= require_tree .

// $(document).ready(function(){
//   $('#dancing_dream').click(function(){
//     $('#dancing_dream_video').modal('show');
//   });


// });

// $(document).ready(function() {
//   $(".video").fancybox({
//     maxWidth  : 800,
//     maxHeight : 600,
//     fitToView : false,
//     width   : '100%',
//     height    : '100%',
//     autoSize  : true,
//     closeClick  : false,
//     openEffect  : 'fade',
//     closeEffect : 'fade'
//   });
// });

$(document).ready(function() {
    $('.video').fancybox({
        openEffect  : 'none',
        closeEffect : 'none',
        overlayColor: "#000",  // here you set the background black
        overlayOpacity: 1,  // here you set the transparency of background: 1 = opaque
        helpers : {
            media : {}
        }
    });
});