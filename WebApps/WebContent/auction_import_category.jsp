<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Select Categories</title>

</head>
<body background="./resources/images/background.jpg">
	<!-- 	Menu Bar	 -->
	<%@ include file="./menu_bar.jsp"%>

	<!-- Menu Page -->
	<!-- 	Main Page	 -->
	<div class="container">
		<div class="row centered-form">
			<div
				class="col-xs-12 col-sm-9 col-md-10 col-sm-offset-10 col-md-offset-0">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2 class="panel-title">Select Categories</h2>
					</div>
					<div class="panel-body">
						<form role="form" name="category" action="./Import"
							method="get">

							<div tabindex="-1">
								<table>
									<tbody>
										<tr id="catboxes_row_1">
											<td valign="top"><div id="fcat_inp" class="idtRgt">
													<select id="fcat" name="fcat" size="13">
														<option	value="Antiques" role="option">Antiques</option>
														<option value="Art"  role="option">Art</option>
														<option value="Motors" role="option">Motors</option>
														<option value="Baby" role="option">Baby</option>
														<option value="Books" role="option">Books</option>
														<option value="Business Industrial" role="option">Business Industrial</option>
														<option value="Cameras" role="option">Cameras Photo</option>
														<option value="Phones" role="option">Cell Phones &amp; Accessories</option>
														<option value="Clothes" role="option">Clothing,Shoes Accessories</option>
														<option value="Coins" role="option">Coins &amp; Paper Money</option>
														<option value="Collectibles" role="option">Collectibles</option>
														<option value="Computers" role="option">Computers/Tablets &amp; Networking</option>
														<option value="Consumer_Electronics" role="option">Consumer Electronics</option>
														<option value="Crafts" role="option">Crafts</option>
														<option value="Dolls_Bears" role="option">Dolls &amp; Bears</option>
														<option value="Dvd_Movies" role="option">DVDs &amp; Movies</option>
														<option value="Entertainment Memorabilia" role="option">Entertainment Memorabilia</option>
														<option value="Gift Cards_Coupons" role="option">Gift Cards &amp; Coupons</option>
														<option value="Health_Beauty" role="option">Health &amp; Beauty</option>
														<option value="Home_Garden" role="option">Home &amp; Garden</option>
														<option value="Jewelry_Watces"   role="option">Jewelry &amp; Watches</option>
														<option value="Music" role="option">Music</option>
														<option value="Musical_Instruments"  role="option">Musical Instruments &amp; Gear</option>
														<option value="Pet_Supplies" role="option">Pet Supplies</option>
														<option value="Pottery_Glass" role="option">Pottery &amp; Glass</option>
														<option value="Real_Estate" role="option">Real Estate</option>
														<option value="Specialty_Services" role="option">Specialty Services</option>
														<option value="Sporting_Goods" role="option">Sporting Goods</option>
														<option value="Sports_Men" role="option">Sports Men</option>
														<option value="Stamps" role="option">Stamps &gt;</option>
														<option value="Tichets" role="option">Tickets &amp; Experiences</option>
														<option value="Toys" role="option">Toys &amp; Hobbies</option>
														<option value="Travel" role="option">Travel</option>
														<option value="Games" role="option">Video Games &amp; Consoles</option>
														<option value="Other" role="option">Everything Else</option></select>
												</div></td>
											<td valign="top">
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<input type="button" value="cancel" class="btn btn-danger"/>
							<input type="submit" value="submit" class="btn btn-success"/>
							

						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="./resources/bootstrap/js/bootstrap.min.js"></script>


</body>
</html>