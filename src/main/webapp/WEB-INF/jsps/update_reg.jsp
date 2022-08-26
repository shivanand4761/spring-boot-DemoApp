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
	<h2>Registration | Update Registration</h2>
	<hr>
	<form action="updatereg" method="post">
		<pre>
	
			Email<input type="text" name="email" value="${reg.email}"/>
			Mobile<input type="text" name="mobile" value="${reg.mobile}"/>
			<input type="submit" value="Update" />
		</pre>
	${msg}
	</form>

</body>
</html>