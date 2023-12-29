<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Page</title>

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

	<main class="my-4">

		<div class="container">

			<div class="col-md-6 offset-md-3">

				<div class="card">

					<div class="card-header text-center">
						<span class="fa fa-user-circle"></span><br /> Register Here
					</div>

					<div class="card-body">

						<form id="reg-form" action="RegisterServlet" method="post">

							<div class="mb-3">
								<label for="user_name" class="form-label">User Name</label> <input
									type="text" class="form-control" name="user_name"
									placeholder="Enter Username:">
							</div>


							<div class="mb-3">
								<label for="exampleInputEmail1" class="form-label">Email
									address</label> <input type="email" class="form-control"
									name="user_email" id="exampleInputEmail1"
									aria-describedby="emailHelp">
								<div id="emailHelp" class="form-text">We'll never share
									your email with anyone else.</div>
							</div>


							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control" name="user_password"
									id="exampleInputPassword1">
							</div>

							<div class="mb-3">
								<label for="gender" class="form-label">Select Gender</label> <br />
								<input type="radio" name="gender" value="male"> Male <input
									type="radio" name="gender" id="gender" value="female">
								Female
							</div>


							<div class="form-group">

								<textarea name="about" class="form-control my-2" rows="5"
									placeholder="Enter something about yourself"></textarea>

							</div>


							<div class="mb-3 form-check">
								<input type="checkbox" class="form-check-input" name="check"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">Agree terms and conditions</label>
							</div>

							<br />
							<div class="container text-center" id="loader"
								style="display: none;">

								<span class="fa fa-refresh fa-spin fa-4x"></span> <br />
								<h4>Please wait</h4>

							</div>

							<button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
						</form>

					</div>

				</div>

			</div>

		</div>

	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
	<script src="js/myjs.js" type="text/javascript"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"
		integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA=="
		crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script>
		$(document).ready(function() {
			console.log("Loaded....");

			$('#reg-form').on('submit', function(event) {
				event.preventDefault();
				
				

				let form = new FormData(this);
				
				$("#submit-btn").hide();
				$("#loader").show();

				$.ajax({
					url : "RegisterServlet",
					type : "POST",
					data : form,
					success : function(data, textStatus, jqXHR) {
						console.log(data);
						
						$("#submit-btn").show();
						$("#loader").hide();
						
						if(data.trim()==='done'){
						
						swal("Registered successfully...redirecting to login page")
							.then((value) => {
								window.location="login_page.jsp"
							});
						}else{
							swal("Something went wrong, please try again")

						}
						
					},
					error : function(jqXHR, textStatus, errorThrown) {
						$("#submit-btn").show();
						$("#loader").hide();
						swal("Something went wrong, please try again")
						
					},
					processData : false,
					contentType : false
				})
			})

		})
	</script>

</body>
</html>