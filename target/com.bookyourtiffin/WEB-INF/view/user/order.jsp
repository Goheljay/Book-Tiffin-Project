<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book Your Tiffin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="Default Description">
<meta name="keywords" content="fashion, store, E-commerce">
<meta name="robots" content="*">
<meta name="viewport" content="initial-scale=1.0, width=device-width">
<link rel="icon" href="#" type="image/x-icon">
<link rel="shortcut icon" href="#" type="image/x-icon">

<!-- CSS Style -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/font-awesome.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/font-awesome1.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/revslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/owl.carousel.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/owl.theme.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/jquery.bxslider.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/jquery.mobile-menu.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/style.css"
	media="all">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/responsive.css"
	media="all">

<link
	href="https://fonts.googleapis.com/css?family=Merriweather:300,300i,400,400i,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700"
	rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:700,600,800,400'
	rel='stylesheet' type='text/css'>
<link
	href="https://fonts.googleapis.com/css?family=Rubik:400,400i,500,500i,700,700i,900"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/userResources/css/custom.css">
</head>
<body>
	<div id="page">
		<div class="top-section">
			<div class="container">
				<jsp:include page="header.jsp"></jsp:include>
				<!--container-->

			</div>
		</div>
		<div class="container">
			<div class="inside-header">
				<div class="container">
					<div class="row">
						<div class="col-lg-7">
							<div class="page-heading">
								<div class="page-title">
									<h2>Booking</h2>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- BEGIN Main Container col2-right -->
		<section class="main-container col2-right-layout">
			<div class="main container">
				<div class="row">
					<section
						class="col-main col-sm-9 col-xs-12 wow bounceInUp animated animated"
						style="visibility: visible;">

						<!-- ###################################################
							 #################### Meal Type ################### 
							 ##################################################-->

						<div class="my-account pb-0">
							<div class="my-wishlist block">
								<h2 class="block-title">Meal Type</h2>
								<div class="row">
									<div class="col-lg-12">

										<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

										<c:forEach var="i" varStatus="j" items="${mealList}">
											<div class="malebox" id="bookingbox-${i.id}-${i.mealType}">
												<div class="maleboximgdiv">
													<c:if test="${j.count eq 1 }">
														<img class="maleboximg"
															src="<%=request.getContextPath()%>/userResources/images/category_1.png"
															alt="Break-fast">
													</c:if>
													<c:if test="${j.count eq 2 }">
														<img class="maleboximg"
															src="<%=request.getContextPath()%>/userResources/images/category_2.png"
															alt="Brunch">
													</c:if>
													<c:if test="${j.count eq 3 }">
														<img class="maleboximg"
															src="<%=request.getContextPath()%>/userResources/images/category_3.png"
															alt="Lunch">
													</c:if>
													<c:if test="${j.count eq 4 }">
														<img class="maleboximg"
															src="<%=request.getContextPath()%>/userResources/images/category_4.png"
															alt="Dinner">
													</c:if>

													<span>${i.mealType}</span>

												</div>
											</div>
										</c:forEach>

									</div>
								</div>
							</div>
						</div>

						<!-- ###################################################
							 #################### Duration ##################### 
							 ###################################################-->

						<div class="my-account pb-0 mt--50">
							<div class="my-wishlist block">
								<h2 class="block-title">Duration</h2>

								<div class="row" id="durationDiv"></div>
							</div>
						</div>

						<!-- ###################################################
							 #################### Quantity ################### 
							 ##################################################-->

						<div class="my-account pb-0 mt--50">
							<div class="my-wishlist block">
								<h2 class="block-title">Quantity</h2>

								<div class="row">
									<div class="col-lg-12">
										<div class="durationbox quantity" id="quantity1"
											onclick="selectQuantity(1)">
											<div class="durationboximgdiv">
												<h1>1</h1>
												<span>Person</span>
											</div>
										</div>

										<div class="durationbox quantity" id="quantity2"
											onclick="selectQuantity(2)">
											<div class="durationboximgdiv">
												<h1>2</h1>
												<span>Persons</span>
											</div>
										</div>

										<div class="durationbox quantity" id="quantity3"
											onclick="selectQuantity(3)">
											<div class="durationboximgdiv">
												<h1>3</h1>
												<span>Persons</span>
											</div>
										</div>

										<div class="durationbox quantity" id="quantity4"
											onclick="selectQuantity(4)">
											<div class="durationboximgdiv">
												<h1>4</h1>
												<span>Persons</span>
											</div>
										</div>
									</div>

								</div>
							</div>
						</div>

					</section>
					<!--col-main col-sm-9 wow bounceInUp animated-->
					<aside
						class="col-right sidebar col-sm-3 col-xs-12 wow bounceInUp animated animated"
						style="visibility: visible;">
						<div class="block block-account">
							<div class="block-title">Booking Details</div>
							<div class="block-content" id="bookingDetails"></div>
							<!--block-content-->
						</div>
						<!--block block-account-->

						<div class="custom-slider">
							<div class="my-order">
								<a href="order"><i class="fas fa-biking"></i>Book Now</a>
							</div>
						</div>
					</aside>
					<!--col-right sidebar col-sm-3 wow bounceInUp animated-->
				</div>
				<!--row-->
			</div>
			<!--main container-->
		</section>
		<!--main-container col2-left-layout-->

		<jsp:include page="footer.jsp"></jsp:include>

	</div>
	<!--page-->

	<!-- JavaScript -->
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/jquery-3.4.1.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/common.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/jquery.bxslider.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/jquery.flexslider.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/owl.carousel.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/jquery.mobile-menu.min.js"></script>
	<script type="text/javascript"
		src="<%=request.getContextPath()%>/userResources/js/custombooking.js"></script>

</body>
</html>