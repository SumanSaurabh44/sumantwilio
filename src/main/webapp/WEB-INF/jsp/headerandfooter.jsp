<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Bree+Serif" rel="stylesheet">
<head>
<link rel="icon" href="https://upload.wikimedia.org/wikipedia/it/b/be/Pace_plc-logo.png" width="100%">
<title>Shubham | WebApp</title>
</head>
<style>
<%-- <%@ include file="/WEB-INF/CSS/twilio.css"%>
 --%></style>
<script src="<c:url value="/resources/JS/headerandfooter.js" />"></script>
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Abel" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Cormorant+Garamond" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

<body style="margin:0;padding:0;">
<div style="padding: 10px; text-align: right;">
<style>
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111111;
}
</style>
<a href="https://github.com/shubham20yeole" target="_blank"><img src="<%=request.getContextPath() %>/resources/images/github.jpg"  width="22" height="22" /></a>
<a href="https://www.linkedin.com/in/shubhamyeole" target="_blank"><img src="<%=request.getContextPath() %>/resources/images/linkedin.jpg"  width="22" height="22" /></a>
<a href="http://stackoverflow.com/users/5451749/shubham-yeole" target="_blank"><img src="<%=request.getContextPath() %>/resources/images/stackoverflow.jpg"  width="22" height="22" /></a>
<a href="https://www.facebook.com/sy06736n" target="_blank"><img src="<%=request.getContextPath() %>/resources/images/fb.jpg"  width="22" height="22" /></a>

</div>
 <section>
    <div class="sticky">
        <ul>
            <li><a href="#" id="part1id">(WANT TO SEND ME AN SMS?)&nbsp;&nbsp;&nbsp; <span style="color: yellow"> CLICK ME</span></a></li>
            <li><a href="#" id="part2id">(EASY SEARCH SMS SERVICE) &nbsp;&nbsp;&nbsp;<span style="color: red"> CLICK ME</span></a></li>
            
            <%-- <li id="noti_Container">
                <div id="noti_Counter"></div>
                <!--A CIRCLE LIKE BUTTON TO DISPLAY NOTIFICATION DROPDOWN.-->
                <div id="noti_Button"></div>    
                <!--THE NOTIFICAIONS DROPDOWN BOX.-->
                <div id="notifications">
                    <h3>SMS service Users</h3>
                    <div style="height:300px;">
                     <div class="FixedHeightArchiveContainer">
                     <div class="ArchiveContent">
						<c:forEach var="users" items="${users}">
						<table width="100%">
   							<tr>
   							<td><img src="https://www.drupal.org/files/profile_default.png" width="72" height="72"></td>
   								<td>${users.name} viewed this SMS service using <span class="phoneMarker">${users.phone}</span> on <span class="phoneMarker">${users.dateOn}</span> at <span class="phoneMarker">${users.timeOn}</span></td>
   							</tr>
   						</table>
   							<hr>
						</c:forEach>
                  	</div>
                  	</div>
                    </div>
<!--                     <div class="seeAll"><a href="http://pace.smartcatalogiq.com/en/2015-2016/Graduate-Catalog/Course-Descriptions/CS-Computer-Science/600/CS-643" target="_blank">CS643 class</a></div>
 -->                </div>
            </li> --%>
        </ul>
    </div>
 </section>
       <input type="hidden" id="userSize" value="${userSize}">
</body>