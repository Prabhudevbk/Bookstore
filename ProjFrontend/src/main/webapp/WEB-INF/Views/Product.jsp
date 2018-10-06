<%-- <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
<%-- <%@taglib prefix="c" uri="http://www.springframework.org/tags" %> --%>
<%-- <%@ taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %> --%>

<%@include file="Header.jsp" %>

<html>
<head>

<c:url value="/Resources/Images" var="img"/>
<title>Product</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!--   <!-- Latest compiled and minified CSS -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->

<!-- <!-- jQuery library -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->

<!-- <!-- Latest compiled JavaScript -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
 footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
  .vl {
    border-left: 1px solid white;
    height: 100px;
  }

  </style>
</head>
<body>

<!-- <div class="jumbotron"> -->

<!-- <nav class="navbar navbar-inverse navbar-fixed-top" > -->
<!--   <div class="container-fluid"> -->
<!-- <div class="row" style="background-color:white"> -->
<!--     <div class="col-sm-7"><h1 class="text-left ">website name</h1></div> -->
<!--     <div class="col-sm-5"><h1 class="text-right">description</h1></div> -->
<!--   </div> -->
<!--     <div class="navbar-header"> -->
<!--       <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"> -->
<!--         <span class="icon-bar"></span> -->
<!--         <span class="icon-bar"></span> -->
<!--         <span class="icon-bar"></span>                         -->
<!--       </button> -->
<!--       <a class="navbar-brand" href="#">WebSiteName</a> -->
<!--     </div> -->
<!--     <div class="collapse navbar-collapse" id="myNavbar"> -->
<!--       <ul class="nav navbar-nav"> -->
<%--         <li><a href="<c:url value="/"/>" target="_parent">Home</a></li> --%>
<!--         <li><a href="#">About</a></li> -->
<!--         <li><a href="#">Contact</a></li> -->
<!--         <li class="dropdown"> -->
<!--           <a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin<span class="caret"></span></a> -->
<!--           <ul class="dropdown-menu"> -->
<%--             <li><a href="<c:url value="/Category"/>">Category</a></li> --%>
<%--             <li class="active"><a href="<c:url value="/Product"/>">Producer</a></li> --%>
<%--             <li><a href="<c:url value="/Supplier"/>">Supplier</a></li> --%>
<!--           </ul> -->
<!--         </li> -->
<!--       </ul> -->
<!--       <ul class="nav navbar-nav navbar-right"> -->
<!--         <li><a href="signup.html" target="_parent"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li> -->
<!--         <li><a href="login.html" target="_parent"><span class="glyphicon glyphicon-log-in"></span> Login</a></li> -->
<!--       </ul> -->
<!--     </div> -->
<!--   </div> -->
<!-- </nav> -->
<!-- </div> -->




<div class="jumbotron" style="background-color:#f2f2f2;margin-top:00px;margin-bottom:00px">
<!--  <div style="margin-top:25px;margin-bottom:25px"> -->
  <div class="row">
    <div class="col-sm-8">
     <c:url value="/addprod" var="prod"/>
     <form:form action="${prod}" method="post" commandName="product" enctype="multipart/form-data">
      <div class="form-group" style="padding-left:100px;padding-right:50px">
      <label for="ProdName">Product Name</label>
      <form:input type="text" class="form-control" id="ProdName" placeholder="Enter Product Name" path="ProdName" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="ProdId">Product Id</label>
      <form:input type="text" class="form-control" id="ProdId" placeholder="Enter Product Id" path="ProdId" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="Quantity">Quantity</label>
      <form:input type="text" class="form-control" id="Quantity" placeholder="Enter Quantity" path="Quantity" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="Price">Price</label>
      <form:input type="text" class="form-control" id="Price" placeholder="Enter Price"  path="Price" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="Description">Description</label>
      <form:input type="text" class="form-control" id="Description" placeholder="Enter Description" path="Description" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="ProdYear">Year</label>
      <form:input type="text" class="form-control" id="ProdYear" placeholder="Enter ProdYear" path="ProdYear" required="required"/>
      </div>
      
       
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="catId">Category Name</label>
      <form:select class="form-control" path="category.catId">
      <c1:forEach items="${categories}" var="cat">
      <option value="${cat.getCatId()}">${cat.getCatName()}</option>
      </c1:forEach>
      </form:select>
      </div>
    
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="SupName">Supplier Name</label>
      <form:select class="form-control" path="supplier.supId">
      <c1:forEach items="${supplies}" var="sup">
      <option value="${sup.getSupId()}">${sup.getSupName()}</option>
      </c1:forEach>
      </form:select>
      </div>
       
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="Pimg">Image</label>
      <form:input type="file" value="upload file" path="pimg"/>
     
      </div>
       
      <div style="padding-left:100px;margin-top:30px">
      <button type="submit" class="btn btn-default">Submit</button>
      <a href="<c:url value="/Product"/>"><button type="cancel" class="btn btn-default">Cancel</button></a>
      </div>


    </form:form>
    </div>
  </div>
 </div>  
</div>



<table border="1px solid black" style="float:left;margin:8.5em 270px 0 370px;border-collapse:collapse">
<tr style="color:black">
<th>Product Id</th>
<th>Product Image</th>
<th>Product Name</th>
<th>Description</th>
<th>Price</th>
<th>Quantity</th>
<th>Year</th>
<th>Category Name</th>
<th>Supplier Name</th>
<th>Edit/Delete</th>
</tr>
<c1:forEach items="${products}" var="prod">
    <tr>
    <td>${prod.getProdId()}</td>
    <td><img width="200px" height="200px" src="<c:url value="Resources/Images/${prod.getProdId()}.jpg"/>"></td>
    <td>${prod.getProdName()}</td>
    <td>${prod.getDescription()}</td>
    <td>${prod.getPrice()}</td>
    <td>${prod.getQuantity()}</td>
    <td>${prod.getProdYear()}</td>
    <td>${prod.category.getCatName()}</td>
    <td>${prod.supplier.getSupName()}</td>
    <td><a href="<c:url value="/editproduct/${prod.getProdId()}"/>">Edit</a>/<a href="<c:url value="/deleteproduct/${prod.getProdId()}"/>">Delete</a></td>
	</tr>    
	</c1:forEach></table>

<div class="jumbotron" style="margin-top:00px;margin-bottom:00px;background-color:white">
	<p class="text-center">description</p>
</div>


</body>
</html>

<%@include file="Footer.jsp" %>