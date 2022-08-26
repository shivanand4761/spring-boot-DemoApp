<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<h1>Register your Details here.....</h1>
	<hr>
	<form action="savereg" method="post">
		<pre>
			Name<input type="text" name="name" />
			City<input type="text" name="city" />
			Email<input type="text" name="email" />
			Mobile<input type="text" name="mobile" />
			<input type="submit" value="save" />
		</pre>
	${msg}
	</form>

</body>
</html>