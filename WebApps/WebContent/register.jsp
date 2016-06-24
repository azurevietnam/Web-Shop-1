<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="./resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/register.css">
<title>Register</title>

</head>
<body background="./resources/images/background.jpg">

	<!-- 	Menu Bar	 -->
	<%@ include file="./menu_bar.jsp"%>


	<!-- 	Main Page	 -->
	<div class="container">
		<div class="row centered-form">
			<div
				class="col-xs-12 col-sm-10 col-md-4 col-sm-offset-2 col-md-offset-4">
				<div class="panel panel-default" id="panel">
					<div class="panel-heading">

						<h2 class="panel-title">Registration</h2>

					</div>
					<div class="panel-body">
						<form role="form" name="registration" action="./Register"
							method="get">
							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<label>Name</label> <input type="text" name="txtFName"
										class="form-control input-sm"
											placeholder="First Name">
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<label>Last name</label> <input type="text" name="txtLName"
											id="last_name" class="form-control input-sm"
											placeholder="Last Name">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label>Username</label> <input type="text" name="txtUsername"
									id="username" class="form-control input-sm"
									placeholder="Username">
							</div>

							<div class="form-group">
								<label>Email address</label> <input type="email" name="txtEmail"
									id="email" class="form-control input-sm"
									placeholder="Email Address">
							</div>

							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<label>Password</label> <input type="password"
											name="txtPassword" id="password"
											class="form-control input-sm" placeholder="Password">
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<label>Confirm password</label> <input type="password"
											name="txtPasswordRepeat" id="password_confirmation"
											class="form-control input-sm" placeholder="Confirm Password">
									</div>
								</div>
							</div>

							<div class="form-group">
								<label>Phone</label> <input type="number" name="txtPhone"
									id="phone" class="form-control input-sm" placeholder="Phone">
							</div>

							<div class="form-group">
								<label>Α.Φ.Μ.</label> <input type="number" name="txtAfm"
									id="afm" class="form-control input-sm" placeholder="Α.Φ.Μ.">
							</div>

							<div class="form-group">
								<label>Address</label> <input type="text" name="txtAddress"
									id="address" class="form-control input-sm"
									placeholder="Address">
							</div>

							<div class="row">
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<label>City</label> <input type="text" name="txtCity"
											id="city" class="form-control input-sm" placeholder="City">
									</div>
								</div>
								<div class="col-xs-6 col-sm-6 col-md-6">
									<div class="form-group">
										<label>ZIP Code</label> <input type="number" name="txtZip"
											id="zip_code" class="form-control input-sm"
											placeholder="ZIP Code">
									</div>
								</div>
							</div>

							<button type="submit" value="Register" id="btn-confirm"
								class="btn btn-info btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
		function checkField() {
			var fname = document.getElementsByName("txtFName")[0].value;
			var lname = document.getElementsByName("txtLName")[0].value;
			var username = document.getElementsByName("txtUsername")[0].value;
			var password = document.getElementsByName("txtPassword")[0].value;
			var passRepeat = document.getElementsByName("txtPasswordRepeat")[0].value;
			var phone = document.getElementsByName("txtPhone")[0].value;
			var afm = document.getElementsByName("txtAfm")[0].value;
			var address = document.getElementsByName("txtAddress")[0].value;

			if (fname == 0) {
				alert("Please input First Name");
			}

			if (lname == 0) {
				alert("Please input Last Name");
			}

			if (username == 0) {
				alert("Please input Username!");
			}

			if (password == 0) {
				alert("Please input Password!");
			}

			if (passRepeat == 0) {
				alert("Please input Password Repeat!");
			}

			if (phone == 0) {
				alert("Please input Phone! ");
			} else if (phone < 10) {
				alert("Phone must be 10 number!")
			}

			if (afm == 0) {
				alert("Please input AΦΜ!");
			} else if (phone < 10) {
				alert("Phone must be 10 number!")
			}

			if (address == 0) {
				alert("Please input Address!");
			}

		}
	</script>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="./resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>