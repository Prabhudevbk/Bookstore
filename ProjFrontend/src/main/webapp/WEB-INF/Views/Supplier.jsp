<%-- <%@taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core"%> --%>
<%-- <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
<%-- <%@taglib prefix="c" uri="http://www.springframework.org/tags" %> --%>

<%@include file="Header.jsp" %>

<html>
<head>
<title>Supplier</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!--  <!-- Latest compiled and minified CSS -->
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
<%--             <li><a href="<c:url value="/Product"/>">Product</a></li> --%>
<%--             <li class="active"><a href="<c:url value="/Supplier"/>">Supplier</a></li> --%>
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
         <c:url value="/addsup" var="sup"/>
    <form:form action="${sup}" method="post" commandName="supplier">
      <div class="form-group" style="padding-left:100px;padding-right:50px">
      <label for="SupName">Supplier Name</label>
      <form:input type="text" class="form-control" id="SupName" placeholder="Enter Supplier Name" path="SupName" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="SupId">Supplier Id</label>
      <form:input type="text" class="form-control" id="SupId" placeholder="Enter Supplier Id" path="SupId" required="required"/>
      </div>
	   <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="PhoneNo">Phone Number</label>
      <form:input type="text" class="form-control" id="PhoneNo" placeholder="Enter Phone Number" path="PhoneNo" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="EmailId">Email Id</label>
      <form:input type="emailId" class="form-control" id="EmailId" placeholder="Enter emailId" path="EmailId" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="Address">Address</label>
      <form:input type="text" class="form-control" id="Address" placeholder="Enter Address" path="Address" required="required"/>
      </div>
      <div style="padding-left:100px;margin-top:30px">
      <button type="submit" class="btn btn-default">Submit</button>	    
      <button type="cancel" class="btn btn-default"><a href="<c:url value="/Supplier"/>">Cancel</a></button>
      </div>
    </form:form>
    </div>
  </div>
 </div>  
</div>


<table border="1px solid black" style="border-color:black;font-size:20px;float:left;margin:-5.5em 370px 0 520px;color:black">
<tr style="bordor-color:tomato">
<th>Supplier Id</th>
<th>Supplier Name</th>
<th>Address</th>
<th>Phone no.</th>
<th>Email</th>
<th>Edit/Delete</th>
</tr>
	<c1:forEach items="${supplies}" var="sup">
    <tr>
    <td>${sup.getSupId()}</td>
    <td>${sup.getSupName()}</td>
    <td>${sup.getAddress()}</td>
    <td>${sup.getPhoneNo()}</td>
    <td>${sup.getEmailId()}</td>
    <td><a href="<c:url value="/editsupplier/${sup.getSupId()}"/>">Edit</a>/<a href="<c:url value="/deletesupplier/${sup.getSupId()}"/>">Delete</a></td>
	</tr>    
	</c1:forEach>
	</table>





<div class="jumbotron" style="margin-top:00px;margin-bottom:00px;background-color:white">
	<p class="text-center">description</p>
</div>



</body>
</html>
<%@include file="Footer.jsp" %>