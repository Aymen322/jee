

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
		style="background: #121619 url(https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/blog-9.jpg) no-repeat center/cover;">
		<div class="container">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="page-title">
						<h1 class="page-headding">Chicken Breast</h1>
						<ul>
							<li><a
								href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/index.html"
								class="page-name">Home</a></li>
							<li><a
								href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/shop-categories.html"
								class="page-name">Order Online</a></li>
							<li>Chicken bresast</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="product-det pt-100">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-md-6 col-12">
					<div class="align-center mb-md-30">
						<ul id="glasscase" class="gc-start">
											 <%
        // Retrieve the pizza details from the request attribute set by the servlet
        Pizza pizza = (Pizza) request.getAttribute("pizza");
        
        if (pizza != null) {
    %>
							<li><img class="gc-display-display" style="width: 369.5px; height: 369.5px;"
								src="<%=pizza.getImage()%>"
								alt="pizzon" /></li>
						</ul>
					</div>
				</div>
				<div class="col-xl-7 col-lg-7 col-md-6">
					<div class="shop-detail">

						<div class="shop-name">
							<h3 class="title-shop"><%=pizza.getName()%></h3>
							<div class="price-shop"> <span
									class="filter-price">$<%=pizza.getPrice()%></span>
							</div>
							<p class="shop-desc"><%=pizza.getDescription()%></p>
						</div>
						<div class="crust-choose">
							<label class="title-crust">Choose Your Crust</label>
							<ul class="Choose">
								<li class="tab-link"><a href="javascript:void(0)">Classic
										Hand Tossed</a></li>
								<li class="tab-link"><a href="javascript:void(0)">Wheat
										Thin Crust</a></li>
								<li class="tab-link"><a href="javascript:void(0)">Classic
										Hand Tossed</a></li>
							</ul>
						</div>
						<div class="crust-choose">
							<label class="title-crust">Size of Crust</label>
							<ul class="Size">
								<li class="tab-link"><a href="javascript:void(0)">Medium</a></li>
								<li class="tab-link"><a href="javascript:void(0)">Large</a></li>
								<li class="tab-link"><a href="javascript:void(0)">Regular</a></li>
							</ul>
						</div>
						<div class="quantity-product">
							<label class="quantity">Qty:</label> <input type="number"
								value="1" min="0" max="10"> <a href="ShoppingCartController?pizzaId=${pizza.getId()}" class="add-cart">
    <i class="fa fa-shopping-bag" aria-hidden="true"></i> Add to cart
</a>


	    <%
        } else {
    %>
    <p>No pizza details available.</p>
    <%
        }
    %>				</div>
						<div class="wiselist">
							<ul class="compare">
								<li><a href="#"><i class="fa fa-heart"
										aria-hidden="true"></i> Wishlist </a></li>
								<li><a href="#"><i class="fa fa-signal"
										aria-hidden="true"></i> Compare</a></li>
								<li><a href="#"><i class="fa fa-envelope"
										aria-hidden="true"></i> Email to Friends</a></li>
							</ul>
							<ul class="share">
								<li class="share-title">Share This :</li>
								<li><a href="#"><i class="fa fa-facebook"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"
										aria-hidden="true"></i></a></li>
								<li><a href="#"><i class="fa fa-instagram"
										aria-hidden="true"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="desc-tabbing pt-100">
		<div class="container">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="border-tab">
						<ul class="panel-tab">
							<li class="tab-link current" data-tab="tab-1"><a
								href="javascript:void(0)">Description</a></li>
							<li class="tab-link" data-tab="tab-3"><a
								href="javascript:void(0)">Reviews</a></li>
						</ul>
						<div class="product-desc-tab current" id="tab-1">
							<p>Pellentesque habitant morbi tristique senectus et netus et
								malesuada fames ac turpis egestas. Vestibulum tortor quam,
								feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu
								libero sit amet quam egestas semper. Aenean ultricies mi vitae
								est. Mauris placerat eleifend leo. Pellentesque habitant morbi
								tristique senectus et netus et malesuada fames ac turpis
								egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget,
								tempor sit amet, ante. Donec eu libero sit amet quam egestas
								semper. Aenean ultricies mi vitae est. Mauris placerat eleifend
								leo. tempor sit amet, ante. Donec eu libero sit amet quam
								egestas semper.</p>
							<p>Pellentesque habitant morbi tristique senectus et netus et
								malesuada fames ac turpis egestas. Vestibulum tortor quam,
								feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu
								libero sit amet quam egestas semper. Aenean ultricies mi vitae
								est. Mauris placerat eleifend leo. Pellentesque habitant morbi
								tristique senectus et netus et malesuada fames ac turpis
								egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget,
								tempor sit amet, ante. Donec eu libero sit amet quam egestas
								semper. Aenean ultricies mi vitae est. Mauris placerat eleifend
								leo.</p>
						</div>
						<div class="product-desc-tab" id="tab-3">
							<div class="comment-part">
								<h3>03 COMMENTS</h3>
								<ul>
									<li>
										<div class="comment-user">
											<img
												src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/comment-img1.jpg"
												alt="comment-img">
										</div>
										<div class="comment-detail">
											<span class="commenter"> <span>John Doe</span> (05 Jan
												2023)
											</span>
											<p>Lorem ipsum dolor sit amet adipiscing elit labore
												dolore that sed do eiusmod tempor labore dolore that magna
												aliqua. Ut enim ad minim veniam, exercitation.</p>
											<a href="#" class="reply-btn btn btn-color small">Reply</a>
										</div>
										<div class="clearfix"></div>
									</li>
									<li>
										<div class="comment-user">
											<img
												src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/comment-img2.jpg"
												alt="comment-img">
										</div>
										<div class="comment-detail">
											<span class="commenter"> <span>John Doe</span> (05 Jan
												2023)
											</span>
											<p>Lorem ipsum dolor sit amet adipiscing elit labore
												dolore that sed do eiusmod tempor labore dolore that magna
												aliqua. Ut enim ad minim veniam, exercitation.</p>
											<a href="#" class="reply-btn btn btn-color small">Reply</a>
										</div>
										<div class="clearfix"></div>
									</li>
									<li>
										<div class="comment-user">
											<img
												src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/comment-img3.jpg"
												alt="comment-img">
										</div>
										<div class="comment-detail">
											<span class="commenter"> <span>John Doe</span> (05 Jan
												2023)
											</span>
											<p>Lorem ipsum dolor sit amet adipiscing elit labore
												dolore that sed do eiusmod tempor labore dolore that magna
												aliqua. Ut enim ad minim veniam, exercitation.</p>
											<a href="#" class="reply-btn btn btn-color small">Reply</a>
										</div>
										<div class="clearfix"></div>
									</li>
								</ul>
							</div>
							<div class="leave-comment-part">
								<h3 class="reviews-head mb-30">Leave A Comment</h3>
								<form class="main-form">
									<div class="row">
										<div class="col-md-4">
											<div class="form-group">
												<input type="text" class="form-control" placeholder="Name"
													required="">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<input type="text" class="form-control"
													placeholder="Subject" required="">
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group">
												<input type="text" class="form-control" placeholder="Email"
													required="">
											</div>
										</div>
										<div class="col-12">
											<div class="form-group">
												<textarea class="form-control" placeholder="Message"
													rows="8"></textarea>
											</div>
										</div>
										<div class="col-12">
											<button type="submit" class="btn post-comm">Post
												Comment</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="releted-product ptb">
		<div class="container">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="headding-part text-center pb-50">
						<p class="headding-sub">Fresh From Pizzon</p>
						<h2 class="headding-title text-uppercase fw-bold">Related
							Products</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-3 col-lg-3 col-md-4 text-center pt-20">
					<div class="menu-img">
						<a href="shop-detail.html"><img
							src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/rel-1.png"
							alt="menu" class="menu-image"></a>
					</div>
					<a href="shop-detail.html" class="menu-title text-uppercase">margherita
						pizza</a>
					<p class="menu-des">Lorem Ipsum is simply dummy text of the
						printing and typesetting industry.</p>
					<span class="menu-price">$20.50</span>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-4 text-center pt-20">
					<div class="menu-img">
						<a href="shop-detail.html"><img
							src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/rel-1.png"
							alt="menu" class="menu-image"></a>
					</div>
					<a href="shop-detail.html" class="menu-title text-uppercase">RUM
						WITH SODA</a>
					<p class="menu-des">Lorem Ipsum is simply dummy text of the
						printing and typesetting industry.</p>
					<span class="menu-price">$20.50</span>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-4 text-center pt-20">
					<div class="menu-img">
						<a href="shop-detail.html"><img
							src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/rel-2.png"
							alt="menu" class="menu-image"></a>
					</div>
					<a href="shop-detail.html" class="menu-title text-uppercase">VEGETARIAN</a>
					<p class="menu-des">Lorem Ipsum is simply dummy text of the
						printing and typesetting industry.</p>
					<span class="menu-price">$20.50</span>
				</div>
				<div class="col-xl-3 col-lg-3 col-md-4 text-center pt-20">
					<div class="menu-img">
						<a href="shop-detail.html"><img
							src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/rel-3.png"
							alt="menu" class="menu-image"></a>
					</div>
					<a href="shop-detail.html" class="menu-title text-uppercase">PEPPERONI
						PIZZA</a>
					<p class="menu-des">Lorem Ipsum is simply dummy text of the
						printing and typesetting industry.</p>
					<span class="menu-price">$20.50</span>
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