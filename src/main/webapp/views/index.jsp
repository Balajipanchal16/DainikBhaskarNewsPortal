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
<link rel="stylesheet" href="../css/user.css">

</head>
<body class="bg-light">
	<!-- 	<h1>welcome in online dainik bhaskar e-portal</h1> -->
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
						<li class="nav-item"><a class="nav-link" href="/loginPage"
							tabindex="-1" aria-disabled="true">Login</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<div class="container-fluid mainsdiv">
		<div class="sidebar left-sidebar">
			<!-- Left Sidebar Content -->
			<ul>
				<c:forEach var="category" items="${categories}">
					<li><a href="/News/showNewsByCategory/${category.getId()}"
						class="category-link" data-category-id="${category.getId()}">
							${category.getName()}</a></li>
					<%-- 	<form action="/News/showNewsByCategory" method="get">
						<input type="hidden" name="categoryId" value="${category.getId()}" />
						<button type="submit"
							style="background: none; border: none; color: blue; text-decoration: underline; cursor: pointer;">
							${category.getName()}</button>
					</form> --%>
				</c:forEach>
			</ul>
		</div>

		<div class="content px-0">

			<div id="news-container">
				<c:if test="${not empty newsList}">
					<c:forEach var="news" items="${newsList}">
						<div class="newsItem">
							<a id="newsTitle" href="/News/newsContent/${news.getId()}">
								<h3>${news.getTitle()}</h3>
							</a>
						</div>
					</c:forEach>

				</c:if>
				<c:if test="${not empty news}">
					<div class="newsContent">
						<h3>${news.getTitle()}</h3>
						<p>${news.getContent()}</p>
					</div>
				</c:if>
			</div>
		</div>




		<div class="sidebar right-sidebar">
			<div class="rightsidebardeg">
				<h1>Today's horoscope</h1>
			<h3>Aries</h3>
			<p>Positive- Some special tasks can be completed with your wisdom
				and hard work. You will gain better information and this will also
				enhance your personality. Time is favorable for women. They will
				have a good position in family and business sphere...</p>
			</div>
			
			<!-- Right Sidebar Content -->
			<!-- <ul>
				<li><a href="#">Link A</a></li>
				<li><a href="#">Link B</a></li>
				<li><a href="#">Link C</a></li>
			</ul> -->
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