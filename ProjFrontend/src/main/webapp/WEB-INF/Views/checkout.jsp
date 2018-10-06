<%@include file="Header.jsp"%>
<html>
<head>
<title>Cart</title>
</head>
<body style="background-color:#f2f2f2">

<div class="container" style="margin-bottom:150px;margin-top:15px">
<table style="margin-top:100px;margin-left:100px;margin-bottom:50px;width:100%">
    <tr>
    <th>Image</th>
    <th>Name</th>
	<th>Price</th>
	<th>Total</th>
    </tr>
   
	<c1:forEach items="${cartItems}" var="cartItems">
    <tr>
    <td><img width="200px" height="200px" src="<c:url value="Resources/Images/${cartItems.product.getProdId()}.jpg"/>"></td>
    <td>${cartItems.product.getProdName()}</td>
	<td>${cartItems.getPrice()}</td>
	<td>${cartItems.cart.getGrandTotal()}</td>
<%-- 	<td><a href="<c:url value="/Buy/${cartItems.product.getProdId()}/${cartItems.cart.getCartId()}"/>"> --%>
<!--         <button type="submit" class="btn btn-default" style="margin-right:20px;width:60%;height:50px">Buy</button> -->
<!--         </a></td> -->
	<td><a href="<c:url value="/Remove/${cartItems.getCartItemId()}"/>">
        <button type="submit" class="btn btn-default" style="margin-left:20px;width:60%;height:50px">Remove</button>
        </a></td>
	</tr>    
	</c1:forEach></table>


<a href="<c:url value="/Buyall"/>">
        <button type="submit" class="btn btn-default" style="margin-left:25px;width:10%;height:50px">Buy All</button>
        </a>
        
<a href="<c:url value="/RemoveAll"/>">
        <button type="submit" class="btn btn-default" style="margin-left:25px;width:10%;height:50px">Remove All</button>
        </a>

</div>

</body>
</html>
<%@include file="Footer.jsp"%>