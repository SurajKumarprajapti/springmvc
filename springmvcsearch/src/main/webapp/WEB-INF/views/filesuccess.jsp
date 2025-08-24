<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page isELIgnored="false" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>File success</title>
</head>
<body>
	<h1>${msg }</h1>
	<img style="width: 100%; height: 80%" alt="Nature Image" src='<c:url value="/Resources/image/${filename}"/>'>
</body>
</html>