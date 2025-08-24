<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link href='<c:url value="/Resources/css/style.css" />'>
<script src='<c:url value="/Resources/js/script.js"/>'></script>

<title>Search home</title>
</head>
<body>
	
	<div class="container mt-4 text-center">
	   
		<div>
			<h1 style="color: #2F4F4F; text-transform: uppercase;">Search
				Page</h1>
			<p style="color: #2E8B57;">Kindly search here</p>
		</div>

		<div class="card mx-auto mt-5 bg-secondary" style="width: 50%;">
			<div class="card-body">
				<form class="mt-3 py-4" action="search">
					<div class="form-group">
						<input type="text" name="querybox" placeholder="Enter here"
							class="form-control" />
					</div>
					<div class="mt-3">
						<button class="btn btn-outline-light"
							style="background-color: green;">Search</button>
					</div>
				</form>
			</div>
		</div>
	</div>
<%-- 	<div class="container p-5">
		<img alt="My image" src='<c:url value="/Resources/image/gimage.jpg" />'
		style="width: 20%; height: 20%;">
	</div> --%>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>

</body>
</html>