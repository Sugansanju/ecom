<!DOCTYPE html>
<html>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"%>
<body>
 <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        <!--   <a class="navbar-brand" href="#"></a> -->
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href=""><i class="glyphicon glyphicon-shopping-cart">Cart</i></a></li>
            <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
         </ul>
        </div>
      </div>
    </nav>
<div id="site">
	<header id="masthead">
		<center ><h1> <p class="text-primary">PRODUCTS<span class="tagline"></span> </p></h1></center>
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
							<form class="add-to-cart" action="cart" method="post">
								<div>
									<label for="qty-1">Quantity</label> <input type="text"
										name="qty-1" id="qty-1" class="qty" value="1" />
								</div>
								<p>
									<input type="submit" value="Add to cart" class="btn" />
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="product?id=${p.pid}"
										role="button" class="btn btn-warning">Details</a>
								</p>
							</form>
						</div>
					</li>					
				</c:forEach>
					
				</ul>
			</div>
		</div>
</body>
</html>	