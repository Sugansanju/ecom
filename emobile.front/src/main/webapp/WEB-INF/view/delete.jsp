<!DOCTYPE html>
<html>
<%@include file="header.jsp"%>

<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"></a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#"></a></li>
      <li><a href="#"></a></li>
      <li><a href="#"></a></li>
    </ul>
    <ul class="nav navbar-nav navbar-left">
      <li><a href="suppiler"><span class="glyphicon glyphicon-user"></span>Back</a></li>
<!--       <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
 -->    </ul>
  </div>
</nav>
<div id="site">
	<!-- <header id="masthead">
		<center><h1><p class="text-primary">PEGASUS GAMES SITE <span class="tagline"></p></h1></center>
	</header>   -->
   <div class="container">

    <form class="well form-horizontal" action="del " method="POST"  id="delete_form">
<fieldset>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Product Id</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
 <!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
  <input name="pid" placeholder="Product Id" class="form-control"  type="text">
    </div>
  </div>
</div>


<!-- <div class="form-group">
  <label class="col-md-4 control-label" >Address</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>

 </div>
  </div>
</div>
 -->

       


<!-- Select Basic -->

<!-- Success message -->
<!--<div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Success!.</div>-->

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<!-- <a href="login" role="button" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSubmit<span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a> -->
 <input type="submit" class="btn btn-warning"  name="butSubmit" value="Delete">
  </div>
</div>


</fieldset>
</form>
</div>
    </div><!-- /.container -->
	</div>


</body>
</html>	