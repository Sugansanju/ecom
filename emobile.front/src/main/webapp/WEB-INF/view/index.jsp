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
            <li><a href="products"><i class="fa fa-product-hunt"></i>Products</a></li>
      <li><a href="cart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
      <li><a href="register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
          </ul>
        </div>
      </div>
    </nav>
<!-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <div class="collapse navbar-collapse" >
    <ul class="nav navbar-nav">
      <li class="active"><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
    </ul>
    
    <ul class="nav navbar-nav navbar-right">
    <li><a href="products"><i class="fa fa-product-hunt"></i>Products</a></li>
      <li><a href="cart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
    <li><a href="cart"><i class="glyphicon glyphicon-shopping-cart">Cart</i></a></li>
      <li><a href="register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
  </div>
</nav> -->
<body>

<div id="site">
	<header id="masthead">
		<center ><h1> <p class="text-primary">PEGASUS GAMES SITE <span class="tagline"></span> </p></h1></center>
	</header>
	
	<!-- <div id="content">
		<div id="products">
			<ul>
				<li>
					<div class="product-image">
						<img src="./resource/images/dead1.jpg" alt="" />
					</div>
					<div class="product-description" data-name="Dead Space 3 Edition" data-price="20.00">
						<h3 class="product-name">Dead Space 3 Edition</h3>
						<p class="product-price">$20.00</p>
						<form class="add-to-cart" action="cart" method="post">
							<div>
								<label for="qty-1">Quantity</label>
								<input type="text" name="qty-1" id="qty-1" class="qty" value="1" />
							</div>
							<p><input type="submit" value="Add to cart" class="btn" /> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="dead" role="button" class="btn btn-warning" >Details</a></p>
						</form>
					</div>
				</li>
				
				<li>
					<div class="product-image">
						<img src="./resource/images/hit1.jpg" alt="" />
					</div>
					<div class="product-description" data-name="Hitman Absoluation" data-price="10.00">
					 <h3 class="product-name">Hitman Absoluation<br><br></h3>
						<p class="product-price">$10.00</p>
						<form class="add-to-cart" action="cart" method="post">
							<div>
								<label for="qty-2">Quantity</label>
								<input type="text" name="qty-2" id="qty-2" class="qty" value="1" />
							</div>
							<p><input type="submit" value="Add to cart" class="btn" /> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="hitman" role="button" class="btn btn-warning" >Details</a></p>
						</form>
					</div>
				</li>
				
				<li>
					<div class="product-image">
						<img src="./resource/images/longwalk.jpg" alt="" />
					</div>
					<div class="product-description" data-name="A Long Walk To Freedom" data-price="23.00">
						<h3 class="product-name">A Long Walk To Freedom</h3>
						<p class="product-price">$23.00</p>
						<form class="add-to-cart" action="cart" method="post">
							<div>
								<label for="qty-3">Quantity</label>
								<input type="text" name="qty-3" id="qty-3" class="qty" value="1" />
							</div>
							<p><input type="submit" value="Add to cart" class="btn" /> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="longwalk" role="button" class="btn btn-warning" >Details</a></p>
						</form>
					</div>
				</li>
			<li>
					<div class="product-image">
						<img src="./resource/images/oper1.jpg" alt="" />
					</div>
					<div class="product-description" data-name="Operation Falshpoint Red River" data-price="11.12">
						<h3 class="product-name">Operation Falshpoint Red River</h3>
						<p class="product-price">$11.12</p>
						<form class="add-to-cart" action="cart" method="post">
							<div>
								<label for="qty-3">Quantity</label>
								<input type="text" name="qty-3" id="qty-3" class="qty" value="1" />
							</div>
							<p><input type="submit" value="Add to cart" class="btn" /> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="operation" role="button" class="btn btn-warning" >Details</a></p>
						</form>
					</div>
				</li>

			<li>
					<div class="product-image">
						<img src="./resource/images/political.jpg" alt="" />
					</div>
					<div class="product-description" data-name="Politically Incorrect" data-price="22.00">
						<h3 class="product-name">Politically Incorrect<br><br></h3>
						<p class="product-price">$22.00</p>
						<form class="add-to-cart" action="cart" method="post">
							<div>
								<label for="qty-3">Quantity</label>
								<input type="text" name="qty-3" id="qty-3" class="qty" value="1" />
							</div>
							<p><input type="submit" value="Add to cart" class="btn" /> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="dead" role="button" class="btn btn-warning" >Details</a></p>
						</form>
					</div>
				</li>
			
			<li>
					<div class="product-image">
						<img src="./resource/images/bone.jpg" alt="" />
					</div>
					<div class="product-description" data-name="The Bone Bed" data-price="19.99">
						<h3 class="product-name">The Bone Bed<br><br><br></h3>
						<p class="product-price">$19.99</p>
						<form class="add-to-cart" action="cart" method="post">
							<div>
								<label for="qty-3">Quantity</label>
								<input type="text" name="qty-3" id="qty-3" class="qty" value="1" />
							</div>
							<p><input type="submit" value="Add to cart" class="btn" /> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
						<a href="dead" role="button" class="btn btn-warning" >Details</a>
						</p>
						</form>
					</div>
				</li>
		
		
			
			</ul>
		</div>
	</div>
	
	
	
	

</div>

 -->
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