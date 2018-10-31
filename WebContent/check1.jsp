<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%
String sub = request.getParameter("subject");
//out.println(sub);
if(sub.equals("OS"))
{
	response.sendRedirect("retos.jsp");
}
else if(sub.equals("ACA"))
{
	response.sendRedirect("retaca.jsp");
}
else if(sub.equals("IOT"))
{
	response.sendRedirect("retiot.jsp");
}
else
{
	response.sendRedirect("retcg.jsp");
}
%>