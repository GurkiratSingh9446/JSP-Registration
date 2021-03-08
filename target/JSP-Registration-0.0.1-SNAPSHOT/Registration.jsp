<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
	<H1>Registration Page</H1>
	<form action="RegistrationProcess.jsp">
	<fieldset>
	  <legend>Registration Form Information:</legend>  
		USERNAME: <input type="email" name="username" required> 
		<br>
		PASSWORD: <input type="password" name="password">
		<br>
		 <input type="submit" value="register">
		 </fieldset>
	</form>
</body>
</html>