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
        <!--   <a class="navbar-brand" href="#"></a> -->
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
          ${sessionScope['email']}
      <c:choose>
      <c:when test="${sessionScope['email'] eq null}">
       <li><a href="register"><span class="glyphicon glyphicon-user"></span>Register</a></li>
      <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </c:when>
      <c:when test="${sessionScope['email'] ne null}">
      <li><a href="products"><i class="fa fa-product-hunt"></i>Products</a></li>
      <li><a href="cart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
      <li><a href="logout"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
      </c:when>
      </c:choose>
          </ul>
          
          <ul class="nav navbar-nav navbar-Left">
			<li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#"><span class="glyphicon glyphicon-plus"></span>Add <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li><a href="newproduct"><span class="glyphicon glyphicon-plus"></span>Add Product</a></li>
                        <li><a href="newcategory"><span class="glyphicon glyphicon-plus"></span>Add Category</a></li>
                        <li><a href="newsupplier"><span class="glyphicon glyphicon-plus"></span>Add Supplier</a></li>
      </ul>
          
        </div>
      </div>
    </nav>