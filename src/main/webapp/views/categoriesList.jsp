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
<link rel="stylesheet" href="../css/Dashboard.css">
<link rel="stylesheet" href="../css/categorypage.css">
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
						<li class="nav-item"><a style="margin-right: 10px"
							id="btndegs" class="nav-link" aria-current="page"
							href="/News/ListOfNews"> News List</a></li>
						<li class="nav-item"><a id="btnadddeg" class="nav-link "
							aria-current="page" href="/News/NewsPage"> Add News</a></li>
					</ul>

				</div>
			</div>
		</nav>
	</header>
	<div class="container">
		<div class="row mt-5 justify-content-center check">
			<div class="col-lg-6">
				<form action="/categories/saveCategroy" method="post">
					<c:if test="${not empty message}">
						<div id="mesgAboutCategory" class="${alertClass}">${message}</div>
					</c:if>
					<div class="d-flex ">
						<input class="d-inline-block me-3 inputs" type="text" name="name"
							placeholder="Enter category name">
						<button type="submit" class="btn " id="btns">Add Category</button>
					</div>

				</form>
			</div>

		</div>
	</div>
	<div class="row justify-content-center mt-5">
		<div class="col-lg-8 rr bg-white">
			<h3>Category List</h3>
			<div id="tab">
				<table class="table table-hover">

					<tr class="bg-dark text-white">
						<th>ID</th>
						<th>Name</th>
						<th>Actions</th>
					</tr>
					<c:forEach var="category" items="${categories}">

						<tr>
							<td style="color: black">${category.id}</td>
							<td>${category.name}</td>
							<td><a href="/categories/edit/${category.id}">Edit</a> | <a
								href="/categories/delete/${category.id}"
								onclick="return confirm('Are you sure?')">Delete</a></td>
						</tr>
					</c:forEach>
				</table>

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