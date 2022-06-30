<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<div class="shopping-cart">
		<div class="px-4 px-lg-0">

			<div class="pb-5">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

							<!-- Shopping cart table -->
							<div class="table-responsive">

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
															<div class="p-2 px-3 text-uppercase">Products in
																cart:${count}</div>
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
														<th scope="col" class="border-0 bg-light">
															<div class="py-2 text-uppercase">Xóa</div>
														</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<th scope="row">
															<div class="p-2">
																<img
																	src="${pageContext.request.contextPath}/${rows.src}"
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
																<input class="minus is-form" type="button" value="-">
																<input aria-label="quantity" class="input-qty" max="10"
																	min="1" name="number" type="number" value="${rows.number}">
																<input class="plus is-form" type="button" value="+">
															</div>
														</td>
														<td class="align-middle"><strong>${Math.round(rows.number * rows.price)}</strong></td>
														<td class="align-middle">
														<a <%-- href="${pageContext.request.contextPath}/AddToCart?pid=${rows.id} & action=delete" --%>
															class="text-dark" onclick="showMess(${rows.id})">
																Delete </a></td>
																<td><input name="id" type="hidden" value="${rows.id}"/>${rows.id}</td>

													</tr>
												</tbody>
											</table>
										</c:forEach>
										
										<div class="row">

									<div class="col-5">
										<p>Customer name</p>
										<p>Customer address</p>
										<p>Discount code (if any)</p>
									</div>

									<div class="col-5">
											<table class="table">
												<tr>
													<td><input name="name" /></td>
												</tr>
												<tr>
													<td><input name="address" /></td>
												</tr>
												<tr>
													<td><input name="code" /></td>
												</tr>
											</table>
									</div>
									<div class="col-3">
									<a href="${pageContext.request.contextPath}/PayController?action=id & & action=number">
											<button type="submit" class="btn btn-warning m-3">Submit</button>
											</a>
									</div>

								</div>
									</form>

								</c:if>
								



							</div>
							<!-- End -->
						</div>
					</div>



				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
<script>
function showMess(id){
	var option = confirm('Are you sure to delete?');
	if(option === true){
		let url = "${pageContext.request.contextPath}/AddToCart?action=delete&pid=".concat(id);
		window.location.href = encodeURI(url);
	}
}
</script>
<script>
$('input.input-qty').each(function() {
  var $this = $(this),
    qty = $this.parent().find('.is-form'),
    min = Number($this.attr('min')),
    max = Number($this.attr('max'))
  if (min == 0) {
    var d = 0
  } else d = min
  $(qty).on('click', function() {
    if ($(this).hasClass('minus')) {
      if (d > min) d += -1
    } else if ($(this).hasClass('plus')) {
      var x = Number($this.val()) + 1
      if (x <= max) d += 1
    }
    $this.attr('value', d).val(d)
  })
})
</script>
</html>