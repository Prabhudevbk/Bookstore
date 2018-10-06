<%@ include file="Header.jsp"%>
<html>
<head>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

</head>
<body style="background-color: #f2f2f2">

	<div class="container">
		<div class="well well-big">



			<div class="row">
				<div class="span15">

					<div class="col-lg-8 col-lg-offset-2">

						<div class="row">
							<div class="col-md-1"></div>
							<div class="col-md-10 clearfix" id="checkout">

								<!--                         <div class="box"> -->
								<c:url value="/payment" var="prod" />
								<form method="post" action="${prod}">
									<ul class="nav nav-pills nav-justified">
										<li><a href="<c:url value="/previous"/>"><i
												class="fa fa-map-marker"></i><br>Billing Address</a></li>
										<li class="active"><a href="<c:url value="/pay"/>"><i
												class="fa fa-money"></i><br>Confirm Your Order</a></li>
										<li class="disabled"><a
											href="<c:url value="/orderconfirmation"/>"><i
												class="fa fa-eye"></i><br>Shipment Address</a></li>
									</ul>

									<!--                                 <div class="container"> -->
									<!--                                    <div class="row"> -->

									<div class="box payment-method">
										<div class="row">
											<div class="col-sm-6">
												<h4>Billing Address</h4>
												<table class="table"
													style="border: 1px solid black; border-collapse: collapse;">


													<tr
														style="border: 1px solid black; border-collapse: collapse; padding: 15px">
														<td
															style="border: 1px solid black; border-collapse: collapse;">
															<p>Phone:</p>
														</td>
														<td
															style="border: 1px solid black; border-collapse: collapse;">
															${bill.getPhone()} .</td>
													</tr>
													<tr
														style="border: 1px solid black; border-collapse: collapse;">
														<td
															style="border: 1px solid black; border-collapse: collapse;">
															<p>Address:</p>
														</td>
														<td
															style="border: 1px solid black; border-collapse: collapse;">
															${bill.getAddress()} .</td>
													</tr>
													<tr
														style="border: 1px solid black; border-collapse: collapse;">
														<td
															style="border: 1px solid black; border-collapse: collapse;">
															<p>City:</p>
														</td>
														<td
															style="border: 1px solid black; border-collapse: collapse;">${bill.getCity()}
															.</td>
													</tr>

												</table>

											</div>
											<div class="col-sm-6">
												<div class="box payment-method">

													<h4>Shipment Address</h4>
													<table class="table"
														style="border: 1px solid black; border-collapse: collapse;">
														<tr
															style="border: 1px solid black; border-collapse: collapse;">
															<td
																style="border: 1px solid black; border-collapse: collapse;">Name:</td>
															<td
																style="border: 1px solid black; border-collapse: collapse;"><p>${shippingAddress.getName()}.</p></td>
														</tr>

														<tr
															style="border: 1px solid black; border-collapse: collapse;">
															<td
																style="border: 1px solid black; border-collapse: collapse;">
																<p>Address:</p>
															</td>
															<td
																style="border: 1px solid black; border-collapse: collapse;"><p>${shippingAddress.getAddress()}
																	.</p></td>
														</tr>
														<tr
															style="border: 1px solid black; border-collapse: collapse;">
															<td
																style="border: 1px solid black; border-collapse: collapse;"><p>City:</p></td>
															<td
																style="border: 1px solid black; border-collapse: collapse;"><p>${shippingAddress.getCity()}
																	.</p></td>
														</tr>
													</table>
												</div>


											</div>
										</div>
									</div>
								</form>
							</div>

						</div>

						<!-- /.row -->
						<div class="content">
							<div class="row">
								<div class="col-lg-8 col-lg-offset-2">
									<table style="border: 1px solid black">
										<thead style="border: 1px solid black">
											<tr style="background-color: #eee">
												<th style="border: 1px solid black">Product Image</th>
												<th style="border: 1px solid black">Product Name</th>
												<!--         <th>Description</th> -->
												<th style="border: 1px solid black">Category Name</th>
												<th style="border: 1px solid black">Seller Name</th>
												<th style="border: 1px solid black">Price</th>
											</tr>
										</thead>
										<tbody>

											<c1:if test="${p!=null}">
												<tr>
													<td style="border: 1px solid black"><img
														src="<c:url value="Resources/Images/${prot.getProdId()}.jpg"/>"
														width=150px height=200px></td>
													<td style="border: 1px solid black">${prot.getProdName()}</td>
													<%--         <td>${product.getDes()}</td> --%>
													<td style="border: 1px solid black">${prot.getCategory().getCatName()}</td>
													<td style="border: 1px solid black">${prot.getSupplier().getSupName()}</td>
													<td style="border: 1px solid black">${prot.getPrice()}</td>
												</tr>

											</c1:if>
											<c1:if test="${prot==null}">
												<c1:forEach items="${cartItems}" var="c1">
													<tr>
														<td style="border: 1px solid black"><img
															src="<c:url value="Resources/Images/${c1.getProduct().getProdId()}.jpg"/>"
															width=150px height=200px></td>
														<td style="border: 1px solid black">${c1.getProduct().getProdName()}</td>
														<%--         <td>${c1.getproduct.getDes()}</td> --%>
														<td style="border: 1px solid black">${c1.getProduct().getCategory().getCatName()}</td>
														<td style="border: 1px solid black">${c1.getProduct().getSupplier().getSupName()}</td>
														<td style="border: 1px solid black">${c1.getProduct().getPrice()}</td>
													</tr>
												</c1:forEach>
											</c1:if>


										</tbody>
									</table>


<%-- 									<c1:forEach items="${cartItems}" var="cartItem"> --%>
<!-- 										<p class="pull-left">Total price=Rs -->
<%-- 											${cartItems.getCart().getGrandTotal()}</p> --%>
<%-- 									</c1:forEach> --%>
<%-- 									${gtotal} --%>
									<h4>Proceed to pay.</h4>
								</div>
							</div>
						</div>



						<div class="box-footer">
<!-- 							<div class="pull-left"> -->
<%-- 								<a href="<c:url value="/previous"/>" class="btn btn-default"><i --%>
<!-- 									class="fa fa-chevron-left"></i>previous</a> -->
<!-- 							</div> -->
							<div class="pull-right">
								<c:url value="/pay" var="rate" />
								<form:form action="${rate}" method="post">
								Rate this book[1-10]:-
									<input type="text" name="rate" />
									<input type="text" name="ProdId" value="${prot.getProdId()}">
									<input type="submit" value="pay">

								
<%-- 								<a href="<c:url value="/pay"/>" class="btn btn-template-main"><i --%>
<!-- 									class="fa fa-chevron-right">Pay</i></a> -->
									</form:form>
								<!--                                         </button> -->
							</div>
						</div>
					</div>
					<!-- /.content -->



				</div>
			</div>
		</div>
	</div>



</body>

</html>
<%@ include file="Footer.jsp"%>