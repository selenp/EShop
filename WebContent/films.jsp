<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>${typeStr} Films</title>
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
	<nav class="navbar navbar-inverse navbar-fixed-top"> <jsp:include
		page="header.jsp" flush="true" /> </nav>
	<h3>Something Here</h3>
	<!--板块1-->
	<c:forEach items="${films}" var="film">
		<div class="jumbotron well">
			<h1>
				<img src="images/${film.image}" /> ${film.title}
			</h1>
			<p>
				<button type="button" class="btn btn-warning">$${film.price}(SD)</button>
				${film.level} | ${film.duration} | ${film.tags} | ${film.date} (USA)
			</p>
			<table class="table table-dark table-striped">
				<tbody>
					<tr>
						<td><span class="badge badge-secondary">Introduction:</span>
							${film.introduction}</td>
					</tr>
					<tr>
						<td><span class="badge badge-secondary">Directors:</span>
							${film.directors}</td>
					</tr>
					<tr>
						<td><span class="badge badge-secondary">Writers:</span>
							${film.writers}</td>
					</tr>
					<tr>
						<td><span class="badge badge-secondary">Stars:</span>
							${film.stars}</td>
					</tr>
				</tbody>
			</table>
			<p>
				<c:choose>
					<c:when test="${uid != null}">
						<a class="btn btn-primary btn-large" href="addCart?fid=${film.id}">Add to Cart</a>
					</c:when>
					<c:otherwise>
						<a class="btn btn-primary btn-large" href="signin.jsp">Login to add</a>
					</c:otherwise>
				</c:choose>
				
				
			</p>
		</div>
	</c:forEach>

	<!--页脚-->
	<footer> <jsp:include page="footer.jsp" flush="true" /> </footer>

</body>
</html>
