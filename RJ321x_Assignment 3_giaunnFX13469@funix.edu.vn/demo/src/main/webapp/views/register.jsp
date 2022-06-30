<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/register.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/products.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/head.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/footer.css">
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
<div class="conainer-fluid">
        <div class="row">
            <div class="col-4"></div>
            
            <div class="col-4 form-register">
            <form action="/demo/AccountController">
            
            <div class="title">
                    <p>Register</p>
                </div>
                Email <input name="mail" value="" /><br>
                <hr>
                Password <input name="pass" value="" /><br>
                <hr>
                Username <input name="username" value="" /><br>
                <hr>
                Address <input name="address" value="" /><br>
                <hr>
                Phone number <input name="phoneNumber" value="" /><br>
                <hr>
                
                <div class="btn-register">
                    <button type="submit">Register</button>
                </div>
                
            </form>
            </div>
                
            
            <div class="col-4"></div>
        </div>

    </div>	
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>