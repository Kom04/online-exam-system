<%@page import= "org.apache.tomcat.dbcp.dbcp2.DriverManagerConnectionFactory"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String roll = request.getParameter("roll");
	String sic = request.getParameter("sic");
	String regdno = request.getParameter("regdno");
	String address = request.getParameter("address");
	String user_email = request.getParameter("user_email");
	String loginid = request.getParameter("loginid");
	String password = request.getParameter("password");
	String mobileno = request.getParameter("mobileno");
	String semester = request.getParameter("semester");
	String branch = request.getParameter("branch");
	
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","muskancs"); 
	Statement st = con.createStatement();	
	String sql = "insert into REGTABLE values('"+name+"','"+age+"','"+roll+"','"+sic+"','"+regdno+"','"+address+"','"+user_email+"','"+loginid+"','"+password+"','"+mobileno+"','"+semester+"','"+branch+"')";
	int count = st.executeUpdate(sql);
	if(count>0)
	{
		response.sendRedirect("login.jsp?msg=Registered Successfully");
	}
	else
	{
		response.sendRedirect("registration.jsp?msg=Try Again..");
	}
	con.close();
%>