<!DOCTYPE html>
<html lang="en">
<head>
    
    <title>EMPLOYEE MANAGEMENT SYSTEM</title>
</head>
<body><center>
    <h1>EMPLOYEE MANAGEMENT SYSTEM</h1>
    <a href="home.jsp" >Home</a>
   	<a href="register.jsp">Register</a>
    <a href="login.jsp">Login</a>
    <a href="contact.jsp">Contact</a>
    <br>
    <h3>New Employee Registration here...</h3>
	<table>
    <form action="RegisterCode.jsp" method="post">
	<tr>
		<td>
        	Name:
		</td>
		<td>
			<input type="text" name="nm"><br>
		</td>
	</tr>
	<tr>
		<td>
        	Password:
		</td>
		<td>
			<input type="password" name="pwd"><br>
		</td>
	</tr>
	<tr>
		<td>
        	Email:
		</td>
		<td>
			<input type="email" name="email"><br>
		</td>
	</tr>
	<tr>
		<td>
        	Gender:
		</td>
		<td>
			<input type="text" name="g"><br>
		</td>
	</tr>
	<tr>
		<td>
        	Mobile:
		</td>
		<td>
			<input type="number" name="mobno"><br>
		</td>
	</tr>
	<tr>
		<td>
        	Address:
		</td>
		<td>
			<input type="text" name="add"><br>
		</td>
	</tr>
	<tr>
		<td>
        	<input type="submit" value="Register">
		</td>
		<td>
			<input type="reset" value="reset">
		</td>
	</tr>
        
    </form>     </center></table>
</body>
</html>