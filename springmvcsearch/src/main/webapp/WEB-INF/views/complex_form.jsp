<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">

<title>Complex form!</title>
</head>
<body class="" style="background: #e2e2e2;">

	<div class="container mt-4">

		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card" style="background: #B0C4DE">
					<div class="card-body">
						<h3 class="text-center text-success text-uppercase">Complex Form</h3>
						<div class="alert alert-danger mt-3" role="alert">
							<form:errors path="student.*"></form:errors>
						</div>
						<form action="handleform" method="post">

							<div class="form-group">
								<label for="exampleInputEmail">Your Name</label> <input
									name="name" type="text" class="form-control"
									id="exampleInputEmail" aria-describedby="emailhelp"
									placeholder="Enter Name">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail">Your Id</label> <input name="id"
									type="text" class="form-control" id="exampleInputEmail"
									aria-describedby="emailhelp" placeholder="Enter ID">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail">Your DOB</label> <input
									name="dob" type="text" class="form-control"
									id="exampleInputEmail" aria-describedby="emailhelp"
									placeholder="mm/dd/yyyy">
							</div>

							<div class="form-group">
								<label for="exampleFormControlSelect1">Select Courses</label> <select
									name="subjects" class="form-control"
									id="exampleFormControlSelect1" multiple>

									<option>Java</option>
									<option>Phython</option>
									<option>C++</option>
									<option>Spring</option>
									<option>Hibernate</option>

								</select>
							</div>

							<div class="form-group">
								<span class="mr-3">Select Gender</span>
								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="inlineRadio1" value="male"><label
										class="form-check-label" for="inlineRadio1">Male</label>
								</div>

								<div class="form-check form-check-inline">
									<input class="form-check-input" type="radio" name="gender"
										id="inlineRadio2" value="female"><label
										class="form-check-label" for="inlineRadio2">Female</label>
								</div>
							</div>

							<div class="form-group">
								<label for="">Select Type</label> <select class="form-control"
									name="type">
									<option value="oldstudent">Old Student</option>
									<option value="normalstudent">Normal Student</option>
								</select>
							</div>

							<div class="card" style="background: #B0C4DE">
								<div class="card-body">
									<p>Your Address</p>
									<div class="form-group">
										<label for="exampleInputEmail">Your City</label> <input
											type="text" class="form-control"
											placeholder="Enter your city" name="address.city">
									</div>
									<div class="form-group">
										<label for="exampleInputEmail">Your State</label> <input
											type="text" class="form-control"
											placeholder="Enter your state" name="address.state">
									</div>
								</div>
							</div>

							<div class="container text-center mt-2">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>

						</form>

					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
		crossorigin="anonymous"></script>

</body>
</html>