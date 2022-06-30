<%-- <%@page import="webasm3.Users"%> --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">
</head>
<body>
<jsp:include page="head.jsp"></jsp:include>
<div class="container-fluid">
        <div class="row">
            <div class="col-2 left">
                <div class="title text-center">
                    <p class="team-title"><span>Welcome </span></p>
                </div>
                <hr style="background-color: #c3602d;">
                <div class="dasboard">
                    <button type="button" class="btn btn-primary btn-sm mb-3 btn-left"><i class="fa fa-bars"></i> Dashboard</button> <br>   
                </div>
                <div class="manager">
                    <button type="button" class="btn btn-primary btn-sm btn-left"><i class="fa fa-user"></i> Staff Manager</button>
                </div>
                <div class="logout m-3">
                    <a href="/webasm3/LogoutServlet" style="color: #fff; text-decoration: none;"><button type="button" class="btn btn-primary btn-sm btn-left"><i class="fa fa-circle"></i>  Log out</button></a>
                    
                </div>
            
            </div>
                <div class="col-10">
                    <div class="bg-main"></div>
                    <div class="bg-main2">
                        <table class="table table-stripe">
                            <tr class="table-violet">
                                <td class="table-violet" colspan="4">Members of the team</td>
                            </tr>
                            <tr class="table-opacity">
                                <td>ID</td>
                                <td>Name</td>
                                <td>Student ID </td>
                                <td>Class</td>
                            </tr>
                            <tr class="table-opacity">
                                <td>01</td>
                                <td>Giau Nguyen</td>
                                <td>Code 001 </td>
                                <td>UDPM</td>
                            </tr>
                            
                        </table>
                    </div>
                    
                </div>
        </div>

    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>