<%@include file="Header.jsp"%>
<html>
<head>
<title>Cart</title>
</head>
<body style="background-color:#f2f2f2">
 
 <div class="jumbotron" style="margin-bottom:226px;background-color:#f2f2f2">
 <div class="span11" style="margin-bottom:226px;margin-top:50px;background-color:#f2f2f2">

	<div class="col-md-12  col-sm-12  col-xs-8 "
	style="background: #f2f2f2; padding: 30px;">

	<div class="col-md-6 col-sm-6 col-xs-12">
		<h3 class="text-center">Billing Address</h3>

		<hr>
			<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
				<form:input type="text" path="user.EmailId" name="email" class="form-control input-sm"					
				placeholder="Emailid" disabled="true"/> 
			</div>
		</div>
		<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
				<form:input type="number" name="mono" path="user.PhoneNo" disabled="true"
			class="form-control input-sm" placeholder="Mobile no"/>
			</div>
		</div>
		

		<div class="col-xs-12 col-sm-12 col-md-12">
			<div class="form-group">
				<form:input class="form-control" path="user.Address" disabled="true"
					placeholder="Address"/>                                                
                                            
			</div>
		</div>

<!-- 		<div class="col-xs-12 col-sm-4 col-md-4"> -->
<!-- 			<div class="form-group"> -->
<%-- 				<form:input type="text" name="country" disabled="true" --%>
<%-- 					class="form-control input-sm" placeholder="country" path="user.billing.country" /> --%>
<!-- 			</div> -->
<!-- 		</div> -->
		<div class="col-xs-12 col-sm-4 col-md-4">
			<div class="form-group">
				<form:input type="text" name="city" disabled="true"
					class="form-control input-sm" placeholder="city" path="user.City"/>
			</div>
		</div>
<!-- 		<div class="col-xs-12 col-sm-4 col-md-4"> -->
<!-- 			<div class="form-group"> -->
<%-- 				<form:input type="text" name="pincode" disabled="true" --%>
<%-- 					class="form-control input-sm" placeholder="pincode" path="user.billing.pincode" /> --%>
<!-- 			</div> -->
<!-- 		</div> -->
		<input class="coupon_question" type="checkbox" name="coupon_question"
			value="1"> <span class="item-text">Check Shipping
			address</span>
			
	</div>

<c:url value="/orderConfirm" var="a"/>
		<form:form action="${a}" method="post" commandName="shippingAddress">
	<div class="col-md-6 shipping col-sm-6 col-xs-12">
		<h3 class="text-center">shipping Address</h3>

		<hr>
	
		
	
		<div class="col-xs-6 col-sm-6 col-md-6">
			<div class="form-group">
				<form:input type="text" name="First Name" id="first_name"
					class="form-control input-sm" placeholder="First Name" path="Name"/>
			</div>
		</div>
<!-- 		<div class="col-xs-6 col-sm-6 col-md-6"> -->
<!-- 			<div class="form-group"> -->
<%-- 				<form:input type="text" name="Last Name" id="last_name" --%>
<%-- 					class="form-control input-sm" placeholder="Last Name" path="lastName"/> --%>
<!-- 			</div> -->
<!-- 		</div> -->

<!-- 		<div class="col-xs-6 col-sm-6 col-md-6"> -->
<!-- 			<div class="form-group"> -->
<%-- 				<form:input type="text" name="Email id" id="first_name" --%>
<%-- 					class="form-control input-sm" placeholder="Email id" path="email"/> --%>
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 		<div class="col-xs-6 col-sm-6 col-md-6"> -->
<!-- 			<div class="form-group"> -->
<%-- 				<form:input type="text" name="Mobile no"  --%>
<%-- 					class="form-control input-sm" placeholder="Mobile no" path="mobile"/> --%>
<!-- 			</div> -->
<!-- 		</div> -->

		<div class="col-xs-12 col-sm-12 col-md-12">
			<div class="form-group">
				<form:input type="text" class="form-control" path="address"/>                                                
                                           
			</div>
		</div>

<!-- 		<div class="col-xs-12 col-sm-4 col-md-4"> -->
<!-- 			<div class="form-group"> -->
<%-- 				<form:input type="text" --%>
<%-- 					class="form-control input-sm" placeholder="country" path="country"/> --%>
<!-- 			</div> -->
<!-- 		</div> -->
		<div class="col-xs-12 col-sm-4 col-md-4">
			<div class="form-group">
				<form:input type="text" 
					class="form-control input-sm" placeholder="city" path="City"/>
			</div>
		</div>
<!-- 		<div class="col-xs-12 col-sm-4 col-md-4"> -->
<!-- 			<div class="form-group"> -->
<%-- 				<form:input type="text" --%>
<%-- 					class="form-control input-sm" placeholder="pincode" path="pincode" /> --%>
<!-- 			</div> -->
<!-- 		</div> -->
		
	</div>
	 
	<div class="col-md-12">
		<input type="submit" class="btn btn-primary pull-right" value="Continue">
	</div>
  </form:form>
</div>
</div>


</div>
 

</body>
</html>
<%@include file="Footer.jsp"%>