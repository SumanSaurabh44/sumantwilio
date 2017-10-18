<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>

<head>
<link href="<c:url value="/resources/CSS/twilio.css" />" rel="stylesheet">
<script src="<c:url value="/resources/JS/twilio.js" />"></script>
<title>Twilio App.</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" >
<link href="<c:url value="/resources/CSS/styles.css" />" rel="stylesheet">
<style>
 #map {
        height: 30%;
      }
#home{
background: rgba(0, 0, 0, 0) url('<%=request.getContextPath() %>/resources/images/twilio.jpg');
  background-size: 100% auto;
  height: 590px;
  width:100%;
  overflow: hidden;
  transform-style: preserve-3d;
   background-repeat: no-repeat;
}
</style>
<style>
#animation{
 	width:	250px;
    height: 120px;
    margin:	204px 335px;
    color: #9d97b1;
}
 #animationText{
   margin-top: 2cm;
 }
</style>
<script type="text/javascript">
$( document ).ready(function() {
        textAnimation();
        $(".maploc").click();
	  	DoRotate(30);
	    AnimateRotate(360);
});

function textAnimation(){
	 var div = $("#animation");
     div.animate({fontSize: '3em'}, 1000);
     div.animate({fontSize: '2em'}, 1000);
     div.animate({fontSize: '4em'}, 1000);
}
function DoRotate(d) {
    $("#animation").css({
        transform: 'rotate(' + d + 'deg)'
    });
}

function AnimateRotate(d){
    var elem = $("#animation");

    $({deg: 0}).animate({deg: d}, {
        duration: 2000,
        step: function(now){
            elem.css({
                 transform: "rotate(" + now + "deg)"
            });
        }
    });
}
</script>

</head>
<body>
<div id="doc" class="yui-t7">
  <div id="bd">
    <div class="yui-b">
      <div id="secondary"> <% if(request.getParameter("sentStatus")!=null) {%><p style="color: #0c9c7c;"><%= request.getParameter("sentStatus") %></p><%} %>
 	   <div id="home"><div id="animation"><p id="animationText">JAVA 8<br><span style="font-size: 0.3em;">Developer: Shubham Yeole</span></p></div><%-- <img width="100%" height="450px" src="<%=request.getContextPath() %>/resources/images/twilio.jpg"/> --%></div>
		<div id="part1"><%@ include file="/WEB-INF/jsp/twiliopart1.jsp"%></div>
		<div id="part2"><%@ include file="/WEB-INF/jsp/twiliopart2.jsp"%></div></div>
  </div>
</div>
</body>
</html>
