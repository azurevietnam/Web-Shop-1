<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap Core CSS -->
<link href="./resources/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="./resources/css/auction_search.css" rel="stylesheet">

<title>Auction Search</title>

</head>
<body background="./resources/images/background.jpg">
	<!-- 	Menu Bar	 -->
	<%@ include file="./menu_bar.jsp"%>

	<!-- Search Bar -->
	<div class="container">
		<div class="row">
			<div id="custom-search-input">
				<div class="input-group col-md-offset-3 col-md-6">
					<input type="text" class="  search-query form-control"
						placeholder="Search" /> <span class="input-group-btn">
						<button class="btn btn-danger" type="button">
							<span class=" glyphicon glyphicon-search"></span>
						</button>
					</span>
				</div>
			</div>
		</div>
	</div>

	<!-- Slide bar  -->
	<div class="container">
		<div class="row">
			<div class="col-md-2">
				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne" id="value0">Antiques</a>
							</h4>
						</div>
						
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne"> Art</a>
							</h4>
						</div>


						<!-- div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body">
								<table class="table">
									<tr>
										<td><a href="#">Articles</a></td>
									</tr>
									<tr>
										<td><a href="#">News</a></td>
									</tr>
									<tr>
										<td><a href="#">Newsletters</a></td>
									</tr>
									<tr>
										<td><a href="#">Comments</a></td>
									</tr>
								</table>
							</div>
						</div>
					</div-->



					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- jQuery -->
	<script src="./resources/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="./resources/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>