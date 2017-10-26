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
      <li><a href="suppiler" class="btn btn-info btn-lg">
          <span class="glyphicon glyphicon-chevron-left"></span>>Back</a></li>
<!--<li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->   
 </ul>
  </div>
</nav>

<div id="site">

   <div class="container">
   <div class="row">
			<div class="col-md-6 col-sm-offset-3">

    <form class="well form-horizontal" action="newproduct" method="POST"  id="add_form" ><!-- enctype="multipart/form-data" -->
<fieldset>

<!-- Form Name -->
<legend><center><h2><b> Add Products </b></h2></center></legend><br>

<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Product Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
   <!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
  <input name="pname" placeholder="Product Name" class="form-control"  type="text">
    </div>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label" >Product Image</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
 <!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
  <input name="pimage" placeholder="Image" class="form-control"  type="file">
    </div>
  </div>
</div>
<!-- Text input-->
       <div class="form-group">
  <label class="col-md-4 control-label">Product Description</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
       <!--  <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span> -->
  <input name="pdescrip" placeholder="Description" class="form-control"  type="text">
    </div>
  </div>
</div>
<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Price</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
 <!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
  <input name="pprice" placeholder="Price" class="form-control"  type="text">
    </div>
  </div>
</div>
<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Quantity</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
 <!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
  <input name="pquantity" placeholder="Quantity" class="form-control"  type="text">
    </div>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<!-- <a href="login" role="button" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSubmit<span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a> -->
 <input type="submit" class="btn btn-warning"  name="butSubmit" value="Add">
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

    <form class="well form-horizontal" action="newcategory " method="POST"  id="add_form" ><!-- enctype="multipart/form-data" -->
<fieldset>

<!-- Form Name -->
<form class="well form-horizontal" action="newcategory" method="POST"  id="add_form" >
<legend><center><h2><b> Add Category</b></h2></center></legend><br>

<div class="form-group">
  <label class="col-md-4 control-label" >Category Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
 <!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
  <input name="cname" placeholder="Name" class="form-control"  type="text">
    </div>
  </div>
</div>
<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Category Description</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
 <!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
  <input name="cdesc" placeholder="Description" class="form-control"  type="text">
    </div>
  </div>
</div>
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<!-- <a href="login" role="button" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSubmit<span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a> -->
 <input type="submit" class="btn btn-warning"  name="butSubmit" value="Add">
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

    <form class="well form-horizontal" action="newsupplier " method="POST"  id="add_form" ><!-- enctype="multipart/form-data" -->
<fieldset>

<!-- Form Name -->
<form class="well form-horizontal" action="newsupplier" method="POST"  id="add_form" >
<legend><center><h2><b> Add Supplier </b></h2></center></legend><br>
<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Name</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
   <!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
  <input name="sname" placeholder="Name" class="form-control"  type="text">
    </div>
  </div>
</div>

<!-- Text input-->
       <div class="form-group">
  <label class="col-md-4 control-label">Email Address</label>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
       <!--  <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span> -->
  <input name="semail" placeholder="Email Address" class="form-control"  type="text">
    </div>
  </div>
</div>
<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Contact</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
 <!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
  <input name="scontact" placeholder="Contact" class="form-control"  type="text">
    </div>
  </div>
</div>
<!-- Text input-->

<div class="form-group">
  <label class="col-md-4 control-label" >Address</label> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
 <!--  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span> -->
  <input name="saddress" placeholder="Address" class="form-control"  type="text">
    </div>
  </div>
</div>

<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<!-- <a href="login" role="button" class="btn btn-warning" >&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSubmit<span class="glyphicon glyphicon-send"></span>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</a> -->
 <input type="submit" class="btn btn-warning"  name="butSubmit" value="Add">
  </div>
</div>
</fieldset>
</form>
</div>
    </div>
	</div>
</body>
</html>	



