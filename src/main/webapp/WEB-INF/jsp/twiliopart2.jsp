</head>
<body onload="myFunction()">
	<span class="twilio2head">
	<img style="padding-right: 5%;" width="22" height="42" src="<%=request.getContextPath() %>/resources/images/phone.jpg"/>E A S Y  -  S E A R C H </span><span style="fonnt-size: 0.1px;">SMS Service</span><br><br><br>
	
	<div id="twilio2dis">
	<p class="headingdis"><u>DESCRIPTION</u></p>
	1. Sending text messages has always been the easiest way for people to reach out anyone anytime. Many people prefer using SMS instead of calling. <br><br>
	2. Most common bussiness in Indian remote areas is farming which is very hard and time-consuming due to lack of technology. Hence, people can hardly pay much attention to their children's activities in school because of lack of time.<br><br>
	3. Secondly, as schools in villages are located at far distance from their home, it becomes second reason for people not having direct communication with their children class teachers.<br><br>
	4. Guardians play important role in the growth of their child. Many teachers encourage parents to keep attention about what their children are learning and keeping track of their progress reports.<br><br>
	5. EasySearch SMS service assists guardians to learn about their children progress reports at any time. This service can be also used to know school activities like events, new facilities and future development goals.<br><br>
	<p class="headingdis"><u>SYNTAX</u></p>
	1. Using <b>EASY-SEARCH</b> service is extremely simple. Send <b>Start</b> message to <b>+(419)482-1780</b> to begin using this service.<br><br>
	2. Next, you will be receiving a text message in couple of seconds which asks you for the option you would like to go with. For example, <b>A</b> Progress report of the student, <b>B.</b> New Facilities in school, <b>C.</b> School future goals and <b>D.</b> Events in school.<br><br>
	3. You can chose any option according to your requirement. If user want to see the progress report of his/her child, they need to provide a <b>4 digit PIN</b> for security purpose. After user is done with the authentication process he/she may need to select the subject for viewing that subjects progress report.<br><br>
	4. User can go back any time by sending <b>start</b> or <b>restart</b> message to explore more about the events, facilities and future development goals of the school. <br><br>
	<p class="headingdis"><u>IMPLEMENTATION</u></p>
	<a href="https://github.com/shubham20yeole/Twilio-Part-2" target="_blank">GitHub URL</a><br>
	<a href="https://shubhamtwilio.herokuapp.com/" target="_blank">Heroku URL</a><br>
	<a href="https://drive.google.com/open?id=1APH7dFhBXuWsDkLIqlZcUZUy087jmBhvj4mL6KlvRYU" target="_blank">Presentation URL</a>
	</div>
	<p style="color: #9eabb4; padding: 1%; font-size: 0.6em;">Please enter your full name and phone number to start using SMS Service</p>
	
	<form method="POST" action="collectData">
	<input type="text" name="name" placeholder="Full Name" required><br><br>
	<input type="text" name="phone" placeholder="Phone Number" required><br><br>
	<input type="submit" value="Start SMS Service...">
	</form>
</body>