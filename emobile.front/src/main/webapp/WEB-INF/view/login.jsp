<!DOCTYPE html>
<html>
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
    <ul class="nav navbar-nav navbar-right">
     <!-- <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>-->
      <li><a href="index"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
<div id="site">
	<header id="masthead">
		<center><h1> <p class="text-primary">PEGASUS GAMES SITE <span class="tagline"></p> </h1> </center>
	</header>
	  <div class="wrapper">
    <form class="form-signin" action="validate" method="POST">       
      <h2 class="form-signin-heading">Please login</h2>
      <input type="text" class="form-control" name="txtemail" placeholder="Email Address" required=" " autofocus=" " />
      <input type="password" class="form-control" name="txtpassword" placeholder="Password" required=" " />      
      <label class="checkbox">
        <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me
      </label>
      <input type="submit" class="btn btn-lg btn-primary btn-block" name="butsubmit" value= "Login">
      <!-- <a href="index" class="btn btn-lg btn-primary btn-block" type="submit">Login</a>   --> 
    </form>
  </div>
<!--	<div id="content">
		<div id="products">
			<ul>
				<li>
					<div class="product-image">
						<img src="images/dead1.jpg" alt="" />
					</div>
					<div class="product-description" data-name="Dead Space 3 Edition" data-price="20.00">
						<h3 class="product-name">Dead Space 3 Edition</h3>
						<p class="product-price">$20.00</p>
						<form class="add-to-cart" action="cart.jsp" method="post">
							<div>
								<label for="qty-1">Quantity</label>
								<input type="text" name="qty-1" id="qty-1" class="qty" value="1" />
							</div>
							<p><input type="submit" value="Add to cart" class="btn" /></p>
						</form>
					</div>
				</li>
				
				<li>
					<div class="product-image">
						<img src="images/hit1.jpg" alt="" />
					</div>
					<div class="product-description" data-name="Hitman Absoluation" data-price="10.00">
						<h3 class="product-name">Hitman Absoluation</h3>
						<p class="product-price">$10.00</p>
						<form class="add-to-cart" action="cart.jsp" method="post">
							<div>
								<label for="qty-2">Quantity</label>
								<input type="text" name="qty-2" id="qty-2" class="qty" value="1" />
							</div>
							<p><input type="submit" value="Add to cart" class="btn" /></p>
						</form>
					</div>
				</li>
				
				<li>
					<div class="product-image">
						<img src="images/longwalk.jpg" alt="" />
					</div>
					<div class="product-description" data-name="A Long Walk To Freedom" data-price="23.00">
						<h3 class="product-name">A Long Walk To Freedom</h3>
						<p class="product-price">$23.00</p>
						<form class="add-to-cart" action="cart.jsp" method="post">
							<div>
								<label for="qty-3">Quantity</label>
								<input type="text" name="qty-3" id="qty-3" class="qty" value="1" />
							</div>
							<p><input type="submit" value="Add to cart" class="btn" /></p>
						</form>
					</div>
				</li>
			<li>
					<div class="product-image">
						<img src="images/oper1.jpg" alt="" />
					</div>
					<div class="product-description" data-name="Operation Falshpoint Red River" data-price="11.12">
						<h3 class="product-name">Operation Falshpoint Red River</h3>
						<p class="product-price">$11.12</p>
						<form class="add-to-cart" action="cart.jsp" method="post">
							<div>
								<label for="qty-3">Quantity</label>
								<input type="text" name="qty-3" id="qty-3" class="qty" value="1" />
							</div>
							<p><input type="submit" value="Add to cart" class="btn" /></p>
						</form>
					</div>
				</li>

			<li>
					<div class="product-image">
						<img src="images/political.jpg" alt="" />
					</div>
					<div class="product-description" data-name="Politically Incorrect" data-price="22.00">
						<h3 class="product-name">Politically Incorrect</h3>
						<p class="product-price">$22.00</p>
						<form class="add-to-cart" action="cart.jsp" method="post">
							<div>
								<label for="qty-3">Quantity</label>
								<input type="text" name="qty-3" id="qty-3" class="qty" value="1" />
							</div>
							<p><input type="submit" value="Add to cart" class="btn" /></p>
						</form>
					</div>
				</li>
			
			<li>
					<div class="product-image">
						<img src="images/bone.jpg" alt="" />
					</div>
					<div class="product-description" data-name="The Bone Bed" data-price="19.99">
						<h3 class="product-name">The Bone Bed</h3>
						<p class="product-price">$19.99</p>
						<form class="add-to-cart" action="cart.jsp" method="post">
							<div>
								<label for="qty-3">Quantity</label>
								<input type="text" name="qty-3" id="qty-3" class="qty" value="1" />
							</div>
							<p><input type="submit" value="Add to cart" class="btn" /></p>
						</form>
					</div>
				</li>
		
			
			</ul>
		</div>
	</div>-->
	
	

</div>


</body>
</html>	