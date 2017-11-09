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

					<form class="well form-horizontal" action="newproduct"
						method="POST" id="add_form">
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<!-- enctype="multipart/form-data" -->
						<fieldset>
							<!-- Form Name -->
							<legend>
								<center>
									<h2>
										<b> Add Products </b>
									</h2>
								</center>
							</legend>
							<br>

							<!-- Text input-->
							

							
							<div class="form-group">
								<label class="col-md-4 control-label">Product Name</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
										<input name="pname" placeholder="Product Name"
											class="form-control" type="text">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-4 control-label">Supplier Name</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group"></div>
									<select   class="form-control" name="sid" id="sid" tabindex="1" placeholder="Select Supplier">
    									 <c:forEach items="${supplier}" var="s">
      									<option value="${s.sid}">${s.sname}</option>
										</c:forEach>
    									</select>
								</div> 
							</div>
							
							<div class="form-group">
								<label class="col-md-4 control-label">Product Image</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
										<input name="pimage" placeholder="Image" class="form-control"
											type="file">
									</div>
								</div>
							</div>
                    <div class="form-group">
								<label class="col-md-4 control-label">Category Name</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group"></div>
									<select   class="form-control" name="cid" id="cid" tabindex="1" placeholder="Select ">
    									 <c:forEach items="${categories}" var="c">
      									<option value="${c.cid}">${c.cname}</option>
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
										<input name="pdescrip" placeholder="Description"
											class="form-control" type="text">
									</div>
								</div>
							</div>
							<!-- Text input-->

							<div class="form-group">
								<label class="col-md-4 control-label">Price</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
										<input name="pprice" placeholder="Price" class="form-control"
											type="text">
									</div>
								</div>
							</div>
							<!-- Text input-->

							<div class="form-group">
								<label class="col-md-4 control-label">Quantity</label>
								<div class="col-md-4 inputGroupContainer">
									<div class="input-group">
										<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
										<input name="pquantity" placeholder="Quantity"
											class="form-control" type="text">
									</div>
								</div>
							</div>

							<div class="form-group">
								<label class="col-md-4 control-label"></label>
								<div class="col-md-4">
									<br>
									&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
									<!-- <a href="login" role="button" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSubmit<span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a> -->
									<input type="submit" class="btn btn-warning" name="butSubmit"
										value="Add">
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

						<form class="well form-horizontal" action="admin/newcategory "
							method="POST" id="add_form">
							<!-- enctype="multipart/form-data" -->
							<fieldset>

								<!-- Form Name -->
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
									<legend>
										<center>
											<h2>
												<b> Add Category</b>
											</h2>
										</center>
									</legend>
									<br>

									<div class="form-group">
										<label class="col-md-4 control-label">Category Name</label>
										<div class="col-md-4 inputGroupContainer">
											<div class="input-group">
												<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
												<input name="cname" placeholder="Name" class="form-control"
													type="text">

											</div>
										</div>
									</div>
									<!-- Text input-->

									<!-- <div class="form-group">
										<label class="col-md-4 control-label">Category
											Description</label>
										<div class="col-md-4 inputGroupContainer">
											<div class="input-group">
												 <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
												<input name="cdesc" placeholder="Description"
													class="form-control" type="text">
											</div>
										</div>
									</div> -->
									<div class="form-group">
										<label class="col-md-4 control-label"></label>
										<div class="col-md-4">
											<br>
											&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
											<!-- <a href="login" role="button" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSubmit<span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a> -->
											<input type="submit" class="btn btn-warning" name="butSubmit"
												value="Add">
										</div>
									</div>
							</fieldset>
						</form>
					</div>
				</div>
			</div>
			</div>
			</div>

			<div id="site">

				<div class="container">
					<div class="row">
						<div class="col-md-6 col-sm-offset-3">

							<form class="well form-horizontal" action="admin/newsupplier "
								method="POST" id="add_form">
								<!-- enctype="multipart/form-data" -->
								<fieldset>

									
										<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
										<legend>
											<center>
												<h2>
													<b> Add Supplier </b>
												</h2>
											</center>
										</legend>
										<br>
										<!-- Text input-->

										<div class="form-group">
											<label class="col-md-4 control-label">Name</label>
											<div class="col-md-4 inputGroupContainer">
												<div class="input-group">
												
													<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
													<input name="sname" placeholder="Name" class="form-control"
														type="text">
												</div>
											</div>
										</div>

										<!-- Text input-->
										<div class="form-group">
											<label class="col-md-4 control-label">Email Address</label>
											<div class="col-md-4 inputGroupContainer">
												<div class="input-group">
													<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span> -->
													<input name="semail" placeholder="Email Address"
														class="form-control" type="text">
												</div>
											</div>
										</div>
										<!-- Text input-->

										<div class="form-group">
											<label class="col-md-4 control-label">Contact</label>
											<div class="col-md-4 inputGroupContainer">
												<div class="input-group">
													<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
													<input name="scontact" placeholder="Contact"
														class="form-control" type="text">
												</div>
											</div>
										</div>
										<!-- Text input-->

										<div class="form-group">
											<label class="col-md-4 control-label">Address</label>
											<div class="col-md-4 inputGroupContainer">
												<div class="input-group">
													<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
													<input name="saddress" placeholder="Address"
														class="form-control" type="text">
												</div>
											</div>
										</div>

										<div class="form-group">
											<label class="col-md-4 control-label"></label>
											<div class="col-md-4">
												<br>
												&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
												<!-- <a href="login" role="button" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSubmit<span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a> -->
												<input type="submit" class="btn btn-warning"
													name="butSubmit" value="Add">
											</div>
										</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
				</div>
				</div>
			
</body>
</html>



