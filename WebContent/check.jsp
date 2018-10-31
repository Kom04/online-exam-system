<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<% 
	String loginid = request.getParameter("loginid");
	String password = request.getParameter("password");
	out.println("from textbox");
	out.println(loginid);
	out.println(password);
	String lg=null;
	String pass=null;
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","muskancs"); 
	//Statement st = con.createStatement();
	//String sql = "select * from silicon_students where loginid="'"; //remove password=password;
	String sql = "select * from REGTABLE where loginid= '"+loginid+"' and password= '"+password+"'";
	Statement ps=con.createStatement();
	ResultSet rs = ps.executeQuery(sql);
	out.println("from database");
	while(rs.next())
	{
	lg=rs.getString(8);
	out.println(lg);
	pass=rs.getString(9);
	out.println(pass);
	}
	
	if(loginid.equals(lg) && password.equals(pass))
	{
		response.sendRedirect("instruction.jsp");
	}
	else 
		response.sendRedirect("login.jsp?msg=Invalid Details");
%>