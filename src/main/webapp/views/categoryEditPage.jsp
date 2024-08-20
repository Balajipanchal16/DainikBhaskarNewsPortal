<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:set var="category" value="${category}" />
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
	
	<!-- <link rel="stylesheet" href="/css/user.css"> -->
	<link rel="stylesheet" href="/css/Dashboard.css">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-light navhe">
			<div class="container-fluid">
				<a class="navbar-brand" href="/"><img alt="logo" id="logo"
					src="/images/dainikbhaskar.png"></a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav ms-auto mb-2 me-5 mb-lg-0">
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
		<div class="row justify-content-center ">
			<div class="col-lg-6 updatepage justify-content-center">
				<form action="/categories/update/${category.id}"  class="row g-3" method="post">
					<h3>Update Category</h3>
					<!-- <div class="col-md-6">
						<label for="inputPassword4" class="form-label">Password</label> <input
							type="password" class="form-control" id="inputPassword4">
					</div> -->
					<div class="col-md-6">
						<label for="inputEmail4" class="form-label">Category Name</label> <input
							type="text" name="name" value="${category.name}" class="form-control" id="inputEmail4">
					</div>
					<div class="col-12">
						<button type="submit" class="btn btn-primary">Update</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="../javascript/dashborad.js"></script>
	<script type="text/javascript" src="../javascript/admindashbord.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/b5f32de822.js"
		crossorigin="anonymous"></script>
</body>
</html>