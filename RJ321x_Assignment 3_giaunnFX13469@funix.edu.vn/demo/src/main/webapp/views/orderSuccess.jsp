<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

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
	<c:set var="shop" value="${sessionScope.cart}" />
	<c:if test="${not empty shop}">
		<form action="/demo/PayController">
			<c:set var="count" value="0" />
			<c:forEach var="rows" items="${sessionScope.cart.items}">
				<c:set var="count" value="${count + 1}" />

				<table class="table">
					<thead>
						<tr>
							<th scope="col" class="border-0 bg-light">
								<div class="p-2 px-3 text-uppercase">Ordered products:</div>
							</th>
							<th scope="col" class="border-0 bg-light">
								<div class="py-2 text-uppercase">Price</div>
							</th>
							<th scope="col" class="border-0 bg-light">
								<div class="py-2 text-uppercase">Quantity</div>
							</th>
							<th scope="col" class="border-0 bg-light">
								<div class="py-2 text-uppercase">Amount</div>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">
								<div class="p-2">
									<img src="${pageContext.request.contextPath}/${rows.src}"
										alt="" width="70" class="img-fluid rounded shadow-sm">
									<div class="ml-3 d-inline-block align-middle">
										<h5 class="mb-0">
											<a href="#" class="text-dark d-inline-block">${rows.name}</a>
										</h5>
										<span class="text-muted font-weight-normal font-italic"></span>
									</div>
								</div>
							</th>
							<td class="align-middle"><strong>${rows.price}</strong></td>
							<td>
								<div class="buttons_added">
									<input class="minus is-form" type="button" value="-"> <input
										aria-label="quantity" class="input-qty" max="10" min="1"
										name="" type="number" value="${rows.number}"> <input
										class="plus is-form" type="button" value="+">
								</div>
							</td>
							<td class="align-middle"><strong>${Math.round(rows.number * rows.price)}</strong></td>

						</tr>
					</tbody>
				</table>
			</c:forEach>
		</form>
		</c:if>
		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>