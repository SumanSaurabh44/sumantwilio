<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><script type = "text/javascript" src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type = "text/javascript" src = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.3/jquery-ui.min.js"></script><div class="container">
<script src="<c:url value="/resources/JS/jquery.lettering.js" />"></script>
<script src="<c:url value="/resources/JS/jquery.textillate.js" />"></script>
<link href="<c:url value="/resources/CSS/animate.css" />" rel="stylesheet">
<%@ include file="/WEB-INF/jsp/headerandfooter.jsp"%> 

<div class="demo" data-in-effect="rollIn">
    <p>Each of this letter will animate.</p>
</div>
