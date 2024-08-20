<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/user.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body class="bg-light">
	<header>
		<nav class="navbar navbar-expand-lg navbar-light bg-white navhe">
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
							aria-current="page" id="categorybtndeg" href="/categories">
								Home</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<div class="container">
		<div class="row justify-content-center newslistrow" id="Newslisttb">

			<div class="col-lg-12 newslist">
				<h3 style="text-align: start;">News List</h3>
				<table class="table table-hover">

					<tr class="bg-dark text-white">
						<th>Title</th>
						<th>Category</th>
						<th>Actions</th>
					</tr>
					<c:forEach var="news" items="${news}">
						<tr>
							<td>${news.title}</td>
							<td>${news.category.name}</td>
							<td><a href="/News/edit/${news.id}">Edit</a>| <a
								href="/News/delete/${news.id}"
								onclick="return confirm('Are you sure?')">Delete</a></td>
						</tr>
					</c:forEach>

				</table>
			</div>
		</div>
	</div>
	<script src="../javascript/dashborad.js"></script>
	<script src="../javascript/user.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/b5f32de822.js"
		crossorigin="anonymous"></script>
</body>
</html>