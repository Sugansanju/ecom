<!DOCTYPE html>
<html>
<%@include file="header.jsp"%>

<body>
 <%@include file="navbar.jsp" %>
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
							<img id="item-display" src="./resource/images/${product.pimage}" alt=""></img>
						</center>
					</div>
					
					
				</div>
					
				
					<div class="details col-sm-4">
						<h3 class="product-title"><b><i>${product.pname}</i></b></h3>

						<p class="product-description">${product.pdescrip}</p>
						<h4 class="release-date"><b>Initial release date:</b> 5 February 2013</h4>
						<h4 class="developer"><b>Developer:</b> Visceral Games</h4>
						<h4 class="price"><b>current price: </b><span>${product.pprice}</span></h4>
						
						
						<div class="action">
							<div data-name="Dead Space 3 Edition" data-price="20.00">
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