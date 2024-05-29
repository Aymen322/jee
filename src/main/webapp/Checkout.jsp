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
						<h1 class="page-headding">CHECKOUT</h1>
						<ul>
							<li><a
								href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/index.html"
								class="page-name">Home</a></li>
							<li><a
								href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/cart.html"
								class="page-name">cart</a></li>
							<li>Checkout</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="checkout-part ptb">
		<div class="container">
			<div class="main-form">
				<div class="row">
					<div class="col-12 col-lg-8">
						<div class="mb-md-30">
							<div class="mb-60">
								<div class="row">
									<div class="col-12">
										<div class="heading-part mb-30 mb-sm-20">
											<h3>Billing Details</h3>
										</div>
									</div>
								</div>
								<form action="CheckoutController" method="post">
									<input type="hidden" name="pizzaId"
										value="<%=request.getParameter("pizzaId")%>">
									<div class="row">
										<div class="col-12">
											<div class="form-group">
												<label for="first-name">First Name*</label> <input
													id="first-name" name="firstName" type="text"
													class="form-control" required>
											</div>
										</div>
										<div class="col-12">
											<div class="form-group">
												<label for="last-name">Last Name*</label> <input
													id="last-name" name="lastName" type="text"
													class="form-control" required>
											</div>
										</div>
										<div class="col-12">
											<div class="form-group">
												<label for="email">Email</label> <input id="email"
													name="email" class="form-control" type="email">
											</div>
										</div>
										<div class="col-12">
											<div class="form-group">
												<label for="address">Address*</label> <input id="address"
													name="address" class="form-control" type="text" required>
											</div>
										</div>
										<div class="col-12">
											<div class="form-group">
												<label for="quantity">Quantity*</label> <input id="quantity"
													name="quantity" type="number" class="form-control" required>
											</div>
										</div>
										<div class="col-12">
											<button type="submit" class="btn btn-primary">Place
												Order</button>
										</div>
									</div>
									<%
									if (request.getAttribute("orderConfirmationMessage") != null) {
									%>
									<div class="alert alert-success" role="alert">
										<%=request.getAttribute("orderConfirmationMessage")%>
									</div>
									<%
									}
									%>
								</form>

							</div>
						</div>
					</div>
					<div class="col-12 col-lg-4">
						<div class="heading-part mb-30 mb-sm-20">
							<h3>Your order</h3>
						</div>
						<%
						// Retrieve the pizza details from the request attribute set by the servlet
						Pizza pizza = (Pizza) request.getAttribute("pizza");

						if (pizza != null) {
						%>
						<div class="checkout-products sidebar-product mb-60">
							<ul>
								<li>
									<div class="pro-media">
										<img
											alt="pizzon"
											src="<%=pizza.getImage()%>">
									</div>
									<div class="pro-detail-info">
										<a
											href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/shop-detail.html"
											class="product-title"><%=pizza.getName()%></a>
										<div class="price-box">
											<span class="price">$<%=pizza.getPrice()%></span>
										</div>
										<div class="checkout-qty"></div>
									</div>
								</li>
							</ul>
						</div>
						<button class="btn full btn-color">Place order</button>
					</div>
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
	</section>

	<div class="top-scrolling">
		<a href="#top" class="scrollTo"><i class="fa fa-angle-up"
			aria-hidden="true"></i></a>
	</div>

	<%@ include file="/include/footer.jsp"%>

</body>
<%@ include file="/include/js.jsp"%>
</html>