<%@taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


  <html>
<head><title>header</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script>
function cart() {
	
    window.alert("Please login");
}
function cart1() {
	
    window.alert("Redirecting");
}
</script>
</head>
<body data-spy="scroll" data-target=".navbar">

<div class="jumbotron" style="margin-top:00px;margin-bottom:00px">
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
<div class="row" style="background-color:#f0f0f0">
    <div class="col-sm-7"><h3 class="text-left ">website name</h3></div>
    <div class="col-sm-5"><h3 class="text-right">description</h3></div>
  </div>
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="<c:url value="/"/>" target="_parent">Home</a></li>
        <li><a href="#section41">About</a></li>
        <li><a href="#section42">Contact</a></li>
         <li><a href="<c:url value="/Gallery"/>">Gallery</a></li>
        
         <c1:if test="${pageContext.request.userPrincipal.name!=null}">
         <security:authorize access="hasRole('ROLE_ADMIN')">
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin<span class="caret"></span></a>
          <ul class="dropdown-menu"> 
         
          
            <li><a href="<c:url value="/Category"/>">Category</a></li>
            <li><a href="<c:url value="/Product"/>">Product</a></li>
            <li><a href="<c:url value="/Supplier"/>">Supplier</a></li>
             </ul> 
              </li>
            </security:authorize>
           
            </c1:if>
              
         
          
      <li><c1:if test="${pageContext.request.userPrincipal.name!=null}">
      <div style="color:white;padding-left:25px;padding-top:15px">
      Welcome! ${pageContext.request.userPrincipal.name}
      </div>
      </c1:if></li>
      
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
      <c1:if test="${pageContext.request.userPrincipal.name==null}">
       
      <li> <a href="<c:url value="/checkout"/>" onclick="cart()">
          <span class="glyphicon glyphicon-shopping-cart">${items}</span>
        </a></li>
        </c1:if>
        <c1:if test="${pageContext.request.userPrincipal.name!=null}">
       
      <li> <a href="<c:url value="/checkout"/>" onclick="cart1()">
          <span class="glyphicon glyphicon-shopping-cart">${items}</span>
        </a></li>
        </c1:if>
       <c1:if test="${pageContext.request.userPrincipal.name==null}">
       
        <li><a href="<c:url value="/User"/>" target="_parent"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        <li><a href="<c:url value="/login"/>" target="_parent"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      
      </c1:if>
      
      <c1:if test="${pageContext.request.userPrincipal.name!=null}">
      <li><a href="<c:url value="/j_spring_security_logout"/>">Logout</a></li>
      </c1:if>
      
      </ul>
    </div>
  </div>
</nav>
</div>
</body>
</html>