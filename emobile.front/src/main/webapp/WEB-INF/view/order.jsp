<!DOCTYPE html>
<html>
<%@include file="header.jsp"%>

<body id="checkout-page">
 <%@include file="navbar.jsp" %>

<div id="site">
	<header id="masthead">
		<center><h1><p class="text-primary">PEGASUS GAMES SITE <span class="tagline"></span></p></h1></center>
	</header>
	<div id="content">
		<h1>Your Order</h1>
			<table id="checkout-cart" class="shopping-cart">
			  <thead>
				<tr>
					<th scope="col">Item</th>
					<th scope="col">Quantity</th>
					<th scope="col">Price</th>
				</tr>
			  </thead>
			</table>
		 <div id="pricing">
			<p id="shipping">
				<strong>Shipping</strong>: <span id="sshipping"></span>
			</p>
			<p id="sub-total">
				<strong>Total</strong>: <span id="stotal"></span>
			</p>
		 </div>
		 <div id="user-details">
		 	<h2>Your Data</h2>
		 	<div id="user-details-content"></div>
		 </div>
		 
		 
		 
		 
<!--<form id="paypal-form" action="" method="post">
	<input type="hidden" name="cmd" value="_cart" />
	<input type="hidden" name="upload" value="1" />
	<input type="hidden" name="business" value="" />
        
	<input type="hidden" name="currency_code" value="" />
	<input type="submit" id="paypal-btn" class="btn" value="Pay with PayPal" />
</form>-->
		 
		 
	</div>
	
	

</div>
</body>
</html>	