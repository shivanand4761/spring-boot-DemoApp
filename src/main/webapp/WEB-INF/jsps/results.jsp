<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Results</title>
</head>
<body>
	<h2>Registration | Results</h2>
	<hr>
	<table>
		<tr>
			<th>Name</th>
			<th>City</th>
			<th>Email</th>
			<th>Mobile</th>
		</tr>
		<c:forEach var="reg" items="${regs}">
		<tr>
				<td>${reg.name}</td>
				<td>${reg.city}</td>
				<td>${reg.email}</td>
				<td>${reg.mobile}</td>
		</tr>
		</c:forEach>
				</table>

</body>
</html>
