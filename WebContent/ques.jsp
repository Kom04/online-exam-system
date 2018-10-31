<%@page import= "org.apache.tomcat.dbcp.dbcp2.DriverManagerConnectionFactory"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
	String ques = request.getParameter("ques");
	String optiona = request.getParameter("optiona");
	String optionb = request.getParameter("optionb");
	String optionc = request.getParameter("optionc");
	String optiond = request.getParameter("optiond");
	String corans = request.getParameter("corans");
	
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","muskancs"); 
	Statement st = con.createStatement();	
	String sql = "insert into CG values('"+ques+"','"+optiona+"','"+optionb+"','"+optionc+"','"+optiond+"','"+corans+"')";
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