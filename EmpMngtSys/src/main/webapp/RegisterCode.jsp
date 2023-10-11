<%@ page import="java.sql.*" %>
<%
String name=request.getParameter("nm");
String password=request.getParameter("pwd");
String email=request.getParameter("email");
String gender=request.getParameter("g");
int mobile=Integer.parseInt(request.getParameter("mobno"));
String address=request.getParameter("add");


try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "pkdb", "pkdb");
	
	PreparedStatement ps=con.prepareStatement("insert into emps values(?,?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2,password);
	ps.setString(3,email);
	ps.setString(4,gender);
	ps.setInt(5, mobile);
	ps.setString(6,address);
	
	
	int i=ps.executeUpdate();
	out.print(i+"  User sucessfully registered....");
	con.close();
}
catch(Exception e)
{
	out.print(e);
}

%>