<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet" href="../css/login.css">
</head>
<body class="bg-light">
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light navhe">
			<div class="container-fluid">
				<a class="navbar-brand" href="/"><img alt="logo" id="logo"
					src="../images/dainikbhaskar.png"></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ms-auto mb-2 me-5 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#"><i class="fa-solid fa-house si"></i>
								Home</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><i
								class="fa-solid fa-newspaper si"></i> E-paper</a></li>
						<li class="nav-item"><a class="nav-link" href="#"><i
								class="fa-solid fa-magnifying-glass si"></i> Search</a></li>
						<li class="nav-item"><a class="nav-link disabled" href="#"
							tabindex="-1" aria-disabled="true">Disabled</a></li>
					</ul>

				</div>
			</div>
		</nav>
	</header>

	<div class="container">
		<div class="row justify-content-center align-items-center mt-5">
			<div class="col-lg-6">
				<form action="UserRegisteration" class="row g-3 reg" method="POST">
					<c:if test="${not empty message}">
						<p id="msgres">${message}</p>
					</c:if>
					<h5>Register Here</h5>
					<div class="col-md-12">
						<label for="inputEmail4" class="form-label">Name</label> <input
							type="text" name="name" class="form-control in"
							placeholder="Enter your name" id="inputName4">
					</div>
					<div class="col-md-6">
						<label for="inputEmail4" class="form-label">Email</label> <input
							type="email" name="email" class="form-control in"
							placeholder="Abc@gmail.com" id="inputEmail4">
					</div>
					<div class="col-md-6">
						<label for="inputPassword4" class="form-label">Password</label> <input
							type="password" name="password" class="form-control in"
							placeholder="******" id="inputPassword4">
					</div>
					<div class="col-md-6">
						<label for="inputAddress" class="form-label">Phone Number</label>
						<input type="text" name="phoneNo" class="form-control in"
							id="inputAddress" placeholder="8668567031">
					</div>
					<div class="col-md-6">
						<label for="inputCity" class="form-label">Address</label> <input
							type="text" name="address" class="form-control in"
							placeholder="Gat No: 128--" id="inputCity">
					</div>

					<div class="col-12">
						<button type="submit" class="btn btn-primary w-5">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="../javascript/user.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/b5f32de822.js"
		crossorigin="anonymous"></script>
</body>
</html>