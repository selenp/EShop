<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Cart</title>
<link rel="shortcut icon" href="favicon.ico">
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

	<div id="page">
		<div id="content" class="grid-c">
			<c:if test="${stauts != null}">
				<h3>${message}</h3>
			</c:if>
			<table cellspacing="0" cellpadding="0" class="order-table">
				<thead>
					<tr>
						<th class="s-total">TITLE&PRICE
							<hr />
						</th>
						<th class="s-total">RELEASE DATE
							<hr />
						</th>
						<th class="s-total">DURATION
							<hr />
						</th>
						<th class="s-total">PAY DATE
							<hr />
						</th>
						<th class="s-total">OPERATION
							<hr />
						</th>
					</tr>
				</thead>
				<tbody class="J_Shop">
					<c:forEach items="${page.result}" var="item">
						<tr class="item">
							<td class="s-title"><img src="images/${item.image}"
								class="itempic">${item.title} <br> <span>$${item.price}</span></td>
							<td class="s-title">${item.date}</td>
							<td class="s-title">${item.duration}</td>
							<td class="s-title">${item.time}</td>
							<td class="s-title"><a href="remove?rid=${item.rid}">REMOVE</a></td>
						</tr>
					</c:forEach>
					<!-- 分页行 -->
					<tr class="shop-total blue-line">
						<td colspan="1"><a href="pay"><button type="button"
									class="btn btn-warning">Checkout</button></a></td>
						<td colspan="4">
							<div id="pagination">
								<c:if test="${page.totalPages != 0 && page.currentPage != 1}">
									<a href="record?type=0&pageNo=${page.currentPage - 1}"
										class="btn">Previous</a>
								</c:if>
								<c:choose>
									<c:when test="${page.currentPage < 6}">
										<c:choose>
											<c:when test="${page.totalPages > 10}">
												<c:forEach var="item" varStatus="status" begin="1" end="10">
													<c:choose>
														<c:when test="${status.count == page.currentPage}">
															<a href="record?type=0&pageNo=${status.count}"
																class="btn active">${status.count}</a>
														</c:when>
														<c:otherwise>
															<a href="record?type=0&pageNo=${status.count}"
																class="btn">${status.count}</a>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<c:forEach var="item" varStatus="status" begin="1"
													end="${page.totalPages}">
													<c:choose>
														<c:when test="${status.count == page.currentPage}">
															<a href="record?type=0&pageNo=${status.count}"
																class="btn active">${status.count}</a>
														</c:when>
														<c:otherwise>
															<a href="record?type=0&pageNo=${status.count}"
																class="btn">${status.count}</a>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</c:when>
									<c:otherwise>
										<c:choose>
											<c:when test="${page.totalPages > page.currentPage + 4}">
												<c:forEach var="item" varStatus="status"
													begin="${page.currentPage - 5}"
													end="${page.currentPage + 4}">
													<c:choose>
														<c:when test="${status.count == page.currentPage}">
															<a href="record?type=0&pageNo=${status.count}"
																class="btn active">${status.count}</a>
														</c:when>
														<c:otherwise>
															<a href="record?type=0&pageNo=${status.count}"
																class="btn">${status.count}</a>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<c:forEach var="item" varStatus="status"
													begin="${page.currentPage - 5}" end="${page.totalPages}">
													<c:choose>
														<c:when test="${status.count == page.currentPage}">
															<a href="record?type=0&pageNo=${status.count}"
																class="btn active">${status.count}</a>
														</c:when>
														<c:otherwise>
															<a href="record?type=0&pageNo=${status.count}"
																class="btn">${status.count}</a>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</c:otherwise>
								</c:choose>
								<c:if
									test="${page.totalPages != 0 && page.currentPage != page.totalPages}">
									<a href="record?type=0&pageNo=${page.currentPage + 1}"
										class="btn">Next</a>
								</c:if>
							</div>
						</td>
					</tr>
					<!-- 分页行end -->
				</tbody>
			</table>
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