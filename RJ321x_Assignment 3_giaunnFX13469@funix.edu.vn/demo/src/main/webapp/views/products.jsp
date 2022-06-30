<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/products.css">
<style>
.footer {
	background-color: #222f3c;
	text-align: center;
	color: #fdaa2c;
}
</style>
</head>

<body>
	<jsp:include page="head.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row">
			<!--             <div class="col-3"> -->
			<%-- 			<jsp:include page="items.jsp"> --%>
			<%-- 				<jsp:param name="image" value="iphone.png" /> --%>
			<%-- 				<jsp:param name="type" value="Cellphone" /> --%>
			<%-- 				<jsp:param name="name" value="Iphone 1 Pro Max 512GB" /> --%>
			<%-- 				<jsp:param name="price" value="$43.99" /> --%>
			<%-- 			</jsp:include> --%>
			<!--             </div> -->

				<c:forEach var="item" items="${ls}">
					<div class="col-3">
						<a href="DetailControl?pid=${item.getId()}">
							<img src="${pageContext.request.contextPath}/${item.getSrc()}" alt="">
						</a>
						<br>
						<p class="title-type-item">${item.getType()}</p>
						<p class="title-name-item">${item.getName()}</p>
						<p class="price">${item.getPrice()}</p>
					</div>
				</c:forEach>


			<!-- 			<div class="col-3"> -->
			<!-- 				<div class="item"> -->
			<%-- 					<img src="${pageContext.request.contextPath}/images/iphone.png" --%>
			<!-- 						alt=""><br> -->
			<!-- 					<p class="title-type-item">Cellphone</p> -->
			<!-- 					<p class="title-name-item">Iphone 1 Pro Max 512GB</p> -->
			<!-- 					<p class="price">$43.99</p> -->
			<!-- 				</div> -->
			<!-- 			</div> -->
			<!-- 			<div class="col-3"></div> -->
			<!-- 			<div class="col-3"> -->
			<!-- 				<div class="item"> -->
			<%-- 					<img src="${pageContext.request.contextPath}/images/iphone.png" --%>
			<!-- 						alt=""><br> -->
			<!-- 					<p class="title-type-item">Cellphone</p> -->
			<!-- 					<p class="title-name-item">Iphone 1 Pro Max 512GB</p> -->
			<!-- 					<p class="price">$43.99</p> -->
			<!-- 				</div> -->
			<!-- 			</div> -->
			<!-- 			<div class="col-3"> -->
			<!-- 				<div class="item"> -->
			<%-- 					<img src="${pageContext.request.contextPath}/images/iphone.png" --%>
			<!-- 						alt=""><br> -->
			<!-- 					<p class="title-type-item">Cellphone</p> -->
			<!-- 					<p class="title-name-item">Iphone 1 Pro Max 512GB</p> -->
			<!-- 					<p class="price">$43.99</p> -->
			<!-- 				</div> -->
			<!-- 			</div> -->
			<!-- 			<div class="col-3"> -->
			<!-- 				<div class="item"> -->
			<%-- 					<img src="${pageContext.request.contextPath}/images/iphone.png" --%>
			<!-- 						alt=""><br> -->
			<!-- 					<p class="title-type-item">Cellphone</p> -->
			<!-- 					<p class="title-name-item">Iphone 1 Pro Max 512GB</p> -->
			<!-- 					<p class="price">$43.99</p> -->
			<!-- 				</div> -->
			<!-- 			</div> -->
			<div class="col-3"></div>
		</div>
	</div>
	<div class="container-fluid ">
		<nav aria-label="..." class="m-5">
			<ul class="pagination pagination-lg">
				<li class="page-item active" aria-current="page"><span
					class="page-link">1</span></li>
				<li class="page-item"><a class="page-link" href="#"> 2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
			</ul>
		</nav>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>