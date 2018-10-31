<!-- program to display the questions and radio buttons -->
<%@ page import="java.sql.*"%>
<html>
  <form method="post" action="resultos.jsp">
  <body style="text-align:center;" background="we3.jpg" action="resultos.jsp">
	    <CENTER>
	    <H2><FONT size="8" COLOR="#800000" FACE="Verdana" >OS</FONT></H2></CENTER>
	<hr>
      <% 
      try{
    	  
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","muskancs");
Statement st=connection.createStatement();
ResultSet rs=st.executeQuery("Select * from OS");
int i=1;
while(rs.next()){
%>
 
         
                   <b> <font size="6"> <%=rs.getString("ques")%></font></b>
                    </br>
                    </br>
          <font size="4"><input type="radio" value="<%=rs.getString("optiona")%>" name="radio<%=i%>"/><%=rs.getString("optiona")%></font>
          </br>
          </br>
     
         <font size="4"> <input type="radio" value="<%=rs.getString("optionb")%>" name="radio<%=i%>"/><%=rs.getString("optionb")%></font>
          </br>
          </br>
     
          <font size="4"><input type="radio" value="<%=rs.getString("optionc")%>" name="radio<%=i%>"/><%=rs.getString("optionc")%></font>
          </br>
          </br>
          
          <font size="4"><input type="radio" value="<%=rs.getString("optiond")%>" name="radio<%=i%>"/><%=rs.getString("optiond")%></font>
          </br>
          </br>
        
          <font size="4"><input type="hidden" value='<%=rs.getString("corans")%>' name="ans<%=i%>"/></font>
          </br>
       

      <%
i++;
}
      } catch(Exception e)
      {
      }
%>

     
          <input  style="background: transparent;
    border: none;
    outline: none;
    color: #fff;
    background: green;    
    padding: 20px 20px;
    cursor: pointer;
    border-radius: 5px;" type="submit" value="submit"></input>
        
        <input style="background: transparent;
    border: none;
    outline: none;
    color: #fff;
    background: red;    
    padding: 20px 20px;
    cursor: pointer;
    border-radius: 5px;" type="reset" value="reset"></input>
    </body>    
    
  </form>
  
</html>