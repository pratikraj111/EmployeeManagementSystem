<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("uname");
		String password=request.getParameter("pwd");
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "pkdb", "pkdb");
			
			PreparedStatement ps=con.prepareStatement("select * from emps where name=? and password=?");
			ps.setString(1, name);
			ps.setString(2,password);
			
			
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				response.sendRedirect("emphome.jsp");
			}
			else
			out.print("Oops..Username or password is wrong..");
			con.close();
		}
		catch(Exception e)
		{
			out.print(e);
		}
		%>