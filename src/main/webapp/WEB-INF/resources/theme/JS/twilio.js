$(document).ready(function () {
	var $block = $( "#home" );
	var $block1 = $( "#part1" );
	var $block2 = $( "#part2" );

	 $('#drscharff').click();
	 $('#part1').hide();
     $('#part2').hide();

     $('#homeid').click(function () {
         $('#part1').hide();
         $('#part2').hide();
         $('#home').hide();
         $('#intro').show();
         $("#bodycontent").animate({scrollTop:0}, 2000);

         $block.slideDown(1180);
         textAnimation();

     });
     $('#part1id').click(function () {
         $('#part1').hide();
         $('#part2').hide();
         $('#home').hide();
         $('#intro').hide();
         $("#bodycontent").animate({scrollTop:0}, 2000);

         $block.slideDown(180);
         $block.show().slideToggle( 1000 );
         $block1.slideDown(1180);
         textAnimation();

     });
     $('#part2id').click(function () {
         $('#part2').hide();
         $('#part1').hide();
         $('#home').hide();
         $('#intro').hide();
         $("#bodycontent").animate({scrollTop:0}, 2000);


         $block.slideDown(180);
         $block.show().slideToggle( 1000 );
         $block2.slideDown(1180);

     });
     $('#aboutmed').click(function () {
         $("#bodycontent").animate({scrollTop:800}, 2000);
     });
     $('#todolistme').click(function () {
         $("#bodycontent").animate({scrollTop:1900}, 1500);
     });
     $('#blogme').click(function () {
         $("#bodycontent").animate({scrollTop:3200}, 1000);
     });
     $('#followupme').click(function () {
         $("#bodycontent").animate({scrollTop:3900}, 500);
     });
});
