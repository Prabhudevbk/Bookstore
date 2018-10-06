<%-- <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
<%-- <%@taglib prefix="c" uri="http://www.springframework.org/tags" %> --%>
<%-- <%@taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %> --%>

<%@include file="Header.jsp" %>


<html>
<head>
<title>Category</title>
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
<%--             <li class="active"><a href="<c:url value="/Category"/>">Category</a></li> --%>
<%--             <li><a href="<c:url value="/Product"/>">Producer</a></li> --%>
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




<div class="jumbotron" style="background-color:#f2f2f2;margin-bottom:00px">
<!--  <div style="margin-top:00px;margin-bottom:00px"> -->
  <div class="row">
    <div class="col-sm-8">
    <c:url value="/addcat" var="cat"/>
    <form:form action="${cat}" method="post" commandName="category" enctype="multipart/form-data">
      <div class="form-group" style="padding-left:100px;padding-right:50px">
      <label for="catId">Category ID</label>
      <form:input type="text" class="form-control" id="catId" placeholder="Enter category id" path="catId" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:50px">
      <label for="catName">Category Name:</label>
      <form:input type="text" class="form-control" id="catName" placeholder="Enter category name" path="catName" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="Pimg">Image</label>
      <form:input type="file" value="upload file" path="pimg"/>    
      </div>
      <div style="padding-left:100px;margin-top:50px">
      <button type="submit" class="btn btn-default">Submit</button>	    
      <button type="cancel" class="btn btn-default"><a href="<c:url value="/Category"/>">Cancel</a></button>
      </div>
    </form:form>
    </div>
<!--     <div class="col-sm-4"> -->
<!--       <div  style="padding-right:150px"> -->
<!--         <div class="embed-responsive embed-responsive-4by3"> -->
<!--         <iframe src="https://www.youtube.com/embed/eB9q1_um3ds" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe> -->
<!--         </div> -->
<!--       </div> -->
<!--     </div> -->
  </div>
<!--  </div>   -->
</div>


<table border="1px solid black" style="float:left;margin:-40px 70px 10px 670px;border-collapse:collapse">
    <tr>
    <th>CategoryId</th>
    <th>CategoryName</th>
    <th>Edit/Delete</th>
    </tr>
    <c1:forEach items="${categories}" var="cat">
    <tr>
    <td>${cat.getCatId()}</td>
    <td>${cat.getCatName()}</td>
    <td><a href="<c:url value="/editcategory/${cat.getCatId()}"/>">Edit</a>/<a href="<c:url value="/deletecategory/${cat.getCatId()}"/>">Delete</a></td>
	</tr>    
	</c1:forEach></table>


<div class="jumbotron" style="margin-top:00px;margin-bottom:00px;background-color:white">
	<p class="text-center">description</p>
</div>


</body>
</html>
<%@include file="Footer.jsp" %>