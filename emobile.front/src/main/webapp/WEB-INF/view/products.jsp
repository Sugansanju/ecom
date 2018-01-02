<!DOCTYPE html>
<html>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"%>
<body>
  <%@include file="navbar.jsp" %>
<div id="site">
	<header id="masthead">
		<center ><h1> <p class="text-primary">PRODUCTS
		<span class="tagline"></span> </p></h1>
		</center>
	</header>
		<div id="content">
			<div id="products">
				<ul>
				<c:forEach items="${products}" var="p">
				<li>
						<div class="product-image">
							<img src="./resource/images/${p.pimage}" alt="" />
						</div>
						<div class="product-description" data-name="${p.pname}"
							data-price="20.00">
							<h3 class="product-name">${p.pname}</h3>
							<p class="product-price">${p.pprice}</p>
							<!-- class="add-to-cart" --> <form action="cart" method="POST">
								<!-- <div>
									<label for="qty-1">Quantity</label> <input type="text" name="txtQuantity" value="" />
								</div>
								<p>
									<p><button type="submit" class="btn btn-warning ">Add to cart<span class="glyphicon glyphicon-shopping-cart"></span>
						</button></p> -->
									<div align="center">
									<a href="product?id=${p.pid}"
										role="button" class="btn btn-warning">Details</a>
										</div>
							</form>
						</div>
					</li>					
				</c:forEach>
			</ul>
			</div>
		</div>
</body>
</html>	