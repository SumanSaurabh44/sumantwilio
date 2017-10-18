<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html ng-app="todoApp">
  <head>
       <script src="<c:url value="/resources/JS/todo.js" />"></script>
  
  <link href="<c:url value="/resources/CSS/todo.css" />" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Faster+One" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Megrim" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Gruppo" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Cairo" rel="stylesheet">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

	<body>
    
    <div class="container" id="content">
		<form name="toDoList" action="savetodolist" method="POST">
		<h2 id="topForList">Create new 'To Do List...'</h2>
    			<input type="text" name="fullname" id="fullname" class="fullname" value="${listname}" placeholder="To Do List Name" required>
    <hr>
        	<div id="todolistheading"><p>Please enter item name and click on add to include in list. To save this "To Do List" please click on Save button at the bottom. </p>
            	<p class="errmsg"></p>
				<input type="text" name="ListItem" placeholder="Item Name"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p class="button" id="addList"><span>Add </span></p>
			</div>
			<input type="hidden" name="longitude" id="longitude" class="longitude">
			<input type="hidden" name="latitude" id="latitude" class="latitude">
			<input type="hidden" name="state" id="state" class="state">
			<input type="hidden" name="country" id="country" class="country">
			<input type="hidden" name="city" id="city" class="city">
			<div class="list"></div>
			<input type="hidden" name="updateid" value="${listIdToUpdate}">
		<br/>
		<div id="itemsScroll">
		<ol>
			<c:forEach var="items" items="${items}">
				<table width="100%" class="itemtable"><tr><td><li>${items.itemname} <input type="hidden" name="listofitems" value="${items.itemname}"></li></td><td align="right"><i id="removeitem" class="material-icons">highlight_off</i></td></tr></table>
			</c:forEach>
		</ol>
		</div>
		<br><br>
		<c:if test="${not empty listIdToUpdate}">
			<input type="hidden" name="updatestatus" id="updatestatus" value="no">
			<p class="errmsg">Note: Make sure you click on below check box if you want to update the existing "TO DO LIST"</p>
           <input type="checkbox" id="updatecheckbox"> Update To Do List?<br><br>
    		</c:if>
			<input type="submit" value="submit"/>
		</form>
    <script>
$(document).ready(
    		
    	    function(){
    	    	var seeifpresent = $("#fullname").val();
    	    	if(seeifpresent==""){
    	    		
    	    	}else{
    	    		$('html, body').animate({
    	    	        scrollTop: $('#content').offset().top
    	    	    }, 'slow');
    	    	}
    	    	
    	    	 $("#updatecheckbox").click(function() {
    	             if($('#updatecheckbox').is(':checked')) { 
    	                 $('#updatestatus').val("yes");
    	             } else {
    	                 $('#updatestatus').val("no");
    	             }
    	         });
    	        $('#addList').click(
    	            function(){
  	            	  $( "#addList" ).toggle( "highlight" );
	            	  $( "#addList" ).toggle( "highlight" );

    	                var toAdd = $('input[name=ListItem]').val();
    	                if(toAdd==""){
    	                	$('.errmsg').show();
    	                	$('.errmsg').text("Item name not found. Please enter items and then hit Add");
    	                }else{
    	                	$('ol').append('<table width="100%" class="itemtable"><tr><td><li>' + toAdd + '<input type="hidden" name="listofitems" value="' + toAdd + '" ></li></td><td align="right"><i id="removeitem" class="material-icons">highlight_off</i></td></tr></table>');
    	                	$('input[name=ListItem]').val("");
    	                	$('.errmsg').hide();
    	                }
    	            });
    	       
    	       $("input[name=ListItem]").keyup(function(event){
    	          if(event.keyCode == 13){
    	            $("#button").click();
    	          }         
    	      });
    	      
    	      $(document).on('click','#removeitem', function(){
    	        $(this).closest(".itemtable").toggleClass('strike').fadeOut('slow');  
    	        $(this).closest(".itemtable").toggleClass('strike').remove();    

    	      });
    	      
    	      $('input').focus(function() {
    	        $(this).val('');
    	      });
    	      
    	    }
    	);
    </script>
    </div>
	</body>  </body>
</html>