<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="model.Pizza"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mon template</title>
</head>
<body>
	<%@ include file="/include/header.jsp"%>
	<div id="preloader">
		<label>Loading</label>
	</div>
	<!-- End preloader -->
	<%@ include file="/include/navbar.jsp"%>
	<section id="top" class="page-banner"
		style="background: #121619 url(https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/blog-1.jpg) no-repeat center/cover;">
		<div class="container">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="page-title">
						<h1 class="page-headding">SHOPPING CART</h1>
						<ul>
							<li><a
								href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/index.html"
								class="page-name">Home</a></li>
							<li>Shopping Cart</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="shopping-cart ptb">
		<div class="container">
			<div class="cart-item-table commun-table">
				<div class="table-responsive">
					<table class="table border mb-0">
						<thead>
							<tr>
								<th class="align-left">Product</th>
								<th class="align-left">Product Name</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<%
							// Retrieve the pizza details from the request attribute set by the servlet
							Pizza pizza = (Pizza) request.getAttribute("pizza");

							if (pizza != null) {
							%>
							<tr>
								<td class="align-left"><a
									href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/shop-detail.html">
										<div class="product-image">
											<img alt="Eshoper" src="<%=pizza.getImage()%>">
										</div>
								</a></td>
								<td class="align-left">
									<div class="product-title">
										<a
											href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/shop-detail.html"><%=pizza.getName()%></a>
									</div>
								</td>
								<td>
									<ul>
										<li>
											<div class="base-price price-box">
												<span class="price">$<%=pizza.getPrice()%></span>
											</div>
										</li>
									</ul>
								</td>
								<td>
									<div class="input-box">
										<select data-id="100" class="quantity_cart"
											name="quantity_cart">
											<option selected="" value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
										</select>
									</div>
								</td>
								<td><a href="javascript:void(0)"
									class="btn small btn-color"> <i
										title="Remove Item From Cart" data-id="100"
										class="fa fa-trash cart-remove-item"></i>
								</a></td>
							</tr>


						</tbody>
					</table>
				</div>
			</div>
			<div class="mb-30">
				<div class="row">
					<div class="col-md-6">
						<div class="mt-30 text-center-r">
							<a
								href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/shop-categories.html"
								class="btn btn-color"> <i class="fa fa-angle-left"></i><span>Continue
									Shopping</span>
							</a>
						</div>
					</div>
					<div class="col-md-6">
						<div class="mt-30 right-side float-none-sm text-center-r">
							<a href="javascript:void(0)" class="btn btn-color">Update
								Cart</a>
						</div>
					</div>
				</div>
			</div>
			<hr>
			<div class="mtb-30">
				<div class="row">

					<hr>
					<div class="mt-30">
						<div class="row">
							<div class="col-12">
								<div
									class="right-side float-none-xs text-center-r float-none-sm">
								<a href="CheckoutController?pizzaId=<%=pizza.getId()%>"
   class="btn btn-color"> Proceed to checkout <span><i class="fa fa-angle-right"></i></span>
</a>



									<%
									} else {
									%>
									<p>No pizza details available.</p>
									<%
									}
									%>
								</div>
							</div>
						</div>
					</div>
				</div>
	</section>

	<div class="top-scrolling">
		<a href="#top" class="scrollTo"><i class="fa fa-angle-up"
			aria-hidden="true"></i></a>
	</div>


	<%@ include file="/include/footer.jsp"%>

</body>
<%@ include file="/include/js.jsp"%>
</html>