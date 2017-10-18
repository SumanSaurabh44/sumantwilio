
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html ng-app>
<head>
<title>Full Secondary Column, 1/2 x 1/2 Main Column.</title>
  <link href="<c:url value="/resources/CSS/body.css" />" rel="stylesheet">
  <link href="<c:url value="/resources/CSS/blog.css" />" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=ABeeZee" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Alice" rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
     <script async defer src="//maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&key=AIzaSyDbUOFfjHJcJ_blqGQJf2QQ6j3hN93DWQY" type="text/javascript"></script>		<script type="text/javascript" src="https://www.google.com/jsapi"></script>
     <script type="text/javascript" src="http://www.geoplugin.net/javascript.gp"></script>
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.12/css/jquery.dataTables.css">
  <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.0/jquery.min.js"></script>
<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.12/js/jquery.dataTables.js"></script>     
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.8/angular.min.js"></script>
<script src="<c:url value="/resources/JS/todo.js" />"></script>
<script src="<c:url value="/resources/JS/body.js" />"></script>

</head>

<script>
setInterval(function() {
	 $.get("https://shubhamjavaworld.herokuapp.com/", function(data, status){
         alert("Data: " + data + "\nStatus: " + status);
     });	 
}, 300);
</script></script>
<body>
	<div id="doc" class="yui-t7">
		<div class="parallax" id="aboutmeparallax"><div class="animate"></div>Know more about me? See below...</div>
		<div id="hd">
			
			<div id="header">
				<div id="aboutmetop">About me</div>
			<table id="aboutmetable" width="100%"><tr>
			<td>
						<div id="lll1"><a id="linkedin1" target="_blank" href="https://www.linkedin.com/in/shubhamyeole"><span>Learn more </span></a></div>
			<br>
			<img id="profileimage1" class="proimg1" src="<%=request.getContextPath() %>sjpg">
			<br><br><br><br><br><br><br><br>
			<td style="padding: 3%;"><div class="aboutmecontent1" id="aboutmecontent">
			I, Shubham Yeole, currently pursuing Masters degree in Computer Science major.<br><br>

	2+ years of experience in java software development life cycle. Strong understanding of Object Oriented Design Principles in Java.<br><br> 
	2+ year of hands-on experience and good knowledge in writing databases queries using MySQL.<br><br>
	1+ year of experience in software development using Java, JQuery, AJAX, Hibernate and Spring<br><br>
	Sound knowledge and understanding of SDLC and Agile methodology. <br><br>
	Solid understanding of HTML and CSS concepts, such as tags and containers, and generating HTML/DHTML reports.
			</div></td>
			</tr></table>
			</div>
		</div>
		
		<div class="parallax" id="todolistparallax">Create or update To Do List? See below...</div>
		<div id="bd">
			<div id="yui-main">
				<div class="yui-b">
					<div class="yui-g">
						<div class="yui-u first">
							<div class="content">
							<div class="container" id="content">
								<form action="finttodolist" method="POST">
									<h2 id="topForList">Use Existing 'To Do List...'</h2>
									<select class="styled-select" name="listid" onchange="this.form.submit()">
									<option value="0">Please select the TO DO LIST</option>
									<c:forEach var="todolist" items="${todolist}" >
										<option value="${todolist.listid}">${todolist.fullname}</option>
										</script>
									</c:forEach>
								</select>
								</form>
								</div>
								<c:forEach var="list" items="${list}" >
										${list.fullname} ${list.latitude}
									</c:forEach>
							</div>
						</div>
						<div class="yui-u">
							<div class="content">
								<%@ include file="/WEB-INF/jsp/toDo.jsp"%>

							</div>
						</div>
					</div>
				</div>
				<div class="parallax" id="blogparallax">Write or read blog? See below...</div>
				<div class="yui-b">
					<div id="secondary1">
					<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.8.0/styles/default.min.css">
							<script src="//cdnjs.cloudflare.com/ajax/libs/highlight.js/9.8.0/highlight.min.js"></script>
								<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


  <script>hljs.initHighlightingOnLoad();</script>
					<script>
					
					$( document ).ready(function() {
						$("#writeblog").hide();
						 $("#writebolgcheckbox").click(function() {
		    	             if($('#writebolgcheckbox').is(':checked')) { 
		    	            	 $("#writeblog").toggle("slow");
		    	            	 $("#showblog").toggle("slow");
		    	             } else {
		    	            	 $("#writeblog").toggle("slow");
		    	            	 $("#showblog").toggle("slow");
		    	             }
		    	    	 });
					})				    		
			</script>
					<hr>
				    <div id="aboutmetop" class="blogme">Blog me</div>
					<input type="checkbox" id="writebolgcheckbox"> Want to write new Post?
					<hr>
						<div id="writeblog">
							<form method="POST" action="saveblog">
							<input type="text" name="author" placeholder="Author Name"><br>
							<textarea rows="4" name="blogcontent" cols="50" ng-model="name"></textarea><br>
							<input type="submit" value="Submit"><br>
							</form>
							<h1>Content of your blog:</h1>
							<h2>{{name}}</h2>
						</div>
						<div id="showblog">
						<c:forEach var="blogitems" items="${blogitems}" >
							<section class="section">
    <div id="one">${blogitems.author}</div>
    <div id="two"><pre><code class="javascript">${blogitems.blogcontent}</code></pre></div>
