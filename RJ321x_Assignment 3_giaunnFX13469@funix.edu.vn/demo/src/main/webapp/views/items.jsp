<div class="col-3">
<div class="item">
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:forEach var="item" items="ls">
	<img src="${pageContext.request.contextPath}/images/${item.src}" alt=""><br>
	<p class="title-type-item"> ${item.type} </p>
	<p class="title-name-item">${item.name}</p>
	<p class="price">${item.price}</p>
</c:forEach>
	
</div>
</div>