<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form"	prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<%@include file="header.jsp"%>

<body>
	 <%@include file="navbar.jsp" %>

	<div id="site">

			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-offset-3">

							<fieldset>

								
									<legend>
										<center>
											<h2>
												<b> Update Product</b>
											</h2>
										</center>
									</legend>
									<br>
							<!-- Text input-->
							<form class="well form-horizontal" action="updateproduct" method="POST" id="update">
                              
                               <input type="hidden" name="pid" value="${product.pid}" >
							
							<div class="form-group">
								<label class="col-md-4 control-label">Product Name</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
										<input type="text" name="pname" id="pname" tabindex="1" class="form-control" placeholder="Product Name" value="${product.pname}" >
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label">Supplier Name</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group"></div>
										<select   class="form-control" name="sid" id="sid" tabindex="1" >								
										
										<c:forEach items="${supplier}" var="s">
										<c:choose>
											<c:when test="${s.sid eq product.sid.sid}">
												<option value="${s.sid}" selected="selected">${s.sname}</option>
											</c:when>
											<c:otherwise>
												<option value="${s.sid}">${s.sname}</option>
											</c:otherwise>											
										</c:choose>
										
										
										</c:forEach>
    									</select>
								</div> 
							</div>
							
							<div class="form-group">
								<label class="col-md-4 control-label">Product Image</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
										<input type="file" name="pimage" id="pimage" tabindex="1" class="form-control" placeholder="Image" value="${product.pimage}">									
									</div>
								</div>
							</div>
                   <div class="form-group">
								<label class="col-md-4 control-label">Category Name</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group"></div>
									<select  name="cid" class="form-control" id="cid" tabindex="1" > 										 										
    																			
    									 <c:forEach items="${categories}" var="c">
    										<c:choose>
    											<c:when test="${c.cid eq product.category.cid }">
    												<option value="${c.cid}" selected>${c.cname}</option>
    											</c:when>
    											<c:otherwise>
    												<option value="${c.cid}">${c.cname}</option>
    											</c:otherwise>
    										</c:choose>    									
										</c:forEach>
    									</select> 
								</div> 
							</div>					<!-- Text input-->
							<div class="form-group">
								<label class="col-md-4 control-label">Product
									Description</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span> -->
										<input type="text" name="pdescrip" id="pdescrip" tabindex="1" class="form-control" placeholder="Description" value="${product.pdescrip}" >
									</div>
								</div>
							</div>
							<!-- Text input-->

							<div class="form-group">
								<label class="col-md-4 control-label">Price</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
												<input type="text" name="pprice" id="pprice" tabindex="1" class="form-control" placeholder="Price"  value="${product.pprice}">
									</div>
								</div>
							</div>
							<!-- Text input-->

							<div class="form-group">
								<label class="col-md-4 control-label">Quantity</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
										<input type="text" name="pquantity" id="pquantity" tabindex="1" class="form-control" placeholder="Quantity"  value="${product.pquantity}">
									</div>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-4 control-label"></label>
								<div class="col-md-4">
									<br>
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
									<!-- <a href="login" role="button" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSubmit<span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a> -->
									<input type="submit" name="update-submit" id="update-submit" tabindex="4" class="form-control btn btn-update" value="Update">
											</div>
											
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
		
	<div id="site">

			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-offset-3">

							<fieldset>

								<!-- Form Name -->
								<form class="well form-horizontal" action="updatecategory"
									method="POST" id="add_form">
									<legend>
										<center>
											<h2>
												<b>Update Category</b>
											</h2>
										</center>
									</legend>
									<br>
<input type="hidden" name="cid" value="${category.cid}" >
									<div class="form-group">
										<label class="col-md-4 control-label">Category Name</label>
										<div class="col-md-4 inputGroupContainer">
											<div class="input-group">
												<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
												<input name="cname" placeholder="Name" class="form-control"
													type="text" value="${category.cname}">

											</div>
										</div>
									</div>
									
									<div class="form-group">
										<label class="col-md-4 control-label"></label>
										<div class="col-md-4">
											<br>
											&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
											<!-- <a href="login" role="button" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSubmit<span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a> -->
											<input type="submit" name="update-submit" id="update-submit" tabindex="4" class="form-control btn btn-update" value="Update">
										</div>
									</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
			<div id="site">

			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-offset-3">

							<fieldset>

								
									<legend>
										<center>
											<h2>
												<b> Update Supplier</b>
											</h2>
										</center>
									</legend>
									<br>
							<!-- Text input-->
							<form class="well form-horizontal" action="updatesupplier" method="POST" id="update">
                              
                               <input type="hidden" name="sid" value="${sup.sid}" >
							
							<div class="form-group">
								<label class="col-md-4 control-label">Supplier Name</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
										<input type="text" name="sname" id="sname" tabindex="1" class="form-control" placeholder="Supplier Name" value="${sup.sname}" >
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label">Email Address</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group"></div>
										<input type="text" name="semail" id="semail" tabindex="1" class="form-control" placeholder="Email Address" value="${sup.semail}" >
								</div> 
							</div>
							
							<div class="form-group">
								<label class="col-md-4 control-label">Contact</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
										<input type="text" name="scontact" id="scontact" tabindex="1" class="form-control" placeholder="Contact" value="${sup.scontact}">									
									</div>
								</div>
							</div>
                   <div class="form-group">
								<label class="col-md-4 control-label">Address</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group"></div>
									<input type="text" name="saddress" id="saddress" tabindex="1" class="form-control" placeholder="Address" value="${sup.saddress}" >
								</div> 
							</div>	
							<div class="form-group">
								<label class="col-md-4 control-label"></label>
								<div class="col-md-4">
									<br>
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
									<!-- <a href="login" role="button" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSubmit<span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a> -->
									<input type="submit" name="update-submit" id="update-submit" tabindex="4" class="form-control btn btn-warning" value="Update">
											</div>
											
								</div>
							</div>
						</fieldset>
					</form>
				</div>
			</div>
		</div>
</body>
</html>
