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
			<th>Delete</th>
			<th>Update</th>
		</tr>
		<c:forEach var="reg" items="${regs}">
		<tr>
				<td>${reg.name}</td>
				<td>${reg.city}</td>
				<td>${reg.email}</td>
				<td>${reg.mobile}</td>
				<td><a href="delete?email=${reg.email}">delete</a></td>
				<td><a href="getRegInfo?email=${reg.email}">edit</a></td>
		</tr>
		</c:forEach>
				</table>

</body>
</html>