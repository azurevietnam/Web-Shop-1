<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="./resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/menu_bar.css">

</head>

<body>

	<p class="text-center">
		<%
			if (session.getAttribute("username") != null) {
				out.print(session.getAttribute("username"));
			}
		%>

	</p>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" id="nav-item">WebApp</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li><a href="http://localhost:8080/WebApps">Home</a></li>
					<li class="dropdown"><a id="nav-item" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Profile <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li>
								<%
									if (session.getAttribute("username") != null) {
								%> <a href="./profile.jsp">Profile</a>
							</li>
							<%
								}
							%>
							<%
								if (session.getAttribute("username") == null) {
							%>
							<li><a href="./register.jsp">Register</a></li>
							<li><a href="./login.jsp">Login</a></li>
							<%
								}
							%>
							<li>
								<%
									if (session.getAttribute("username") != null) {
										if (session.getAttribute("role").equals("ADMIN")) {
								%><a href="./admin.jsp">Administrator</a> <a
								href="./Import-Export.jsp">Import-Export</a>
							</li>
							<%
								}
								}
							%>

						</ul></li>
					<li class="dropdown"><a id="nav-item" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">Shop <span class="caret"></span></a>
						<ul class="dropdown-menu">

							<%
								if (session.getAttribute("username") != null) {
							%>
							<li><a href="./auction_import.jsp">Import</a></li>
							<li><a href="./auction_search.jsp">Search</a></li>
							<%
								}
							%>


						</ul></li>

				</ul>



				<ul class="nav navbar-nav ">
					<li><a href="#">Help</a></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>




	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="./resources/bootstrap/js/bootstrap.min.js"></script>
	<script src="content/js/jquery.min.js"></script>
	<script src="content/js/bootstrap.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.dropdown-toggle').dropdown();
		});
	</script>
</body>
</html>