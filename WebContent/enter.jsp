<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;
padding-left:600px;
padding-right:30px;
padding-top:80px;
padding-bottom:50px;
}

input[type=password] {
    background-color: #008CBA;
    width: auto;
    padding: 10px 10px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}


button {
    background-color: #008CBA;
    color: white;
    padding: 10px 20px;
    margin: 6px 0;
    border: none;
    cursor: pointer;
    width: 20%;
}

button:hover {
    opacity: 0.7;
}

.cancelbtn {
    width: auto;
    padding: 10px 18px;
    background-color: red;
}




/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn {
       width: 100%;
    }
}
</style>
</head>
<body>
<body background="images.jpg">
<h2><b><font color="brown">Online exam</font></b></h2>

<form action="check1.jsp">
  <div>
    <label for="uname"><b><font color="white">QUESTIONS</font></b></label>
    <br>
    <button type="button">10</button>
    </div>
    <div>
    
    <label for="uname"><b><font color="white">TIME</font></b></label>
    <br>
    <button type="button">20 minutes</button>
   
    </div>
    <br>
   <div>
			<b><font color="white">SUBJECTS</font></b> :
			<br>
			<select name="subject" class="" background-color: ;>
				<option id="selectHeader ">------ Select Subject ---</option>
			select your Subject:<br>
			<option value="ACA">ACA</option>
			<option value="OS">OS</option>
			<option value="IOT">IOT</option>
			<option value="CG">CG</option>
			</select>
			<br>
			<br>
			
		</div>
    <div>
     <br>   
    <button type="submit" value="SUBMIT">Login</button>
</div>
</form>
<div>
  
    <a href="login.jsp"> <button type="button" class="cancelbtn">Cancel</button> </a>
  </div>
  </center>


</body>
</html>
