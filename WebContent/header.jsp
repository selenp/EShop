<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title></title>
</head>
<body>
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp">GodSpeed</a>
		</div>
		<ul class="nav navbar-nav">
            <li><a href="films?type=0">Marvel</a></li>
            <li><a href="films?type=1">DC</a></li>
            <li><a href="films?type=2">Others</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
		<c:choose>
			<c:when test="${flag == true}">
				<li><a href="userinfo"><span class="glyphicon glyphicon-user"></span> ${username}</a></li>
				<li><a href="record?type=0"><span class="glyphicon glyphicon-film"></span> Cart</a></li>
				<li><a href="record?type=1"><span class="glyphicon glyphicon-list"></span> History</a></li>
				<li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
			</c:when>
			<c:otherwise>
				<li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="signin.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</c:otherwise>
		</c:choose>
		</ul>
	</div>
</body>
</html>