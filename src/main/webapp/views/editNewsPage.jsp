<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<d:set var="news" value="${news}" />
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
<link rel="stylesheet" href="/css/Dashboard.css">

</head>
<body class="bg-light">
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
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" id="btnss" href="/categories"> Home</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<div class="container">
		<div class="row justify-content-center d-flex  rowdeg">
			<div class="col-lg-12">
				<form action="/News/update/${news.id}" method="post" class="row g-3 fromdeg">
					<h2>Edit News</h2>
					<div class="col-md-9">
						<label for="inputEmail4" name="title" class="form-label">Title</label>
						<input type="text" value="${news.title}" name="title" class="form-control"
							id="inputEmail4">
					</div>
					<div class="col-md-3">
						<select name="categoryID" class="form-select"
							aria-label="Default select example">
							<option selected>Select Category</option>
							<c:forEach var="category" items="${categories}">
								<option value="${category.id}" ${category.id == news.category.id ? 'selected="selected"' : ''}>
								${category.name}
								</option>
							</c:forEach>
						</select>
					</div>
					<div class="col-md-12">
						<label for="exampleFormControlTextarea1" class="form-label">
							News</label>
						<textarea class="form-control"  name="content"
							id="exampleFormControlTextarea1" rows="5">${news.content}</textarea>
					</div>
					<!--  -->
					<div class="col-12">
						<button type="submit" class="btn btn-warning w-100 text-white">Edit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script src="../javascript/dashborad.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script src="https://kit.fontawesome.com/b5f32de822.js"
		crossorigin="anonymous"></script>
</body>
</html>