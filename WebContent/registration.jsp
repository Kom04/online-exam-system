<!DOCTYPE html>
<html>
<head>
<title>Registration Form</title>
<link rel="stylesheet" type="text/css" href=style.css">
<meta charset="utf-8">
<meta name="viewport"
content="width=device-width,initial-scale=1">
<meta http-equi="x-ua-compatible" content="ie=edge">
<script language="javascript" src="md5.js">
		</script>
		<script language="javascript">
		
		function convert()
		{
			var password=document.getElementById("password").value;//helps in getting the value of the password and stores in password
			var npassword=md5(password);
			document.getElementById("password").value=npassword;
			//alert(password);
		}
		</script>
<style>
body
	
	input[type=submit], input[type=reset] {
    background-color: bg1.jpg;
    border: none;
    color: white;
    padding: 16px 32px;
    text-decoration: none;
    margin: 4px 2px;
    cursor: pointer;
}
* {
	box-sizing: border-box;}
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
th, td {
    padding: 15px;
}
img { 
    width: 100%; 
}
td 
{
    height: 50px; 
    width: 50px;
}
table.center {
    width:70%; 
    margin-left:15%; 
    margin-right:15%;
  }

#cssTable td 
{
    text-align: center; 
    vertical-align: middle;
}
th {
    text-align: left;
}
table {
    border-spacing: 5px;
}
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 10px 0;
    border: none;
    cursor: pointer;
    width: 80%;
}

button:hover {
    opacity: 0.8;
}
.form-all {
border: medium solid red;
}
</style>
</head>
<body style="text-align:center;" background="pic.jpg">
		<font size="5">
		<h1> Enter your Details for Registration: </h1>
		<%
		String msg = request.getParameter("msg");
		if(msg!=null)
		{
			out.println(msg);
		}
	%>
	<table style="position: absolute;
	color: #03a9f4;
    top: 80%;
    left: 70%;
    transform: translate(-50%,-50%);
    width: 400px;
    padding: 50px;
    background: rgba(0,0,0,.8);
    box-sizing: border-box;
    box-shadow: 0 15px 25px rgba(0,0,0,.5);
    border-radius: 50px;" align="center"> 
	<form action="insert_reg_details.jsp" method="POST"  id="users" target="_blank" onsubmit="convert()" >
	<col width="200">
	<col width="200">
	<font size="6">
		<tr>
				<b>NAME : </b> </br><input type="text" name="name" maxlength="200" size="30" placeholder="Enter name">
				</br>
				</br>
		</tr>
		<tr>
			<b>AGE :</b>  </br><input type="number" name="age" width="100" height="30" placeholder="Enter your age">
			</br>
			</br>
		</tr>
		<tr>
			<b>ROLL :</b></br> <input type="number" name="roll" width="100" height="30" placeholder="Enter roll number">
			</br>
			</br>
		</tr>
		<tr>
			<b>SIC :</b> </br><input type="text" name="sic" width="100" height="30" placeholder="Enter sic">
			</br>
			</br>
		</tr>
		<tr>
			<b>REGD NO :</b> </br><input type="number" name="regdno" width="100" height="30" placeholder="Enter the registration number" >
			</br>
			</br>
		</tr>
		<tr>
				<b>ADDRESS :</b> </br><input type="text"  name="address" maxlength="1000"  placeholder=" Enter your permanent address">
				</br>
				</br>
		</tr>
		<tr>	
			<b>E-mail :</b> </br><input type="email" name="user_email" size="35" placeholder="Enter your email id">
			</br>
			</br
		</tr>
		<tr>
			<b>Login Id :</b> </br><input type ="text" name="loginid" autocomplete="off"/>
			<br/>
			</br>
		</tr>
		<tr>
			<b>Password :</b> </br><input type="password" name="password" autocomplete="off" id="password"/>
			</br>
			</br>
		</tr>
		<tr>
			<b>Mobile No : </b></br><input type="number" name="mobileno" width="100" height="30" placeholder="Enter your mobile no.">
			</br>
			</br>
		</tr>
		<tr>
			<b>SEMESTER :</b></br>
			<select id="equalification" class="">
				<option id="selectHeader ">------ Select Semester ---</option>
			select your Semester:<br>
			<option value="1st Sem">1st Semester</option>
			<option value="2nd Sem">2nd Semester</option>
			<option value="3rd Sem">3rd Semester</option>
			<option value="4th Sem">4th Semester</option>
			<option value="5th Sem">5th Semester</option>
			<option value="6th Sem">6th Semester</option>
			<option value="7th Sem">7th Semester</option>
			<option value="8th Sem">8th Semester</option>
			</select>
			
		</tr>
		</br>
		</br>
		<tr>
		</br>
			<fieldset>
				<legend> <b>SELECT YOUR BRANCH </b></legend>
			<input type="radio" name="Branch" id="Computer Science"> CS<br>
			<input type="radio" name="Branch" id="Information Technology"> IT<br>
			<input type="radio" name="Branch" value="Mechanical Engineering"> ME<br>
			<input type="radio" name="Branch" value="Electrical and Electronics"> EEE<br>
			<input type="radio" name="Branch" value="Architectural Engineering"> AE<br>
		
			</fieldset>
		</br>
		</tr>
		</br>
		</br>
	<input style="background: transparent;
    border: none;
    outline: none;
    color: #fff;
    background: green;    
    padding: 20px 20px;
    cursor: pointer;
    border-radius: 5px;" type="submit" value="Sign In" />
    &nbsp;&nbsp;
	<input style="background: transparent;
    border: none;
    outline: none;
    color: #fff;
    background: red;    
    padding: 20px 20px;
    cursor: pointer;
    border-radius: 5px;" type="Reset" value="RESET">
		</font>
	</form>
</table>
</font>
</body>