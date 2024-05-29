<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="model.Pizza"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Chef"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<%@ include file="/include/navbar.jsp"%>
	<section class="banner" id="top">
		<div class="banner-carousel owl-carousel">
			<div class="banner-slide">
				<div class="container">
					<div class="banner-box">
						<div class="banner-text">
							<div class="banner-center">
								<h2 class="banner-headding">
									Quality F<span>oo</span>ds
								</h2>
								<p class="banner-sub-hed">Healthy Food for healthy body</p>
							</div>
						</div>
						<div class="banner-images">
							<div class="all-img-banner">
								<img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/banner-bg-1.png"
									alt="banner" class="pizza-img"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/banner-bg-2.png"
									alt="banner" class="pizza-it pizza-1"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/banner-bg-3.png"
									alt="banner" class="pizza-it pizza-2"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/banner-bg-4.png"
									alt="banner" class="pizza-it pizza-3"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/banner-bg-5.png"
									alt="banner" class="pizza-it pizza-4">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="banner-slide-2">
				<div class="container">
					<div class="banner-box">
						<div class="banner-text">
							<div class="banner-center">
								<h2 class="banner-headding">
									Quality F<span>oo</span>ds
								</h2>
								<p class="banner-sub-hed">Healthy Food for healthy body</p>
							</div>
						</div>
						<div class="banner-images">
							<div class="all-img-banner">
								<img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/pizza-banner-1.png"
									alt="banner" class="pizza-img"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/pizza-1.png"
									alt="banner" class="pizza-it pizza-1"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/pizza-2.png"
									alt="banner" class="pizza-it pizza-2"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/pizza-3.png"
									alt="banner" class="pizza-it pizza-3"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/pizza-4.png"
									alt="banner" class="pizza-it pizza-4"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/pizza-5.png"
									alt="banner" class="pizza-it pizza-5"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/pizza-6.png"
									alt="banner" class="pizza-it pizza-6">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="banner-slide-3">
				<div class="container">
					<div class="banner-box">
						<div class="banner-images">
							<div class="all-img-banner">
								<img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/pizza-banner-2.png"
									alt="banner" class="pizza-img"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/pizza-7.png"
									alt="banner" class="pizza-it pizza-1"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/pizza-8.png"
									alt="banner" class="pizza-it pizza-2"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/pizza-9.png"
									alt="banner" class="pizza-it pizza-3"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/pizza-10.png"
									alt="banner" class="pizza-it pizza-4"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/pizza-11.png"
									alt="banner" class="pizza-it pizza-5"> <img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/pizza-12.png"
									alt="banner" class="pizza-it pizza-6">
							</div>
						</div>
						<div class="banner-text">
							<div class="banner-center">
								<h2 class="banner-headding">
									Quality F<span>oo</span>ds
								</h2>
								<p class="banner-sub-hed">Healthy Food for healthy body</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="order-section ptb">
		<div class="container">
			<div class="row">
				<div class="order-top">
					<img
						src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/order-top.png"
						alt="layer">
				</div>
				<div
					class="col-xl-4 col-lg-4 col-md-4 servose-box text-center padding-lf wow fadeInUp">
					<img
						src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/order-1.svg"
						alt="order" class="order-img">
					<h2 class="order-title text-uppercase">order your Food</h2>
					<p class="order-des">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eius-Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eius-Lorem ipsum dolor sit
						amet, consectetur adipisicing elit, sed do eius-</p>
				</div>
				<div
					class="col-xl-4 col-lg-4 col-md-4 servose-box text-center padding-lf wow fadeInUp">
					<img
						src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/order-2.svg"
						alt="delivery" class="order-img">
					<h2 class="order-title text-uppercase">delivery or pick up</h2>
					<p class="order-des">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eius-Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eius-Lorem ipsum dolor sit
						amet, consectetur adipisicing elit, sed do eius-</p>
				</div>
				<div
					class="col-xl-4 col-lg-4 col-md-4 servose-box text-center padding-lf wow fadeInUp">
					<img
						src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/order-3.svg"
						alt="delicious" class="order-img">
					<h2 class="order-title text-uppercase">delicious receipe</h2>
					<p class="order-des">Lorem ipsum dolor sit amet, consectetur
						adipisicing elit, sed do eius-Lorem ipsum dolor sit amet,
						consectetur adipisicing elit, sed do eius-Lorem ipsum dolor sit
						amet, consectetur adipisicing elit, sed do eius-</p>
				</div>
				<div class="order-bottom">
					<img
						src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/order-bottom.png"
						alt="layer">
				</div>
			</div>
		</div>
	</section>



	<section class="special-menu ptb pt-140">
		<div class="container">
			<div class="menu-top-bg">
				<img
					src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/menu-top-bg.png"
					alt="meu-bg">
			</div>
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="headding-part text-center pb-50">
						<p class="headding-sub wow fadeInUp">Fresh From Pizzon</p>
						<h2 class="headding-title text-uppercase fw-bold wow fadeInUp">Our
							Special Menu</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="special-tab text-center wow fadeInUp">
						<ul id="tabs" class="nav nav-tabs" role="tablist">
							<li class="text-uppercase fw-bold nav-item current"
								role="presentation"><a href="#tab-1"
								class="nav-link active" id="all" data-bs-toggle="tab"
								data-bs-target="#data_all" role="tab" aria-selected="true">
									All</a></li>
							<li class="text-uppercase fw-bold nav-item" role="presentation">
								<a href="#tab-2" class="nav-link" id="drinks"
								data-bs-toggle="tab" data-bs-target="#data_drinks" role="tab"
								aria-selected="false"> Drinks</a>
							</li>
							<li class="text-uppercase fw-bold nav-item" role="presentation">
								<a href="#tab-3" class="nav-link" id="salads"
								data-bs-toggle="tab" data-bs-target="#data_salads" role="tab"
								aria-selected="false"> Salads</a>
							</li>
							<li class="text-uppercase fw-bold nav-item" role="presentation">
								<a href="#tab-4" class="nav-link" id="pasta"
								data-bs-toggle="tab" data-bs-target="#data_pasta" role="tab"
								aria-selected="false"> pasta</a>
							</li>
							<li class="text-uppercase fw-bold nav-item" role="presentation">
								<a href="#tab-5" class="nav-link" id="burgers"
								data-bs-toggle="tab" data-bs-target="#data_burgers" role="tab"
								aria-selected="false"> burgers</a>
							</li>
							<li class="text-uppercase fw-bold nav-item" role="presentation">
								<a href="#tab-6" class="nav-link" id="deserts"
								data-bs-toggle="tab" data-bs-target="#data_deserts" role="tab"
								aria-selected="false"> deserts</a>
							</li>
							<li class="text-uppercase fw-bold nav-item" role="presentation">
								<a href="#tab-7" class="nav-link" id="pizzas"
								data-bs-toggle="tab" data-bs-target="#data_pizzas" role="tab"
								aria-selected="false"> pizzas</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="tab-content wow fadeInUp">
				<div role="tabpanel"
					class="row our-menu-panel tab-pane fade in active show"
					role="tabpanel" id="data_all" aria-labelledby="all">
					<%
					List<Pizza> pizzas = (List<Pizza>) request.getAttribute("pizzas");

					if (pizzas != null) {
						for (Pizza pizza : pizzas) {
					%>
					<div class="col-xl-3 col-lg-3 col-md-4 text-center menu-box">
						<div class="menu-img">
							<a href="PizzaDetailController?pizzaId=<%=pizza.getId()%>"> <!-- Link to pizzadetail.jsp with pizza ID as parameter -->
								<img src="<%=pizza.getImage()%>" alt="menu" class="menu-image">
							</a>
						</div>
						<a href="PizzaDetailController?pizzaId=<%=pizza.getId()%>"
							class="menu-title text-uppercase"><%=pizza.getName()%></a>
						<p class="menu-des"><%=pizza.getDescription()%></p>
						<span class="menu-price">$<%=pizza.getPrice()%></span>
					</div>

					<%
					}
					} else {
					%>
					<div class="col-12 text-center">
						<p>No pizzas available</p>
					</div>
					<%
					}
					%>
				</div>

			</div>


			<div class="menu-bottom-bg">
				<img
					src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/menu-bottom-bg.png"
					alt="menu-bg">
			</div>
		</div>
	</section>

	<section class="online-booking ptb">
		<div class="container">
			<div class="row">
				<div class="col-xl-6 col-lg-6 col-md-6 relative wow fadeInLeft">
					<div class="max-w-390">
						<div class="headding-part">
							<p class="headding-sub">Fresh From Pizzon</p>
							<h2 class="headding-title text-uppercase fw-bold">BOOK
								ONLINE</h2>
						</div>
						<p class="online-des">Sit amet, consectetur adipiscing elit
							quisque eget maximus velit, non eleifend libero curabitur dapibus
							mauris sed leo cursus aliquetcras suscipit. Sit amet, consectetur
							adipiscing elit quisque eget maximus velit, non eleifend libero
							curabitur</p>
						<a href="tel:1234567890" class="online-call">+ 91 123 456 789
							0</a>
					</div>
				</div>
				<div
					class="col-xl-6 col-lg-6 col-md-6 text-center relative wow fadeInRight">
					<h2 class="book-table text-uppercase">Book a table</h2>
					<form class="online-order-form">
						<div class="form-group">
							<input type="text" class="form-control" id="name"
								placeholder="Name" required>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="email"
								placeholder="Email" required>
						</div>
						<div class="form-group">
							<select name="sources" id="sources"
								class="custom-select sources form-control"
								data-placeholder="How many persons?">
								<option value="profile" selected>Person 5</option>
								<option value="word">Person 4</option>
								<option value="hashtag">Person 3</option>
							</select>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" id="date"
								placeholder="Date" required>
						</div>
						<button type="submit" class="more-table-v">book now</button>
					</form>
				</div>
			</div>
		</div>
	</section>

	<section class="chef ptb pt-120 pb-120">
		<div class="chef-top-bg">
			<img
				src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/chef-top-bg.png"
				alt="chef-bg">
		</div>
		<div class="container">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="headding-part pb-50 text-center">
						<p class="headding-sub wow fadeInUp">Meet our experts</p>
						<h2 class="headding-title text-uppercase fw-bold wow fadeInUp">Our
							Best Chef</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div style="width: 202.5px; height: 281.25px;">
						<%
						List<Chef> chefs = (List<Chef>) request.getAttribute("chefs");
						if (chefs != null && !chefs.isEmpty()) {
							for (Chef chef : chefs) {
						%>
						<div class="chef-item">
							<div class="chef-box text-center">
								<div class="chef-hover">
									<img src="<%=chef.getImage()%>" alt="chef" class="chef-img">
								</div>
								<p class="chef-name text-uppercase fw-bold"><%=chef.getName()%></p>
								<span class="chef-ct"><%=chef.getSpecialty()%></span>
							</div>
						</div>
						<%
						}
						} else {
						%>
						<div class="col-12 text-center">
							<p>No chefs available</p>
						</div>
						<%
						}
						%>
					</div>

				</div>
			</div>
		</div>
		<div class="chef-bottom-bg">
			<img
				src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/chef-bottom-bg.png"
				alt="chef-bg">
		</div>
	</section>


	<section class="news ptb">
		<div class="container">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="headding-part pb-50 text-center">
						<p class="headding-sub wow fadeInUp">Recent Events</p>
						<h2 class="headding-title text-uppercase fw-bold wow fadeInUp">Latest
							News</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xl-4 col-lg-4 col-md-4 news-part wow fadeInUp">
					<div class="new-box">
						<div class="news-img">
							<a
								href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/blog-detail.html">
								<img
								src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/news-1.jpg"
								alt="news" class="news-image">
							</a>
							<div class="text-uppercase news-date">
								<span>15 <br>june
								</span>
							</div>
							<span class="news-date-bg"></span>
						</div>
						<ul>
							<li>By - John Doe</li>
							<li>0 Comments</li>
						</ul>
						<a
							href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/blog-detail.html"
							class="news-headline">Possession so comparison inquietude he
							conviction </a> <a
							href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/blog-detail.html"
							class="news-more">Read More</a>
					</div>
				</div>
				<div class="col-xl-4 col-lg-4 col-md-4 news-part wow fadeInUp">
					<div class="new-box">
						<div class="news-img">
							<a
								href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/blog-detail.html">
								<img
								src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/news-2.jpg"
								alt="news" class="news-image">
							</a>
							<div class="text-uppercase news-date">
								<span>15 <br>june
								</span>
							</div>
							<span class="news-date-bg"></span>
						</div>
						<ul>
							<li>By - John Doe</li>
							<li>0 Comments</li>
						</ul>
						<a
							href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/blog-detail.html"
							class="news-headline">Possession so comparison inquietude he
							conviction </a> <a
							href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/blog-detail.html"
							class="news-more">Read More</a>
					</div>
				</div>
				<div class="col-xl-4 col-lg-4 col-md-4 news-part wow fadeInUp">
					<div class="new-box">
						<div class="news-img">
							<a
								href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/blog-detail.html">
								<img
								src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/news-3.jpg"
								alt="news" class="news-image">
							</a>
							<div class="text-uppercase news-date">
								<span>15 <br>june
								</span>
							</div>
							<span class="news-date-bg"></span>
						</div>
						<ul>
							<li>By - John Doe</li>
							<li>0 Comments</li>
						</ul>
						<a
							href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/blog-detail.html"
							class="news-headline">Possession so comparison inquietude he
							conviction </a> <a
							href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/blog-detail.html"
							class="news-more">Read More</a>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="customer ptb">
		<div class="container">
			<div class="customer-inner">
				<div class="customer-top-bg">
					<img
						src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/customer-top-bg.png"
						alt="customer">
				</div>
				<div class="headding-part pb-50 text-center">
					<p class="headding-sub wow fadeInUp">What Say Our Clients</p>
					<h2 class="headding-title text-uppercase fw-bold wow fadeInUp">Customer
						Reviews</h2>
				</div>
				<div class="customer-slide owl-carousel wow fadeInUp">
					<div class="customer-detail">
						<div class="customer-img">
							<div class="customer-img-in">
								<img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/customer-1.png"
									alt="customer" class="customer-image">
								<p class="customer-name">John doe</p>
							</div>
						</div>
						<div class="customer-reviews">
							<p class="review-cus">The one day when the lady met this
								fellow and they knew it was much more than a hunch the first
								mate and his Skipper too will do their comforta The one day when
								the lady met this fellow and they knew it was much more than a
								hunch the first mate and his Skipper too will do their comforta
								The one day when the lady met this fellow and they knew it was
								much</p>
							<label class="post-name">john doe - <span>Designer</span></label>
						</div>
					</div>
					<div class="customer-detail">
						<div class="customer-img">
							<div class="customer-img-in">
								<img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/comment-img1.jpg"
									alt="customer" class="customer-image">
								<p class="customer-name">John doe</p>
							</div>
						</div>
						<div class="customer-reviews">
							<p class="review-cus">The one day when the lady met this
								fellow and they knew it was much more than a hunch the first
								mate and his Skipper too will do their comforta The one day when
								the lady met this fellow and they knew it was much more than a
								hunch the first mate and his Skipper too will do their comforta
								The one day when the lady met this fellow and they knew it was
								much</p>
							<label class="post-name">john doe - <span>Designer</span></label>
						</div>
					</div>
					<div class="customer-detail">
						<div class="customer-img">
							<div class="customer-img-in">
								<img
									src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/comment-img2.jpg"
									alt="customer" class="customer-image">
								<p class="customer-name">John doe</p>
							</div>
						</div>
						<div class="customer-reviews">
							<p class="review-cus">The one day when the lady met this
								fellow and they knew it was much more than a hunch the first
								mate and his Skipper too will do their comforta The one day when
								the lady met this fellow and they knew it was much more than a
								hunch the first mate and his Skipper too will do their comforta
								The one day when the lady met this fellow and they knew it was
								much</p>
							<label class="post-name">john doe - <span>Designer</span></label>
						</div>
					</div>
				</div>
				<div class="customer-bottom-bg">
					<img
						src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/customer-bottom-bg.png"
						alt="customer">
				</div>
			</div>
		</div>
	</section>

	<section class="about-pizzon relative ptb">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-xl-6 col-lg-6 col-md-6 wow fadeInLeft">
					<div class="max-w-390">
						<div class="headding-part">
							<p class="headding-sub">Delicious Restaurant</p>
							<h2 class="headding-title text-uppercase fw-bold">about
								pizzon</h2>
						</div>
						<p class="online-des">Sit amet, consectetur adipiscing elit
							quisque eget maximus velit, non eleifend libero curabitur dapibus
							mauris sed leo cursus aliquetcras suscipit. Sit amet, consectetur
							adipiscing elit quisque eget maximus velit, non eleifend libero
							curabitur Sit amet, consectetur adipiscing elit quisque eget
							maximus velit, non eleifend libero curabitur dapibus mauris sed
							leo cursus aliquetcras suscipit. Sit amet, consectetur adipiscing
							elit quisque eget maximus velit, non eleifend libero curabitur</p>
						<a
							href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/about.html"
							class="about-more-z com-btn">view more</a>
					</div>
				</div>
				<div class="col-xl-6 col-lg-6 col-md-6 wow fadeInRight">
					<div class="about-pizzon-img">
						<img
							src="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/about-pizzon.png"
							alt="about" class="pizzon-ab">
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