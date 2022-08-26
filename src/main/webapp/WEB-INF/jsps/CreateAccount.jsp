<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Account</title>
</head>
<body>
	<h2>New User | Create New Account</h2>
	<hr>
	<form action="saveaccount" method="post">
	
	   	Id:<input type="text" name="id"/>
		Email:<input type="text" name="email"/>
		password:<input type="text" name="password"/>
		<input type="submit" value="create new Account"/>
	</form>
</body>
</html>