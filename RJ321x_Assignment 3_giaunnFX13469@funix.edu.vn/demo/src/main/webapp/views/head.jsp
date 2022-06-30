<div class="container-fluid head">
		<div class="header row">
			<div class="col-3 title mt-5">
				<a href="/demo/SearchServlet" style="text-decoration: none"><p class="title-pr">PR321x</p></a>
				<p class="title-welcome">
					Welcome to my <br> website
				</p>
			</div>
			<div class="col-9 row mt-5">
				<div class="col-2 dropdown">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Categories</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="#">Action</a></li>
						<li><a class="dropdown-item" href="#">Another action</a></li>
						<li><a class="dropdown-item" href="#">Something else here</a></li>
					</ul> 
				</div>
				<div class="col-10">
					<form action="search" method="post">
						<div class="input-group mb-3">

							<input type="text" class="form-control"
								placeholder="What are you looking for?"
								aria-label="Recipient's username"
								aria-describedby="button-addon2" name="search">
							<button class="btn btn-outline-secondary" type="submit"
								id="button-addon2">find</button>

						</div>
					</form>
				</div>

			</div>
		</div>
		<div class="row menu">
			<div class="col-3"></div>
			<div class="col-9">
				<nav class="navbar navbar-expand-lg">
					<div class="container-fluid">
						<a class="navbar-brand" href="/demo/SearchServlet" style="color: #fff;"
							onmouseover="this.style.color='orange'"
							onmouseout="this.style.color='white'">Home</a>
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="SearchServlet" style="color: #fff;"
									onmouseover="this.style.color='orange'"
									onmouseout="this.style.color='white'">Product</a></li>
								<li class="nav-item"><a class="nav-link" href="#"
									style="color: #fff;" onmouseover="this.style.color='orange'"
									onmouseout="this.style.color='white'">About us</a></li>
							</ul>
							<ul class="d-flex list-unstyled">
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="/demo/LoginController"><button type="button" onclick="window.location='views/login.jsp'" style="color: #fff; background-color: #293847; border:none;"
									onmouseover="this.style.color='orange'"
									onmouseout="this.style.color='white'">Login</button></a></li>
								<li class="nav-item"><a class="nav-link" href="/demo/views/register.jsp"
									style="color: #fff;" onmouseover="this.style.color='orange'"
									onmouseout="this.style.color='white'">Register</a></li>
									<c:forEach var="item" items="${ls}">
										<li class="nav-item"><a class="nav-link" href="AddToCart?pid=${item.getId()}"
									style="color: #fff;" onmouseover="this.style.color='orange'"
									onmouseout="this.style.color='white'"><img alt="" src="${pageContext.request.contextPath}/image/shoppingcart.gif" width="50" height="50"></a></li>
							
									</c:forEach>
								</ul>
						</div>
					</div>
				</nav>
			</div>
		</div>

	</div>