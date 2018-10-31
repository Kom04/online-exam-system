<html>
<title> Result </title>
<body style="text-align:center;" background="we2.jpg">

<br>
<br>
<br>
<br>
<center><b> <font size="15";>Your Result </font></b></center>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<% 
Statement stmt=null;
ResultSet rs=null;
try{
Class.forName("oracle.jdbc.driver.OracleDriver");	
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","muskancs");
stmt=con.createStatement();
rs=stmt.executeQuery("select * from OS");
String s1,s2,s3,s4;
int i=1;
int correct=0, incorrect=0, total=0,mark=0;

while(rs.next())
{
	total++;
s1=rs.getString(1);
s2=request.getParameter("radio"+i);
//out.println(s2);
s3=rs.getString(6);
//out.println(s3);
if(s2!=null){
if(s2.equals(s3))
{
	s4="correct";
	correct++;
}
else 
{
	s4="incorrect";
	incorrect++;
}

i++;
} 
}
mark=correct*5;
%>
</br>
</br>
</br>
<table style="position: absolute;
	color: #03a9f4;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 450px;
    padding: 40px;
    background: rgba(0,0,0,.8);
    box-sizing: border-box;
    box-shadow: 0 15px 25px rgba(0,0,0,.5);
    border-radius: 10px;" align="center">
	<tr>
		<td> Total  No. of Questions</td>
		<td><%=total %></td>
	</tr>
	<tr>
		<td> No. of Correct Answers</td>
		<td><%=correct %></td>
	</tr>
	<tr>
		<td> No. of Wrong Answers</td>
		<td><%=incorrect %></td>
	</tr>
	<tr>
		<td>Marks Obtained</td>
		<td><%=mark %></td>
	</tr>

    </br>
    </br>
    </br>


<form action="enter.jsp" name="Logout">
<tr><td><input style="background: transparent;
border: none;
outline: none;
color: #fff;
background: red;    
padding: 15px 20px;
cursor: pointer;
border-radius: 5px;
"  type="submit" name="Logout" value="Logout"></td></tr>
</form>
</table>
<% }
finally{
	try{ if(null!=rs)
		rs.close();}
	catch(Exception e){
	}
}
%>

</body>
</html>