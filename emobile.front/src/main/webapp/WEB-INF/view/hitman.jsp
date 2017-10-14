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
      <!--<li><a href="sin"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>-->
      <li><a href="index.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
<div id="site">
	<header id="masthead">
		<center><h1><p class="text-primary">PEGASUS GAMES SITE <span class="tagline"></p></h1></center>
	</header> 
	<div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
				<div class="col-md-6">
					<div class="product col-sm-3 service-image-left">
                    
						<center>
							<img id="item-display" src="images\hit.jpg" alt=""></img>
						</center>
					</div>
					
					
				</div>
					
				
					<div class="details col-md-6">
						<h3 class="product-title"><b><i>Hitman Absoluation Professional Edition</i></b></h3>

						<p class="product-description">Hitman: Absolution is a stealth thriller video game developed by IO Interactive and published by Square Enix. </p>
						<h4 class="release-date"><b>Initial release date:</b> 20 November 2012</h4>
						<h4 class="developer"><b>Developer:</b>  IO Interactive, Nixxes Software BV</h4>
						<h4 class="price"><b>current price: </b><span>$10.00</span></h4>
						
						
						<div class="action">
							<div data-name="Hitman Absoluation Professional Edition" data-price="10.00">
					<!--<h3 class="product-name">Dead Space 3 Edition</h3>
						<p class="product-price">$20.00</p>-->
						<form class="add-to-cart" action="cart.jsp" method="post">
							<div>
								<label for="qty-1">Quantity</label>
								<input type="text" name="qty-1" id="qty-1" class="qty" value="1" />
							</div>
							<p><input type="submit" value="Add to cart" class="btn" /></p>
						</form>
					</div>
				</li>
						</div>
					</div>
			</div> 
		</div>
	</div>
</div>
</div>
 
</div>
	</div>


</body>
</html>	