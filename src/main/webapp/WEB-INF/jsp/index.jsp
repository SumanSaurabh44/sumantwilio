<script>
/* var http = require("http");
setInterval(function() {
	alert();
    http.get("https://shubhamjavaworld.herokuapp.com/");
}, 300); */
</script><%@ include file="/WEB-INF/jsp/headerandfooter.jsp"%> 
<br><br>
<div id="signature"> Developer: <a href="https://www.linkedin.com/in/shubhamyeole" target="_blank">Shubham Yeole</a><br> Title: <a href="https://www.linkedin.com/in/shubhamyeole" target="_blank">Full Stack Developer</a><br> Phone: +1(201) 887-5323 </div>


<%@ include file="/WEB-INF/jsp/twilio.jsp"%>
<%@ include file="/WEB-INF/jsp/footer.jsp"%>
<style>
#signature{
width: 75%;
position: fixed;
left: 90%;
top: 80%;
margin-left: -37.5%;
font-size: 1em;
font-weight: bold;
color: #9d97b1;
}
#signature a{color: #9d97b1;
}
#signature a:hover{color: #3b2f63;}
</style>