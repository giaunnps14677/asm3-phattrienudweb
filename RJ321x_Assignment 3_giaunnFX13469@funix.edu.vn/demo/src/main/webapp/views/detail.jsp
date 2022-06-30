<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/detail.css">
<style>
.footer {
	background-color: #222f3c;
	text-align: center;
	color: #fdaa2c;
}
.btn-primary:hover{
	background-color:  #ee8824;
	color: #fff;
}
</style>
</head>

<body>
	<jsp:include page="head.jsp"></jsp:include>

	<div class="container-fluid">
		<div class="row m-5">

        <p class="name">Iphone name</p>
        <hr>
        <div class="col-4">
            <img src="${pageContext.request.contextPath}/${detail.getSrc()}" alt="">
        </div>
        <div class="col-4">
            <p class="price">${detail.getPrice()} vnd</p>
            <p>${detail.getDescription()} </p>
            <button type="button" class="btn btn-primary"><a href="AddToCart?pid=${detail.getId()}&action=add">Add to cart</a></button>
        </div>
        <div class="col-4"></div>
	</div>
	<div class="container-fluid ">
		<nav aria-label="..." class="m-5">
			<ul class="pagination pagination-lg">
				<li class="page-item active" aria-current="page"><span
					class="page-link">1</span></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
			</ul>
		</nav>
	</div>
	<div class="container-fluid footer pt-5 mb-5 pb-5">
		<div class="row">
			<p>
				Copyright 2019 JavaWb 1849 TEAM <br> Contect Us: Member 1 |
				Member 2 | Member 3 | Member 4
			</p>
		</div>

	</div>
</body>
</html>