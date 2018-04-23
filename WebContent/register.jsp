<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Join GodSpeed!</title>
<link rel="shortcut icon" href="favicon.ico" >
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="js/jquery-3.2.1.js"></script>
<script src="js/jquery.validationEngine.js"></script>
<script src="js/AddressValidationMethod.js"></script>
<style>
body {
	background: url(images/pattern.png);
}
</style>
</head>
<body>
	<!--导航栏-->
	<nav class="navbar navbar-inverse navbar-fixed-top"> <jsp:include
		page="header.jsp" flush="true" /> </nav>
	<!--注册表单-->
	<h3>Something here</h3>
	<div class="container" style="width: 50%">
		<div class="row">
			<form id="register_form" class="class-inline" action="signup" method="post">
				<h3>User Information</h3>
				<div class="validate[required]">
					<label for="Username">Username:</label>
					<label id="label_username" style="font-color:#EE0000"></label> 
					<input type="text" class="form-control" name="username" id="username" placeholder="Enter Username" onblur="checkName()"> 
					<label for="Password">Password:</label>
					<input type="password" class="form-control" name="password" id="password" placeholder="Enter Password"> 
					<label for="Phone">Phone:</label> 
					<input type="number" class="form-control" name="phone" id="phone" placeholder="Enter Phone Number">
				</div>
				<h3>Billing Address</h3>
				<div class="validate[required]">
					<label for="email">Email:</label> 
					<input type="text" class="form-control" name="email" id="email" placeholder="Enter Email"> 
					<label for="city">City:</label>
					<input type="text" class="form-control" name="city" id="city" placeholder="Enter City"> 
					<label for="street">Street:</label>
					<input type="text" class="form-control" name="street" id="street" placeholder="Enter Street"> 
					<label for="apartment">Apartment:</label>
					<input type="text" class="form-control" name="apartment" id="apartment" placeholder="Enter Apartment">
				</div>
				<div align="center" style="margin-top: 15px">
						<button type="button" class="btn btn-info" onclick="Check()">Submit</button>
				</div>
			</form>
		</div>
	</div>



	<!--页脚-->
	<footer style="width: 100%;position:absolute;bottom:0px;left:0px;">
	<jsp:include page="footer.jsp" flush="true" /> </footer>

</body>
</html>