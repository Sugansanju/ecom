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

							<form class="well form-horizontal" action="supdate"  method="POST" id="update_form">
								<!-- enctype="multipart/form-data" -->
								<fieldset>
										<legend>
											<center>
												<h2>
													<b>Update Supplier Details </b>
												</h2>
											</center>
										</legend>
										<br>
										<!-- Text input-->
                                     
                               <input type="hidden" name="pid" value="${category.cid}" >
							
										<div class="form-group">
											<label class="col-md-4 control-label">Name</label>
											<div class="col-md-4 inputGroupContainer">
												<div class="input-group">
													<!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
													<input name="sname" placeholder="Name" class="form-control" type="text" value="${supplier.sname}">
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
														class="form-control" type="text" value="${supplier.semail}">
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
														class="form-control" type="text" value="${supplier.scontact}">
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
														class="form-control" type="text" value="${supplier.saddress }">
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
													name="butSubmit" value="Update">
											</div>
										</div>
								</fieldset>
							</form>
						</div>
					</div>
				</div>
				</div>
				</body>
				</html>