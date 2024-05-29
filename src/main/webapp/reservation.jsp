

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
		style="background: #121619 url(https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/images/blog-6.jpg) no-repeat center/cover;">
		<div class="container">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="page-title">
						<h1 class="page-headding wow fadeInUp">reservation</h1>
						<ul class="wow fadeInUp">
							<li><a
								href="https://themes.templatescoder.com/pizzon/html/demo/1-2/02-Classic/index.html"
								class="page-name">Home</a></li>
							<li>Reservation</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="online-booking reservation ptb">
		<div class="container">
			<div class="row">
				<div class="col-xl-12 col-lg-12 col-md-12">
					<div class="headding-part text-center">
						<p class="headding-sub wow fadeInUp">Make Online Reservation</p>
						<h2 class="headding-title text-uppercase fw-bold wow fadeInUp">Book
							a table</h2>
					</div>
				</div>
			</div>
			<form class="wow fadeInUp" action="CheckoutController" method="post">
				<div class="row">
					<div class="col-xl-6 col-lg-6 col-md-6">
						<div class="form-group">
							<input type="text" class="form-control" name="firstName"
								placeholder="First Name" required>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6">
						<div class="form-group">
							<input type="text" class="form-control" name="lastName"
								placeholder="Last Name" required>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6">
						<div class="form-group">
							<input type="text" class="form-control" name="address"
								placeholder="address" required>
						</div>
					</div>
					<div class="col-xl-6 col-lg-6 col-md-6">
						<div class="form-group">
							<input type="email" class="form-control" name="email"
								placeholder="Email Address" required>
						</div>
					</div>
					<div class="col-xl-12 col-lg-12 col-md-12 text-center">
						<input type="submit" name="submit" value="Book a table"
							class="table-book">
					</div>
				</div>
			</form>

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