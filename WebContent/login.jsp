<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script language = "javascript" src = "md5.js">
		</script>
		<script language = "javascript">
		function convert()
		{
			var password = document.getElementById("password").value;
			var npassword = md5(password);
			document.getElementById("password").value = npassword;
		  
		}
		</script>
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: brown;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 60%;
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

img.bg0 {
    width: 20%;
    border-radius: 10%;
}

.container {
    padding: 15px;
    
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
    padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 70%; /* Could be more or less, depending on screen size */
     background: url(download.jpg) no-repeat center fixed;
    background-size: cover;
}

/* The Close Button (x) */
.close {
    position: absolute;
    right: 25px;
    top: 0;
    color: #000;
    font-size: 45px;
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
       width: 50%;
    }
}
</style>
</head>
<br><br>

<body style="text-align:center;" background="lbg.jpg">

<b><h1 style="font-size=60px;">Online Examination Login Form</h1></b>

<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>

<div id="id01" class="modal">
  
  <form class="modal-content animate" action="check.jsp" method="post" onsubmit="convert()">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="bg0.jpg" alt="Avatar" class="avatar" width="400" height="250">
    </div>

    <div class="container">
      <label for="loginid"><h1 style="font size=40px;">Login ID</h1></label>
      <input type="text" placeholder="Enter Login ID" name="loginid" id="login" autocomplete="off">
	</br>
      <label for="password"><h1>Password</h1></label>
      <input type="password" placeholder="Enter Password" name="password"  autocomplete="off" id="password"/>
       <br> 
       <br>
      <button type="submit">Login</button>
      </br>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    

    
    </br>
     Don't have an account:<a href="registration.jsp"> <p style="color:white;"><b>Register Here</b></p> </a>
  </form>
  </div>
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
