<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<h2>Login | Login here...</h2>
	<hr>
	${accountCreated}
	<form action="reg" method="post">
		Email<input type="text" name="email"/>
		password<input type="text" name="password"/>
		<input type="submit" value="login"/>
	</form>
	<a href="newaccount">Create A New Account</a>
</body>
</html>