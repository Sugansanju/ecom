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
<form class="well form-horizontal" action="cupdate" method="POST" id="update_form">
									<legend>
										<center>
											<h2>
												<b> Category Update</b>
											</h2>
										</center>
									</legend>
									<br>
                          <fieldset>
                           <input type="hidden" name="cid" value="${category.pid}" >
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
</div>
</body>
</html>
