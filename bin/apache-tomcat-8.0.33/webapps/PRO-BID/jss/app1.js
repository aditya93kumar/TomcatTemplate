var main = function() {
  $('.article').click(function() {
    $('.article').removeClass('current');
    $('.description').hide();

    $(this).addClass('current');
    $(this).children('.description').show();
  });
$('.nav li').hover(
	      function () { //appearing on hover
	        $('ul', this).fadeIn();
	      },
	      function () { //disappearing on hover
	        $('ul', this).fadeOut();
	      }
	    );


  $(document).keypress(function(event) {
    if(event.which === 111) {
      $('.description').hide();

      $('.current').children('.description').show();
    }

    else if(event.which === 110) {
      var currentArticle = $('.current');
      var nextArticle = currentArticle.next();
      
      currentArticle.removeClass('current');
      nextArticle.addClass('current');
    }
  });
}



$(document).ready(function() {
	
	$(".overlayLink").click(function(event){
		event.preventDefault();
		var action = $(this).attr('data-action');
		
		$.get( "ajax/" + action, function( data ) {
			$( ".login-content" ).html( data );
		});	
		
		$(".overlay").fadeToggle("fast");
	});
	
	$(".close").click(function(){
		$(".overlay").fadeToggle("fast");
	});
	
	$(document).keyup(function(e) {
		if(e.keyCode == 27 && $(".overlay").css("display") != "none" ) { 
			event.preventDefault();
			$(".overlay").fadeToggle("fast");
		}
	});
});

$(document).ready(main);