<%@ page language="java" contentType="text/html" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Select Categories</title>

</head>
<body>

	<select id="continent" onchange="nextGrade();">
		<option value="empty">Select a Continent</option>
		<option value="North America">North America</option>
		<option value="South America">South America</option>
		<option value="Asia">Asia</option>
		<option value="Europe">Europe</option>
	</select>
	<br />
	<label for="country">Select a country</label>
	<select id="country">
		<option value="0">Select a country</option>
	</select>
	
	<script src="./resources/js/category.js"></script>
</body>
</html>
