<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Sign In</title>
<link rel="shortcut icon" href="favicon.ico" >
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<style>
body {
	background: url(images/pattern.png)
}
</style>
</head>
<body>
	<!--导航栏-->
	<nav class="navbar navbar-inverse navbar-fixed-top"> <jsp:include
		page="header.jsp" flush="true" /> </nav>
	<!--登陆表单-->
	<h3>Something here</h3>
	<div class="container" style="width: 50%">
		<div class="row">
			<h3>Sign In To GodSpeed</h3>
			<h4>
				<font color="#EE0000">${message}</font>
			</h4>
			<form id="login_form" class="class-inline" action="signin"
				method="post">
				<div class="validate[required]">
					<label for="Username">Username:</label> <input type="text"
						class="form-control" name="username" id="username"
						placeholder="Enter Username"> <label for="Password">Password:</label>
					<input type="password" class="form-control" name="password"
						id="password" placeholder="Enter Password">
				</div>
				<div align="center" style="margin-top: 15px">
					<button type="submit" class="btn btn-info">
						<font color="" #FFFFFF>Sign In</font>
					</button>
				</div>
			</form>
		</div>
	</div>

	<!--页脚-->
	<footer
		style="width: 100%;
    position:absolute;
    bottom:0px;
    left:0px;">
	<jsp:include page="footer.jsp" flush="true" /> </footer>

</body>
</html>