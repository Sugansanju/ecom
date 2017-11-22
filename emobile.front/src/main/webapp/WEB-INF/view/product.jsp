<!DOCTYPE html>
<html>
<%@include file="header.jsp"%>

<body>
 <%@include file="navbar.jsp" %>
<div id="site">
	<header id="masthead">
		<center><h1><p class="text-primary">PEGASUS GAMES SITE <span class="tagline"></p></h1></center>
	</header>
	 
    <form action="addToCart" method="get">
	<div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
				<div class="col-md-6">
				   <input type="hidden" name="id" value="${product.pid}" />
					
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
						<h4 class ="quantity"	><b>Quantity</b><input type="text" name="txtQuantity" value="" /></h4>
						
							
								
							
							<p><button type="submit" class="btn btn-warning ">Add to cart<span class="glyphicon glyphicon-shopping-cart"></span>
						</button></p>
					
					</div>
			
						</div>
					</div>
					
			</div> 
			
		</div>
		</form>
	</div>

 


</body>
</html>	