<!DOCTYPE html>
<html>
<%@include file="header.jsp"%>

<body>
 <%@include file="navbar.jsp" %>
	<header id="masthead">
		<center><h1><p class="text-primary">PEGASUS GAMES SITE <span class="tagline"></span></p></h1></center>
	</header>	
		<div id="content">
		<h1>Your Shopping Cart</h1>	
	</div>
<%-- 		      
     <table class="table table-striped table-hover">
                <thead>
                    <tr>
		<div class="container"> 
		<div class="row">
			<div class="col-md-10">
				
				<div class="col-md-2 panel-heading">
					<b>NAME</b>
				</div>
				<div class="col-md-2 panel-heading">
					<b>QUANTITY</b>
				</div>
				<div class="col-md-2 panel-heading">
					<b>PRICE</b>
				</div>
				<div class="col-md-2 panel-heading">
					<b>TOTAL</b>
				</div>
				<div class="col-md-2 panel-heading">
					<b>ACTION</b>
				</div>
			</div>
		</div>
       </div> 
                   </tr>
 
              </thead> 
              <c:forEach items="${sessionScope['cart'].items}" var="c"> 
              <div class="container"> 
		<div class="row">
			<div class="col-md-10">
				
				<div class="col-md-2">
				<br>
					${c.product.pname}
				</div>
				<div class="col-md-2">
				<br>
					${c.quantity}
				</div>
				<div class="col-md-2">
				<br>
					${c.product.pprice}
				</div>
				<div class="col-md-2">
				<br>
					${c.quantity * c.product.pprice}
				</div>
				<div class="col-md-2">
				<br>
					<a href="updateproduct?id=${p.pid}"><span class="glyphicon glyphicon-edit"></span></a>
					<a href="deleteproduct?id=${p.pid}"><span class="glyphicon glyphicon-trash"></span></a>
				</div>
				</div>
		</div>
		</div>
		</c:forEach> 
            </table> --%>
			
			  <%--  <tbody>
			  <c:forEach items="${sessionScope['cart'].items}" var="c"> 

      <div align="center" class="col-sm-2 panel-body">${c.product.pname}</div>
      <div align="center" class="col-sm-2 panel-body">${c.quantity}</div>
      <div align="center" class="col-sm-2 panel-body">${c.product.pprice}</div>
      <div align="center" class="col-sm-2 panel-body">${c.quantity * c.product.pprice}</div>
      <div align="center" class="col-sm-2 panel-body">
      <a href="updateitem?id=${p.pid}" type="button" class="btn btn-warning btn-sm "  ><span class="glyphicon glyphicon-pencil"></span></a>
      <a href="deleteitem?id=${p.pid}" type="button" class="btn btn-danger btn-sm " ><span class="glyphicon glyphicon-trash"></span></a>
      </div>
     
          </c:forEach> 
			
		
			</tbody>
			</table> --%>
 <%--  <div class="row">  
    <div class="col-sm-10">
      <div class="panel panel-primary">
      <div align="center" class="col-sm-2 panel-heading">Product_Name</div>
      <div align="center" class="col-sm-2 panel-heading">Quantity</div>
      <div align="center" class="col-sm-2 panel-heading">Cost</div>
      <div align="center" class="col-sm-2 panel-heading">Amount</div>
      <div align="center" class="col-sm-2 panel-heading">Action</div>
      </div></div></div>
        <c:forEach items="${sessionScope['cart'].items}" var="c"> 
  <div class="row">  
    <div class="col-sm-10">

      <div align="center" class="col-sm-2 panel-body">${c.product.pname}</div>
      <div align="center" class="col-sm-2 panel-body">${c.quantity}</div>
      <div align="center" class="col-sm-2 panel-body">${c.product.pprice}</div>
      <div align="center" class="col-sm-2 panel-body">${c.quantity * c.product.pprice}</div>
      <div align="center" class="col-sm-2 panel-body">
      <a href="updateitem?id=${p.pid}" type="button" class="btn btn-warning btn-sm "  ><span class="glyphicon glyphicon-pencil"></span></a>
      <a href="deleteitem?id=${p.pid}" type="button" class="btn btn-danger btn-sm " ><span class="glyphicon glyphicon-trash"></span></a>
      </div>
      </div>
      </div>
          </c:forEach>  --%>
          <div class="row">  
          <div class="col-sm-10"> 
			<table class="shopping-cart">
			  <thead>
				<tr>
					<th scope="col" >ID</th>
					<th scope="col" >Item</th>
					<th scope="col" >Quantity</th>
					<th scope="col" >Price</th>
					<th scope="col" >Amount</th>
					<th scope="col" >Action</th>
				</tr>
			  </thead>
			  <tbody>
			 <c:forEach items="${sessionScope['cart'].items}" var="c"> 
			  <tr><th scope="col">${c.product.pid}</th>
			  <th scope="col">${c.product.pname}</th>
			  <th scope="col">${c.quantity}</th>
			  <th scope="col">${c.product.pprice}</th>
			  <th scope="col">${c.quantity * c.product.pprice}</th>
			  <th scope="col"> <a href="<c:url value="/deleteitem"/>?id=${c.product.pid}"
                       class="btn btn-danger" onclick="return confirm('Are you sure?')"><span class="glyphicon glyphicon-trash"></span></a><a href="product?id=${c.product.pid}" type="button" class="btn btn-warning btn-sm "  ><span class="glyphicon glyphicon-pencil"></span></a>
                              
			  </c:forEach>
			  </tbody>
			</table>
			</div>
			</div>
		<div id="content">
			<ul id="shopping-cart-actions">
				<li>
					<a href="./" class="btn">Continue Shopping</a>
				</li>
				<li>
					<a href="checkout" class="btn">Go To Checkout</a>
				</li>
			</ul>
			</div>
</body>
</html>	