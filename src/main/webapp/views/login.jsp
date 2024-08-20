<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<body>
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
							aria-current="page" href="/"><i class="fa-solid fa-house si"></i>
								Home</a></li>
					</ul>

				</div>
			</div>
		</nav>
	</header>

	<div class="container">
		<div class="row justify-content-center align-items-center mt-5">
			<div class="col-lg-4">
				<form action="login" class="form1" method="post">
					<h3>login page</h3>
					<div class="mb-1">
						<label for="exampleInputEmail1" class="form-label">Email
							address</label> <input type="email" name="email" class="form-control in"
							id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter your email">
						
					</div>
					<div class="mb-3">
						<label for="exampleInputPassword1" class="form-label">Password</label>
						<input type="password" name="password" class="form-control in"
							id="exampleInputPassword1"  placeholder="Enter your email">
					</div>
					<button type="submit" class="btn btn-primary btn1 mb-3">Submit</button>
					<p class="mesg"> <a href="register"> New User ? <span style="color:orange">Sign Up here</span></a></p>
				</form>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/b5f32de822.js" crossorigin="anonymous"></script>
</body>
</html>