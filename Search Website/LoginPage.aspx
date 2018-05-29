<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
}

button:hover {
    opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
    position: relative;
}

img.avatar {
    width: 40%;
    border-radius: 50%;
}

.container {
    padding: 16px;
}

span.psw {
    float: right;
    padding-top: 16px;
}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 35px;
    font-weight: bold;
}

.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}

/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)} 
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)} 
    to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    span.psw {
       display: block;
       float: none;
    }
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body>

<h2>Interpreter Intelligence Login Form</h2>

<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>
    <p>
    <a href="http://localhost:54026/SearchPage">Search</a>
        </p>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="https://tie.interpreterintelligence.com/j_spring_security_check" method="post" enctype="application/x-www-form-urlencoded" id="myForm">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="images/image_avatar2.png" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="j_username"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="j_username" required>

      <label for="j_password"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="j_password" required>
        
      <button type="submit">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

</body>
</html>


<%--<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Form</title>
		<link rel="stylesheet" href="style.css">
	</head>
	<body>
		
		<div class="container">
			<header>
				<nav class="site-nav">
				</nav>
			</header>
			
			<div class="content-area clear-group">
				
				<div class="main-area">

					<form action="https://tie.interpreterintelligence.com/j_spring_security_check" method="post" enctype="application/x-www-form-urlencoded" id="myForm">
						
						<label for="j_username" class="hidden-label">Username</label>
						<input type="text" name="j_username" id="username" placeholder="username">
						
						<label for="j_password" class="hidden-label">Password</label>
						<input type="password" name="j_password" id="password" placeholder="password">
						
						<input type="submit" value="Connect">
						
					</form>	
				</div>
				<aside class="sidebar">
				</aside>
				
			</div>
			
			<footer></footer>

		</div>
		
		<script>
			console.log("Script works");
			
			document.getElementById("myForm2").addEventListener("submit", buttonClicked);
			
			function buttonClicked(e) {
				console.log("You clicked the submit button");

				var xhr = new XMLHttpRequest();
				xhr.open("POST", "https://tie.interpreterintelligence.com/j_spring_security_check"); 
				
				xhr.onload = function(event){ 
    			alert("The server says: " + event.target.response); 
				}; 
			
				var formData = new FormData(document.getElementById("myForm2")); 
				xhr.send(formData);
				
				console.log("Form Data: " + formData);
				
				e.preventDefault();
			}
			</script>
	</body>
</html>--%>