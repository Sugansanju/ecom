<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
         <!--  <a  href="#"> <img src="./resource/images/logo.png" class="img-rounded" width="40" height="30"> </a>
 -->    </div>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-left">
            ${sessionScope['user'].name}
          </ul>
          <ul class="nav navbar-nav navbar-right">
      <c:choose>
      <c:when test="${sessionScope['user'] eq null}">
       <li><a href="register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      
      </c:when>
      <c:when test="${sessionScope['user'] ne null}">
      <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </c:when>
      
      </c:choose>
          </ul>
          
         <c:if test="${sessionScope['user'] ne null}">
          <c:if test="${sessionScope['user'].role eq 'ROLE_ADMIN'}">
							<ul class="nav navbar-nav navbar-Left">
							<a href='<c:url value='/admin/supplier'></c:url>'><span class="glyphicon glyphicon-user"></span>ADMIN ACTIVITY</a>
							
                        </ul>
                        </c:if>
                        </c:if>
                         <ul class="nav navbar-nav navbar-right">
                          <c:if test="${sessionScope['user'].role ne 'ROLE_ADMIN'}">
                          <li><a href="products"><i class="fa fa-product-hunt"></i>Products</a></li>
							<li><a href="cart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
                       
                         </c:if>
                        </ul>  
     </div>
     </div>
     </nav>
     <!-- <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="glyphicon glyphicon-plus"></span>ADMIN ACTIVITY<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="newproduct"><span class="glyphicon glyphicon-plus"></span>Product</a></li>
                        <li><a href="newcategory"><span class="glyphicon glyphicon-plus"></span>Category</a></li>
                        <li><a href="newsupplier"><span class="glyphicon glyphicon-plus"></span>Add Supplier</a></li>
                        </ul>
                        </li> -->
    