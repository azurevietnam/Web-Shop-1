<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<%@page
	import="java.util.*,java.sql.*,javax.servlet.http.HttpServletRequest"%>
<%@page
	import="model.Categories,ConnectionFactory.CategoriesDAO,ConnectionFactory.CategoriesDAOImpl"%>
<html>
<head>
<script src="http://maps.googleapis.com/maps/api/js"></script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="./resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/auction_import.css">
<title>Auction Import</title>
<script src="./resources/js/location.js">
	
</script>
</head>
<body background="./resources/images/background.jpg">

	<!-- 	Menu Bar	 -->
	<%@ include file="./menu_bar.jsp"%>

	<!-- 	Main Page	 -->
	<div class="container">
		<div class="row centered-form">
			<div class="col-md-9 col-md-offset-1 column">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2 class="panel-title text-center">Import Auction</h2>
					</div>
					<form role="form" action="./CreateAuction" method="get">
						<div class="panel-body">

							<input type="hidden" value="page1" name="createAuction">
							<div class="row">
								<div class="col-md-12">
									<div class="form-group text-center">
										<label>Item Name</label> <input type="text" name="Name"
											class="form-control input-sm" placeholder="Item Name">
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-12">
									<div class="form-group text-center">
										<label>Select a Category:</label><br/>
										<input type="text" name="Categories" id="categories" class="form-control input-sm" value="">

									</div>
								</div>
							</div>

							
							<div class="row">
								<div class="col-md-1">
									<div class="form-group text-center">
										<select size="13" onchange="nextGrade(this.value,1);">

											<%
												CategoriesDAO categoriesDAO = new CategoriesDAOImpl();
												List<Categories> clist = categoriesDAO.getFirstGrade();
												for (Categories categories : clist) {
											%>

											<option id="option1" value="<%=categories.getName()%>"
												role="option"><%=categories.getName()%></option>
											<%
												}
											%>

										</select>
									</div>
								</div>

								<div class="col-md-1 col-md-offset-3">
									<div class="form-group text-center">
										<select style="display: none" id="category_2" name="fcat"
											size="13" onchange="nextGrade(this.value,2);">

										</select>

									</div>
								</div>


								<div class="col-md-1 col-md-offset-2">
									<div class="form-group text-center">
										<select style="display: none" id="category_3" name="fcat"
											size="13" onchange="nextGrade(this.value,3);">

										</select>

									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-1">
									<div class="form-group text-center">
										<select style="display: none" id="category_4" name="fcat"
											size="13" onchange="nextGrade(this.value,4);">

										</select>
									</div>
								</div>

								<div class="col-md-1 col-md-offset-3">
									<div class="form-group text-center">
										<select style="display: none" id="category_5" name="fcat"
											size="13" onchange="nextGrade(this.value,5);">

										</select>
									</div>
								</div>

							</div>

							<div class="row">
								<div class="col-md-6">
									<div class="form-group text-center">
										<label>Country</label> <input type="text" name="Country"
											class="form-control input-sm" placeholder="Country">
									</div>
								</div>

							</div>

							<div class="row">
								<div class="col-md-4">
									<div id="googleMap" style="width: 350px; height: 300px;"></div>
								</div>
								<div class="col-md-5 col-md-offset-3">
									<div class="form-group text-center">
										<label>Location</label> <input type="text" id="Location"
											name="Location" class="form-control input-sm"
											placeholder="Location">
									</div>
								</div>

								<div class="col-md-5 col-md-offset-3">
									<div class="form-group text-center">
										<label>Latitude</label>
										<div>
											<input type="text" id="Latitude" name="Latitude"
												class="form-control input-sm">
										</div>
									</div>
								</div>
								<div class="col-md-5 col-md-offset-3">
									<div class="form-group text-center">
										<label>Longitude</label>
										<div>
											<input type="text" id="Longitude" name="Longitude"
												class="form-control input-sm">
										</div>
									</div>
								</div>

							</div>


							<div class="row">
								<div class="col-lg-8 description">
									<div class="form-group text-center">
										<label>Description</label>
										<textarea name="Description" class="form-control" rows="5"></textarea>
									</div>

								</div>
							</div>


							<input type="button" value="Cancel"
								onClick="window.location='http://localhost:8080/WebApps';"
								class="btn col-md-offset-2 btn-danger"><input
								type="submit" value="Next "
								class="btn col-md-offset-6 btn-success">
						</div>
					</form>

				</div>
			</div>
		</div>
	</div>




	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="./resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="./resources/js/dolars.js"></script>
	<script src="./resources/js/category.js"></script>
</body>
</html>