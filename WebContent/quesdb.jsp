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
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 50%;
}

button:hover {
    opacity: 0.8;
}
.form-all {
border: medium solid red;
}
</style>
</head>
<body style="text-align:center;" background="bg1.jpg">
		<font size="4">
		<h1> Enter Question Details </h1>
		<%
		String msg = request.getParameter("msg");
		if(msg!=null)
		{
			out.println(msg);
		}
	%>
<table width="400px" class="my-table" border="10" bordercolorlight=YELLOW bordercolordark=BLUE>
	<form action="ques.jsp" method="POST"  id="users" target="_blank" onsubmit="convert()">
	<col width="130">
	<col width="180">
	<font size="5">
		<tr>
				Ques : <input type="text" name="ques" maxlength="50" size="30" placeholder="Question">
				</br>
				</br>
		</tr>
		<tr>
			OptionA :  <input type="text" name="optiona" width="100" height="30" placeholder="Enter option">
			</br>
			</br>
		</tr>
		<tr>
			OptionB : <input type="text" name="optionb" width="50" height="10" placeholder="Enter option">
			</br>
			</br>
		</tr>
		<tr>
			OptionC : <input type="text" name="optionc" width="100" height="30" placeholder="Enter option">
			</br>
			</br>
		</tr>
		<tr>
			OptionD : <input type="text" name="optiond" width="100" height="30" placeholder="Enter Answer" >
			</br>
			</br>
		</tr>
		<tr>
			Corans : <input type="text" name="corans" width="100" height="30" placeholder="Enter option" >
			</br>
			</br>
		</tr>
		</br>
		</br>
		<input type="Submit" value="SUBMIT">
		
		</font>
	</form>
</table>
</font>
</body>