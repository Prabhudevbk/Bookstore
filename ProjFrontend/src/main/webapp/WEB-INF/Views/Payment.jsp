<%@include file="Header.jsp"%>
<html>
<head><title>payment</title></head>
<%@taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="c1" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <!--   <script>
 var app = angular.module('myApp', []);
 app.controller('myCtrl', function($scope, $http){
	 $http.get("http://localhost:8081/ProjFrontend/SendMail")
	 });
 </script>-->
 
<body style="background-color:#f2f2f2">


<div class="container" style="margin-top:50px;background-color:white">
<div class="row">


<aside class="col-sm-6">	
<div style="margin-left:20px;margin-top:20px">
<p>Payment form1</p>
<ul class="nav bg-light nav-pills rounded nav-fill mb-3" role="tablist">
	<li class="nav-item">
		<a class="nav-link active" data-toggle="pill" href="#na-tab-card">
		<i class="fa fa-credit-card"></i>Cash Payment</a></li></ul>
<!-- <div class="content"> -->
<div class="tab-content">
<div class="tab-pane fade show active" id="na-tab-card">

<article class="card">
<div class="card-body p-5">
<p> <img src="http://bootstrap-ecommerce.com/main/images/icons/pay-visa.png"> 
	<img src="http://bootstrap-ecommerce.com/main/images/icons/pay-mastercard.png"> 
   <img src="http://bootstrap-ecommerce.com/main/images/icons/pay-american-ex.png">
</p>
<p class="alert alert-success">Some text success or error</p>

 <c:url value="/cardPayment" var="card"/>
     <form:form action="${card}" method="post" commandName="card">
<!--      <input type="radio" value="cd"/>Card Payment -->
<div class="form-group">
<label for="username">Full name (on the card)</label>
<div class="input-group">
	<div class="input-group-prepend">
		<span class="input-group-text"><i class="fa fa-user"></i></span>
	</div>
	<form:input type="text" class="form-control" name="username" placeholder="" required="required" path="username"/>
</div> <!-- input-group.// -->
</div> <!-- form-group.// -->

<div class="form-group">
<label for="cardNumber">Card number</label>
<div class="input-group">
	<div class="input-group-prepend">
		<span class="input-group-text"><i class="fa fa-credit-card"></i></span>
	</div>
	<form:input type="text" class="form-control" name="cardNumber" placeholder="" path="cardNumber"/>
</div> <!-- input-group.// -->
</div> <!-- form-group.// -->

<div class="row">
    <div class="col-sm-8">
        <div class="form-group">
            <label><span class="hidden-xs">Expiration</span> </label>
            	<form:input type="text" class="form-control" name="expiration" placeholder="" path="expiration"/>
            
<!--         	<div class="form-inline"> -->
<!--         		<select class="form-control" style="width:45%"> -->
<!-- 				  <option>MM</option> -->
<!-- 				  <option>01 - January</option> -->
<!-- 				  <option>02 - February</option> -->
<!-- 				  <option>03 - February</option> -->
<!-- 				</select> -->
<!-- 	            <span style="width:10%; text-align: center"> / </span> -->
<!-- 	            <select class="form-control" style="width:45%"> -->
<!-- 				  <option>YY</option> -->
<!-- 				  <option>2018</option> -->
<!-- 				  <option>2019</option> -->
<!-- 				</select> -->
<!--         	</div> -->
        </div>
    </div>
    <div class="col-sm-4">
        <div class="form-group">
            <label data-toggle="tooltip" title="" data-original-title="3 digits code on back side of the card">CVV <i class="fa fa-question-circle"></i></label>
            <form:input class="form-control" required="requuired" type="text" path="cvv"/>
        </div> <!-- form-group.// -->
    </div>
</div> <!-- row.// -->
<button class="subscribe btn btn-primary btn-block" type="button"> <input type="submit" value="Confirm">  </button>
</form:form>
</div> <!-- card-body.// -->
</article> <!-- card.// -->
</div>
</div>
</div>
	</aside> <!-- col.// -->
	
	<aside class="col-sm-6">
	<div style="margin-left:20px;margin-top:20px">
	
<p>Payment form2</p>

<article class="card">
<div class="card-body p-5">

<ul class="nav bg-light nav-pills rounded nav-fill mb-3" role="tablist">
	<li class="nav-item">
		<a class="nav-link active" data-toggle="pill" href="#nav-tab-card">
		<i class="fa fa-credit-card"></i> Cash On Delivery</a></li>
	
</ul>

<div class="tab-content">
<div class="tab-pane fade show active" id="nav-tab-card">

	<c:url value="/payment" var="pa"/>
         <form:form action="${pa}" method="post" id="myForm">
<!-- <input type="radio" value="cod">Cash on Delivery -->
	<div class="form-group">
		<label for="cardNumber">OTP</label>
		<div class="input-group">
			<input type="text" class="form-control" name="payb2" ng-app="myApp" ng-controller="myCtrl" placeholder="">
			<div class="input-group-append">
<!-- 				<span class="input-group-text text-muted"> -->
<!-- 					<i class="fab fa-cc-visa"></i>   <i class="fab fa-cc-amex"></i>    -->
<!-- 					<i class="fab fa-cc-mastercard"></i>  -->
<!-- 				</span> -->
			</div>
		</div>
	</div> <!-- form-group.// -->
	<input type="submit" class="subscribe btn btn-success btn-block" value="Pay">
</form:form>
	

</div> <!-- card-body.// -->
</div>
</div>
</article> <!-- card.// -->

</div>
	</aside> <!-- col.// -->
</div> <!-- row.// -->

</div> 
<!--container end.//-->

<br><br>
<%-- <c:url value="/rate" var="rate"/> --%>
<%-- <form:form action="${rate}" method="post"> --%>
<!-- Rate this book[1-10]:- -->
<!-- <input type="text" name="rate"/> -->
<!-- <input type="submit" value="Rate"/> -->
<%-- </form:form> --%>

</body>
</html>
<%@include file="Footer.jsp"%>