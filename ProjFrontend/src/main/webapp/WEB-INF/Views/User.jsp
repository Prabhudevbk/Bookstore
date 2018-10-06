<%@include file="Header.jsp" %>


<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <!-- Latest compiled and minified CSS -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->

<!-- <!-- jQuery library -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> -->

<!-- <!-- Latest compiled JavaScript -->
<!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<style>

  </style>
</head>
<body>

<div class="jumbotron" style="background-color:#f2f2f2;margin-top:00px;margin-bottom:00px">
  <div class="row">
    <div class="col-sm-8">
    <c:url value="/adduser" var="user"/>
    <form:form action="${user}" method="post" commandName="user">
      <div class="form-group" style="padding-left:100px;padding-right:50px">
      <label for="Name">User Name</label>
      <form:input type="text" class="form-control" id="Name" placeholder="Enter User Name" path="Name" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="Address">Address</label>
      <form:input type="text" class="form-control" id="Address" placeholder="Enter address" path="Address" required="required"/>
      </div>
	   <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="PhoneNo">Phone Number</label>
      <form:input type="text" class="form-control" id="PhoneNo" placeholder="Enter Phone Number" path="PhoneNo" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="EmailId">Email Id</label>
      <form:input type="EmailId" class="form-control" id="EmailId" placeholder="Enter emailId" path="EmailId" required="required"/>
      </div>
      <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="Password">Password</label>
      <form:input type="password" class="form-control" id="Password" placeholder="Enter Password" path="Password" required="required"/>
      </div>
	  <div class="form-group" style="padding-left:100px;padding-right:50px;margin-top:20px">
      <label for="City">City</label>
      <form:input type="text" class="form-control" id="City" placeholder="Enter city" path="City" required="required"/>
      </div>
      <div style="padding-left:100px;margin-top:30px">
      <button type="submit" class="btn btn-default">Submit</button>	    
      <button type="reset" class="btn btn-default">Cancel</button>
      </div>
    </form:form>
    </div>
  </div>
 </div>  

</body>
</html>

<%@include file="Footer.jsp" %>
