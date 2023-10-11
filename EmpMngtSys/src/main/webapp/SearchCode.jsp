<%@ page import="java.sql.*" %>
<% 
String name=request.getParameter("nm");
		
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "pkdb", "pkdb");
			
			PreparedStatement ps=con.prepareStatement("select * from emps where name=? ");
			ps.setString(1, name);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				for(int i=1;i<6;i++)
				{
				out.print(rs.getString(i));
				out.print("<br>");
				}
			}
			else
			out.print("Oops..No name of"+ name +"exit in system..");
			con.close();
		}
		catch(Exception e)
		{
			out.print(e);
		}
%>