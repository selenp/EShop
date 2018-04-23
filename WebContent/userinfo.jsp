<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Here About You</title>
<link rel="shortcut icon" href="favicon.ico" >
<!--配置Bootstrap-->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!--配置用户表头文件-->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="js/bootstrap.min.js">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/Userinfo.css" rel="stylesheet">
<link href="css/tasp.css" rel="stylesheet">
<link href="css/orderconfirm.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-3.2.1.js"></script>
<link
	href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700'
	rel='stylesheet' type='text/css'>
<style>
</style>
</head>
<body>
	<!--导航栏-->
	<nav class="navbar navbar-inverse navbar-fixed-top"> <jsp:include
		page="header.jsp" flush="true" /> </nav>

	<div class="container">
		<div class="col-lg-10 col-lg-offset-1">
			<!--Navigation-->
			<div class="row w">
				<div class="col-md-3">
					<img class="img-responsive img-circle" src="images/default.jpg" style="margin-top:15px;"/>
				</div>

				<!--Main Content-->
				<div class="col-md-8">
					<div class="tab-content">
						<!--First Tab-->
						<div class="tab-pane active" id="about">
							<h2>${user.username}</h2>
							<hr>
							<h4>Contact Information</h4>
							<table cellspacing="0" cellpadding="0" class="order-table">
								<tbody class="J_Shop">
									<tr class="item">
										<td><grey>Phone</grey></td>
										<td>${user.phone}</td>
									</tr>
									<tr class="item">
										<td><grey>Email</grey></td>
										<td>${user.email}</td>
									</tr>
								</tbody>
							</table>
							<h4>Billing Address</h4>
							<table cellspacing="0" cellpadding="0" class="order-table">
								<tbody class="J_Shop">
									<tr class="item">
										<td><grey>City</grey></td>
										<td>${user.city}</td>
									</tr>
									<tr class="item">
										<td><grey>Street</grey></td>
										<td>${user.street}${user.street}</td>
									</tr>
									<tr class="item">
										<td><grey>Zipcode</grey></td>
										<td>${user.apartment}</td>
									</tr>
								</tbody>
							</table>
						</div>

						<!--Forth Tab-->
						<div class="tab-pane" id="BillingAddress"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script>
		$('#myTab a').click(function(e) {
			e.preventDefault()
			$(this).tab('show')
		})
	</script>

	<!--页脚-->
	<footer
		style="width: 100%;
    position:absolute;
    bottom:0px;
    left:0px;">
	<!-- <jsp:include page="footer.jsp" flush="true" /> -->
	<div class="footer-top" style="background: #272727">
		<div class="container">
			<div class="row" style="margin-top: 20px;">
				<p>
					<font color="white"></font>
				</p>
			</div>
		</div>
	</div>
	</footer>
</body>
</html>