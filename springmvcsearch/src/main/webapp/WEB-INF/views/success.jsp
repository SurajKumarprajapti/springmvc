<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
</head>
<body>
	<h1>Your Name is ${student.name}</h1>
	<h1>Id is ${student.id}</h1>
	<h1>DOB is ${student.dob}</h1>
	<h1>Gender is ${student.gender}</h1>
	<h1>Subjects is ${student.subjects}</h1>
	<h1>Student type is ${student.subjects}</h1>
	<hr>
	<h1>Your Address</h1>
	<h1>City is ${student.address.city}</h1>
	<h1>State is ${student.address.state}</h1>	
</body>
</html>