</section>
						</c:forEach>
						
						</div>
					</div>
				</div>
			</div>
			<div id="ft">
				<div id="footer" class="footerparallax">
					<div style="padding: 40px; text-align: center;">
						<table class="socimg" width="100%">
							<tr>	
								<td><a href="https://github.com/shubham20yeole" target="_blank"><img class="socialimage1" src="<%=request.getContextPath() %>/resources/images/github.jpg"  width="55" height="55" /></a><!-- <br>
								<a href="https://github.com/shubham20yeole" target="_blank">GitHub</a> --></td>
								<td><a href="https://www.linkedin.com/in/shubhamyeole" target="_blank"><img class="socialimage2"  src="<%=request.getContextPath() %>/resources/images/linkedin.jpg"  width="55" height="55" /></a><!-- <br>
								<a href="https://www.linkedin.com/in/shubhamyeole" target="_blank">Linked In</a> --></td>
								<td><a href="http://stackoverflow.com/users/5451749/shubham-yeole" target="_blank"><img class="socialimage3" src="<%=request.getContextPath() %>/resources/images/stackoverflow.jpg"  width="55" height="55" /></a><!-- <br>
								<a href="http://stackoverflow.com/users/5451749/shubham-yeole" target="_blank">Stack Overflow</a> --></td>
								<td><a href="https://www.facebook.com/sy06736n" target="_blank"><img class="socialimage4" src="<%=request.getContextPath() %>/resources/images/fb.jpg"  width="55" height="55" /></a><!-- <br>
								<a href="https://www.facebook.com/sy06736n" target="_blank">Facebook</a> --></td>
							</tr>
						</table>
					</div>
					
					</div>
				<div class="footerparallax" id="footerparallax">
				<br><br><br>
				<table class="signtable" width="100%">
				<tr>
					<th width="33.33%">About Website</th>
					<th width="33.33%">Content</th>
					<th width="33.33%">Related courses</th>
				</tr>
				<tr>
					<td width="33.33%">Shubhamjavaworld.herokuapp.com was created in order to present projects, skills and concept in one place.<br><br> Technology used in this project are Java 8, Spring(MVC), Hibernate, JavaScript, jQuery, AngularJS, AJAX, HTML, CSS, MySQL database and HEROKU server to deploy.<br><br><br><br><br></td>
					<td width="33.33%">Home<br>Twilio part 1<br>Twilio part 2<br>About me<br>To do list<br>Blog<br>Follow me<br><br><br><br><br><br><br><br></td>
					<td width="33.33%">1. Algorithm and Computing Theory<br>2. Database Management Systsem<br>3. Introduction parallel and disdtributed computing<br>4. Computer Science Project 1<br>5. XML Web Development<br>6. Mobile Innovation<br>7. Information system and design development<br>
					8. Pattern Recognition<br>9. Concepts and structure in internet computing<br>10. Socket Programming</td>
				</tr>
				</table>			
				</div>
				<br><br><br><br><br><br><br><br><br>
			</div>
		</div>
	</div>
		<style>

</style>
<script type = "text/javascript" 
         src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
		
      <script type = "text/javascript" 
         src = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script>

<script>
setInterval(function() {
	$('.socialimage1').delay( 0 ).effect( "bounce", {times:1}, 1300 );
	$('.socialimage2').delay( 200 ).effect( "bounce", {times:1}, 1300 );
	$('.socialimage3').delay( 0 ).effect( "bounce", {times:1}, 1300 );
	$('.socialimage4').delay( 200 ).effect( "bounce", {times:1}, 1300 );
}, 1000);
$(document).ready(function(){
    $('#blogtable').DataTable();
});
</script>
</body>
</html>
