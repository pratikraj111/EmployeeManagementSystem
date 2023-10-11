<%@ page import="java.sql.*" %>
<% 
String name=request.getParameter("nm");
		
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "pkdb", "pkdb");
			
			PreparedStatement ps=con.prepareStatement("delete from emps where name=?");
			ps.setString(1, name);
			
			
			
			int i=ps.executeUpdate();
			out.print(i+"  User sucessfully deleted....");
			con.close();
		}
		catch(Exception e)
		{
			out.print(e);
		}
%>