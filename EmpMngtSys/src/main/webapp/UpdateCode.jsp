<%@ page import="java.sql.*" %>	
		
<%		
		String name=request.getParameter("nm");
		String password=request.getParameter("pwd");
		String email=request.getParameter("email");
		int mobile=Integer.parseInt(request.getParameter("mobno"));
		String address=request.getParameter("add");
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "pkdb", "pkdb");
			
			PreparedStatement ps=con.prepareStatement("update emps set email=?,password=?, mobile=?,address=? where name=?");
			ps.setString(1,email);
			ps.setString(2,password);
			ps.setInt(3, mobile);
			ps.setString(4,address);
			ps.setString(5, name);
			
			int i=ps.executeUpdate();
			out.print(i+"  User sucessfully Updated.....");
			con.close();
		}
		catch(Exception e)
		{
			out.print(e);
		}
%>