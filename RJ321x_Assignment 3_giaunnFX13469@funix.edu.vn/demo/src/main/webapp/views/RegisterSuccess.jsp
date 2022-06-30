
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
 h3{
 	text-align: center;
 }
</style>
</head>
<body>
	<h3>Thành công</h3>
	<jsp:include page="head.jsp"></jsp:include>
	<h3>Register success</h3>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
