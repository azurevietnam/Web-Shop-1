<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="./resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/auction_import.css">

<title>Auction Import</title>

</head>
<body background="./resources/images/background.jpg">
	<!-- 	Menu Bar	 -->
	<%@ include file="./menu_bar.jsp"%>

	<!-- Menu Page -->
	<!-- 	Main Page	 -->
	<div class="container">
		<div class="row centered-form">
			<div class="col-md-9 col-md-offset-1 column">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2 class="panel-title text-center">Import Auction</h2>
					</div>
					<div class="panel-body">

						<form role="form" action="./CreateAuction" method="get">
							<input type="hidden" name="createAuction" value="page2">
							<div class="row">
								<div class="col-md-4 col-md-offset-1">
									<div class="form-group text-center">
										<label>Buy Price</label> <input type="text" 
											name="Buy_Price" class="form-control input-sm"
											placeholder="Buy Price">
									</div>

								</div>

								<div class="col-md-4 col-md-offset-2">
									<div class="form-group text-center">
										<label>First Bid</label> <input type="text" 
											name="First_Bid" class="form-control input-sm"
											placeholder="First Bid">
									</div>

								</div>
							</div>

							<div class="row">
								<div class="col-md-4 col-md-offset-1">
									<div class="form-group text-center">
										<label>Photo:</label> <input type="file" name="Photo"
											class="form-control">
									</div>
								</div>

								<div class="col-md-4 col-md-offset-2">
									<div class="form-group text-center">

										<input type="hidden" name="SumPhoto" id="number" value="0" /> <label>Click
											to Add Another Photo:</label> <input type="button" 
											onclick="addPhoto()" value="Add Photo" class="btn btn-info">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-4 col-md-offset-1 form-group text-center">
									<div id="add_photo_right"></div>
								</div>



								<div class="col-md-4 col-md-offset-2 form-group text-center">
									<div id="add_photo_left"></div>
								</div>
							</div>

							<div class="row">
								<input type="button" value="Cancel"
									onClick="window.location='http://localhost:8080/WebApps/auction_import.jsp';"
									class="btn col-md-offset-2 btn-danger"><input
									type="submit" value="Next "
									class="btn col-md-offset-6 btn-success">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

	<script src="./resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="./resources/js/dolars.js"></script>
	<script src="./resources/js/add_photo.js"></script>
</body>
</html>