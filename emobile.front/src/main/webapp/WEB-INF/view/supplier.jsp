<!DOCTYPE html>
<html>
<%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<%@include file="header.jsp"%>
<style type="text/css">
    body {
        color:#2a1de0;
		background: #f5f5f5;
		font-family: "Comic Sans MS", cursive, sans-serif;
		font-size: 13px;
	}
	.table-wrapper {
        background: #fff;
        padding: 20px 25px;
        margin: 30px 0;
		border-radius: 3px;
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
	.table-title {        
		padding-bottom: 15px;
		background: #435d7d;
		color: #fff;
		padding: 16px 30px;
		margin: -20px -25px 10px;
		border-radius: 3px 3px 0 0;
    }
    .table-title h2 {
		margin: 5px 0 0;
		font-size: 24px;
	}
	.table-title .btn-group {
		float: right;
	}
	.table-title .btn {
		color: #fff;
		float: right;
		font-size: 13px;
		border: none;
		min-width: 50px;
		border-radius: 2px;
		border: none;
		outline: none !important;
		margin-left: 10px;
	}
	.table-title .btn i {
		float: left;
		font-size: 21px;
		margin-right: 5px;
	}
	.table-title .btn span {
		float: left;
		margin-top: 2px;
	}
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
		padding: 12px 15px;
		vertical-align: middle;
    }
	table.table tr th:first-child {
		width: 60px;
	}
	table.table tr th:last-child {
		width: 100px;
	}
    table.table-striped tbody tr:nth-of-type(odd) {
    	background-color: #fcfcfc;
	}
	table.table-striped.table-hover tbody tr:hover {
		background: #f5f5f5;
	}
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }	
    table.table td:last-child i {
		opacity: 0.9;
		font-size: 22px;
        margin: 0 5px;
    }
	table.table td a {
		font-weight: bold;
		color: #566787;
		display: inline-block;
		text-decoration: none;
		outline: none !important;
	}
	table.table td a:hover {
		color: #2196F3;
	}
	table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #F44336;
    }
    table.table td i {
        font-size: 19px;
    }
	table.table .avatar {
		border-radius: 50%;
		vertical-align: middle;
		margin-right: 10px;
	}
    .pagination {
        float: right;
        margin: 0 0 5px;
    }
    .pagination li a {
        border: none;
        font-size: 13px;
        min-width: 30px;
        min-height: 30px;
        color: #999;
        margin: 0 2px;
        line-height: 30px;
        border-radius: 2px !important;
        text-align: center;
        padding: 0 6px;
    }
    .pagination li a:hover {
        color: #666;
    }	
    .pagination li.active a, .pagination li.active a.page-link {
        background: #03A9F4;
    }
    .pagination li.active a:hover {        
        background: #0397d6;
    }
	.pagination li.disabled i {
        color: #ccc;
    }
    .pagination li i {
        font-size: 16px;
        padding-top: 6px
    }
    .hint-text {
        float: left;
        margin-top: 10px;
        font-size: 13px;
    }    
	/* Custom checkbox */
	.custom-checkbox {
		position: relative;
	}
	.custom-checkbox input[type="checkbox"] {    
		opacity: 0;
		position: absolute;
		margin: 5px 0 0 3px;
		z-index: 9;
	}
	.custom-checkbox label:before{
		width: 18px;
		height: 18px;
	}
	.custom-checkbox label:before {
		content: '';
		margin-right: 10px;
		display: inline-block;
		vertical-align: text-top;
		background: white;
		border: 1px solid #bbb;
		border-radius: 2px;
		box-sizing: border-box;
		z-index: 2;
	}
	.custom-checkbox input[type="checkbox"]:checked + label:after {
		content: '';
		position: absolute;
		left: 6px;
		top: 3px;
		width: 6px;
		height: 11px;
		border: solid #000;
		border-width: 0 3px 3px 0;
		transform: inherit;
		z-index: 3;
		transform: rotateZ(45deg);
	}
	.custom-checkbox input[type="checkbox"]:checked + label:before {
		border-color: #03A9F4;
		background: #03A9F4;
	}
	.custom-checkbox input[type="checkbox"]:checked + label:after {
		border-color: #fff;
	}
	.custom-checkbox input[type="checkbox"]:disabled + label:before {
		color: #b8b8b8;
		cursor: auto;
		box-shadow: none;
		background: #ddd;
	}
	/* Modal styles */
	.modal .modal-dialog {
		max-width: 400px;
	}
	.modal .modal-header, .modal .modal-body, .modal .modal-footer {
		padding: 20px 30px;
	}
	.modal .modal-content {
		border-radius: 3px;
	}
	.modal .modal-footer {
		background: #ecf0f1;
		border-radius: 0 0 3px 3px;
	}
    .modal .modal-title {
        display: inline-block;
    }
	.modal .form-control {
		border-radius: 2px;
		box-shadow: none;
		border-color: #dddddd;
	}
	.modal textarea.form-control {
		resize: vertical;
	}
	.modal .btn {
		border-radius: 2px;
		min-width: 100px;
	}	
	.modal form label {
		font-weight: normal;
	}	
