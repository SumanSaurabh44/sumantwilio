//$( document ).ready(function() {
//    $("#lll").fadeToggle();
//});
//$("#bodycontent").scroll(function() {
//	if ($("#bodycontent").width() <= 549) {
//
//	    if($("#bodycontent").scrollTop() > 549) {
//	        // the animation that's executed\
//	        $(".animate").addClass("move");    	    
//	        firstAnimation();
//	    }
//	} else if ($("#bodycontent").width() > 549 && $("#bodycontent").width() <= 991) {
//	    if($("#bodycontent").scrollTop() > 549){
//	        // the animation that's executed
//	        $(".animate").addClass("move");    	    
//	        firstAnimation();
//	    }
//	} else {
//	    if ($("#bodycontent").scrollTop() > 549) {
//	        // the animation that should be executed
//	        $(".animate").addClass("move");    	    
//	        firstAnimation();
//	    }
//	}
//});
//var count = 0;
//var firstAnimation = function () {
//
//	$('.proimg').each(
//	        function () {
//	            $(this).delay(500).animate({
//	                height: '400',
//	                width: '300',
//	                left: 0
//	            }, 2000);
//	        }
//	    );
//	
//	$('.aboutmecontent').each(
//	        function () {
//	            if(count==0){
//	            	count++;
//	            	$(this).delay(2500).animate({
//	                opacity: 1,
//	                height: '700',
//	                width: '500',
//	                padding: '18',
//	                color: "#3F51B5",
//	                right: 0
//	            }, 2000,function() {
//	                $("#lll").fadeToggle();
//	            });
//	            }
//	        }
//	    );
//};