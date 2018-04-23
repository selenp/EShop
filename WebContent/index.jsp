<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>GodSpeed Film Store</title>
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
	background: url(images/bg.jpg);
	background-size: cover;
	background-attachment: fixed
}
</style>
</head>
<body>
	<!--导航栏-->
	<nav class="navbar navbar-inverse"> 
	<jsp:include page="header.jsp" flush="true" /> 
	</nav>
	<!--轮播-->
	
    
	<div id="myCarousel" class="carousel slide">
		<!-- 轮播（Carousel）指标 -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>
		<!-- 轮播（Carousel）项目 -->
		<div class="carousel-inner">
			<div class="item active">
				<img src="images/Carousel1.jpg" alt="First slide">
			</div>
			<div class="item">
				<img src="images/Carousel2.jpg" alt="Second slide">
			</div>
			<div class="item">
				<img src="images/Carousel3.jpg" alt="Third slide">
			</div>
			<div class="item">
				<img src="images/Carousel4.jpg" alt="Fourth slide">
			</div>
		</div>
		<!-- 轮播（Carousel）导航 -->
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	
	
	<!--正文-->
	
	
	
	
	
	
	
	
	
	

	<!--页脚-->
	<footer> <jsp:include page="footer.jsp" flush="true" /> </footer>
</body>
</html>