</style>
<script type="text/javascript">
$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});
</script>
</head>
<body>
 <%@include file="navbar.jsp" %>
<div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Products</h2>
					</div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
		<div class="container"> 
		<div class="row">
			<div class="col-md-12">
				
				<div class="col-md-2">
					<b>ID</b>
				</div>
				<div class="col-md-2">
					<b>NAME</b>
				</div>
				<div class="col-md-2">
					<b>DESCRIPTION</b>
				</div>
				<div class="col-md-2">
					<b>QUANTITY</b>
				</div>
				<div class="col-md-2">				
					<b>PRICE</b>
				</div>
				<div class="col-md-2">
					<b>ACTION</b>
				</div>
			</div>
		</div>
       </div>             </tr>
 
              </thead> 
 <tbody>

                    <tr>
						<c:forEach items="${products}" var="p">
		<div class="row">
			<div class="col-md-12">
				
				<div class="col-md-2">
				<br>
					&nbsp&nbsp&nbsp&nbsp${p.pid}
				</div>
				<div class="col-md-2">
				<br>
					&nbsp&nbsp&nbsp&nbsp&nbsp
					${p.pname}
				</div>
				<div class="col-md-2">
				<br>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					${p.pdescrip}
				</div>
				<div class="col-md-2">
				<br>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					${p.pquantity}
				</div>
				<div class="col-md-2">		
				<br>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp		
					${p.pprice}
				</div>
				<div class="col-md-2">
				<br>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<a href="updateproduct?id=${p.pid}"><span class="glyphicon glyphicon-edit"></span></a>
					<a href="deleteproduct?id=${p.pid}"><span class="glyphicon glyphicon-trash"></span></a>
				</div>
				</div>
		</div>
		</c:forEach>
               </tr>
            </table>
			</div>
		</div>
		<div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Category</h2>
					</div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
		<div class="container"> 
		<div class="row">
			<div class="col-md-10">
			<div class="col-md-1">
					<b>ID</b>
				</div>
				<div class="col-md-3">
					<b>NAME</b>
				</div>
				<div class="col-md-3">
					<b>ACTION</b>
				</div>
			</div>
		</div>
       </div>             </tr>
 
              </thead> 
 <tbody>

                    <tr>
						<c:forEach items="${category}" var="cat">
		<div class="row">
			<div class="col-md-10">
				<div class="col-md-1">
				<br>
					&nbsp&nbsp&nbsp&nbsp${cat.cid}
				</div>
				<div class="col-md-3">
				<br>
					&nbsp&nbsp&nbsp&nbsp${cat.cname}
				</div>
				<div class="col-md-3">
				<br>
				&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<a href="updatecategory?id=${cat.cid}"><span class="glyphicon glyphicon-edit"></span></a>
					<a href="deletecategory?id=${cat.cid}"><span class="glyphicon glyphicon-trash"></span></a>
				</div>
				</div>
		</div>
		</c:forEach>
               </tr>
            </table>
			</div>
		</div>
		<div class="container">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-6">
						<h2>Products</h2>
					</div>
                </div>
            </div>
            <table class="table table-striped table-hover">
                <thead>
                    <tr>
		<div class="container"> 
		<div class="row">
			<div class="col-md-12">
				
				<div class="col-md-2">
					<b>ID</b>
				</div>
				<div class="col-md-2">
					<b>NAME</b>
				</div>
				<div class="col-md-2">
					<b>EMAIL</b>
				</div>
				<div class="col-md-2">
					<b>CONTACT</b>
				</div>
				<div class="col-md-2">				
					<b>ADDRESS</b>
				</div>
				<div class="col-md-2">
					<b>ACTION</b>
				</div>
			</div>
		</div>
       </div>             </tr>
 
              </thead> 
 <tbody>

                    <tr>
						<c:forEach items="${supplier}" var="s">
		<div class="row">
			<div class="col-md-12">
				
				<div class="col-md-2">
				<br>
					&nbsp&nbsp&nbsp&nbsp${s.sid}
				</div>
				<div class="col-md-2">
				<br>
					&nbsp&nbsp&nbsp&nbsp&nbsp
					${s.sname}
				</div>
				<div class="col-md-2">
				<br>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					${s.semail}
				</div>
				<div class="col-md-2">
				<br>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					${s.scontact}
				</div>
				<div class="col-md-2">		
				<br>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp		
					${s.saddress}
				</div>
				<div class="col-md-2">
				<br>
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<a href="updatesupplier?id=${s.sid}"><span class="glyphicon glyphicon-edit"></span></a>
					<a href="deletesupplier?id=${s.sid}"><span class="glyphicon glyphicon-trash"></span></a>
				</div>
				</div>
		</div>
		</c:forEach>
               </tr>
            </table>
			</div>
		</div>
</body>
</html>	