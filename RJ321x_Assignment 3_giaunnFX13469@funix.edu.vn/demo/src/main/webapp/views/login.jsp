<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	href="${pageContext.request.contextPath}/css/login.css">
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
			<div class="col-2"></div>
			<div class="col-4 form-login">
				<div class="title mt-3 mb-3">Sign in</div>
				<form action="/demo/LoginController" method="get">
					<div class="mb-3">
						<input type="text" class="form-control"
							id="exampleFormControlInput1" placeholder="username" name="username">
					</div>
					<div class="mb-3">
						<input type="password" class="form-control"
							id="exampleFormControlInput1" placeholder="password" name="password">
					</div>
					<div class="mb-3">
						<p class="forgot text-center">Forgot your password ?</p>
					</div>
					<div class="btn-login text-center">
						<button type="submit" class="btn btn-danger">LOGIN</button>
					</div>
					${message}
				</form>


			</div>
			<div class="col-4 form-login text-center bg-welcome">
				<h1>Welcome Back</h1>
				<p>
					To keep conected with us <br> please login with your personal
					<br> info
				</p>
			</div>
			<div class="col-2"></div>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>