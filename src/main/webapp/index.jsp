<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="css/mystyle.css" rel="stylesheet" type="text/css">
</head>
<body>

	<%@include file="navbar.jsp"%>

	<div class="container-fluid p-0 m-0 my-2">

		<div class="jumbotron bg-light">

			<div class="container pb-3">
				<h3 class="display-3">Welcome to TechBlog</h3>
				<h3>Tech Blog</h3>
				<p>Welcome to technical blog, world of technology. A programming
					language is usually described in terms of its syntax (form) and
					semantics (meaning). These are usually defined by a formal
					language.</p>
				<p>A language usually has at least one implementation in the
					form of a compiler or interpreter, allowing programs written in the
					language to be executed. Programming language theory is the
					subfield of computer science that studies the design,
					implementation, analysis, characterization, and classification of
					programming languages.</p>

				<button class="btn btn-secondary">
					<span class="fa fa-user-plus"></span> Start ! it's free
				</button>
				<a href="login_page.jsp" class="btn btn-secondary">
					<span class="fa fa-user-circle fa-spin"></span> Login
				</a>

			</div>
		</div>


	</div>


	<div class="container">

		<div class="row">

			<div class="col-md-4">

				<div class="card" >
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Read more.</a>
					</div>
				</div>

			</div>
			
			<div class="col-md-4">

				<div class="card" >
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Read more.</a>
					</div>
				</div>

			</div>
			
			<div class="col-md-4">

				<div class="card" >
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Read more.</a>
					</div>
				</div>

			</div>

		</div>

	</div>

	<div class="container my-2">

		<div class="row">

			<div class="col-md-4">

				<div class="card" >
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Read more.</a>
					</div>
				</div>

			</div>
			
			<div class="col-md-4">

				<div class="card" >
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Read more.</a>
					</div>
				</div>

			</div>
			
			<div class="col-md-4">

				<div class="card" >
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">Some quick example text to build on the
							card title and make up the bulk of the card's content.</p>
						<a href="#" class="btn btn-primary">Read more.</a>
					</div>
				</div>

			</div>

		</div>

	</div>
	

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
	<script src="js/myjs.js" type="text/javascript"></script>

</body>
</html>