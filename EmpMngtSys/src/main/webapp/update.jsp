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
    <h3> Employee Updates </h3>
    <form action="UpdateCode.jsp" method="post">
        Name:<input type="text" name="nm"><br><br>
        Password: <input type="password" name="pwd"><br><br>
        Email:<input type="email" name="email"><br><br>
        Gender:<input type="text" name="g"><br><br>
        Mobile:<input type="number" name="mobno"><br><br>
        Address:<input type="text" name="add"><br><br>
        <input type="submit" value="Update"><br>
      </form>    </center>
</body>
</html>