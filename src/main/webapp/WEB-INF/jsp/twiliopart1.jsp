<script>

function ot() {
	var number = 2;
    var container1 = document.getElementById("container1");
    while (container1.hasChildNodes()) {
        container1.removeChild(container1.lastChild);
    }
    document.getElementById("drh").innerHTML = "Please enter phone number and message for me.";
    for (i=0;i<number;i++){
/*         container1.appendChild(document.createTextNode("Member " + (i+1)));
 */        var input = document.createElement("input");
        input.type = "text";
        if(i==0){ 
        	input.name = "phone"; 
        	input.placeholder = "Enter Phone Number...";
		}
        if(i==1){ 
        	input.name = "msg"; 
            input.placeholder = "Enter message...";
        }
        
        container1.appendChild(input);
        container1.appendChild(document.createElement("br"));
        container1.appendChild(document.createElement("br"));
    }
    var input1 = document.createElement("input");
    input1.type = "submit";
    input1.className ="submitbutton submitbutton2";
    container1.appendChild(input1);
}
function dr() {
	var number = 1;
    var container1 = document.getElementById("container1");
    while (container1.hasChildNodes()) {
        container1.removeChild(container1.lastChild);
    }
    document.getElementById("drh").innerHTML = "Dr Scharff will recieve message on following number.";

    for (i=0;i<number;i++){
/*         container1.appendChild(document.createTextNode("Member " + (i+1)));
 */        var input = document.createElement("input");
        input.type = "text";
        input.placeholder = "Enter phone number";
        if(i==0){ input.name = "phone"; input.value = "+19292168151"; }
        if(i==1){ input.name = "msg"; input.value = "My name is Shubham"; }
        container1.appendChild(input);
        container1.appendChild(document.createElement("br"));
        container1.appendChild(document.createElement("br"));
    }
    var input1 = document.createElement("input");
    input1.type = "submit";
    input1.className ="submitbutton submitbutton2";
    container1.appendChild(input1);
}

	</script>
</head>
<body onload="myFunction()">
	<p class="title-1 font1">
		<marquee behavior="scroll" direction="left">
			<img
				src="https://cdn0.iconfinder.com/data/icons/connection/512/icon-18.png"
				width="37" height="32"> <span style="font-size: 10px; color: #b7b7b7;">Send
				SMS </span> | <span style="color: #b7b7b7">Format of number should be
				like +12018875323</span>
		</marquee>
	</p>
	<div class="scroll font1">
		<span class="font1" style="font-size: 1.5em; color: #0088cc;">${message}</span>
		<p style="font-family: 'Pacifico', cursive; font-weight: bold;"></p>
		<p style="font-size: 1.5em; color: #2f254f;">Please click or check
			other if you are a student or just a user.</p>

		<input type="radio" name="gender" class="smschoice" id="drscharff"
			onclick="dr()"> Dr Scharff <input type="radio" name="gender"
			class="smschoice" id="Other" onclick="ot()"> Other

		<div id="drsec">
			<p class="heading" id="drh"></p>
			<form action="sms.do" method="GET">
				<div id="container1"></div>
			</form>
		</div>
	</div>
</body>