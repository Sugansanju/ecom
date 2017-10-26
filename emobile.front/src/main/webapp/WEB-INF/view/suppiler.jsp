<!DOCTYPE html>
<html>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"%>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
    </ul>
    <ul class="nav navbar-nav navbar-Left">
<!--     <li class="active"><a href="#"><span class="glyphicon glyphicon-plus"></span>Add</a> -->
			<li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="glyphicon glyphicon-plus"></span>Add <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="newproduct"><span class="glyphicon glyphicon-plus"></span>Add Product</a></li>
                        <li><a href="newcategory"><span class="glyphicon glyphicon-plus"></span>Add Category</a></li>
                        <li><a href="newsupplier"><span class="glyphicon glyphicon-plus"></span>Add Supplier</a></li>
                        </ul>
                </li>
			<!-- <ul>
				<li class="active"><a href="add/product"><span class="glyphicon glyphicon-plus"></span>Add Product</a>
				<li class="active"><a href="add/category"><span class="glyphicon glyphicon-plus"></span>Add Category</a>
				<li class="active"><a href="add/supplier"><span class="glyphicon glyphicon-plus"></span>Add Supplier</a>
			</ul>
			 -->
		</li>
		<li><a href="update"><span class="glyphicon glyphicon-pencil"></span>Update</a></li>
		<li><a href="delete"><span class="glyphicon glyphicon-trash"></span>Delete</a></li>
        <li><a href="view"><span class="glyphicon glyphicon-list-alt"></span>My Products</a></li>
		
      </ul>

  </div>
</nav>
<div id="site">
	<header id="masthead">
		<center ><h1> <p class="text-primary">Add Details <span class="tagline"></span> </p></h1></center>
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