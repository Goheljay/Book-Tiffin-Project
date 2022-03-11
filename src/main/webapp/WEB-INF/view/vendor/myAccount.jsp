<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Book Your Tiffin</title>
<!-- plugins:css -->
<link rel="stylesheet"
	1
	href="<%=request.getContextPath()%>/adminResources/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/jquery.toast.min.css">
<!-- endinject -->
<!-- Plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/adminResources/image/favicon.png" />
</head>

<body class="sidebar-light">

	<div class="container-scroller">
		<!-- partial:../../partials/_navbar.html -->
		<!-- partial -->
		<!--<div class="container-fluid page-body-wrapper">  -->
		<!-- partial:partials/_navbar.html -->

		<jsp:include page="header.jsp"></jsp:include>

		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->


			<jsp:include page="menu.jsp"></jsp:include>


			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row grid-margin">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header">
									<h4 class="mb-0 mt-2 col-3">Edit Profile</h4>
								</div>
								<div class="card-body">
									<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
									<%@taglib prefix="f"
										uri="http://www.springframework.org/tags/form"%>

									<f:form class="cmxform" onsubmit="return validateAreaDetais()"
										id="commentForm" method="post" action="saveVendor"
										modelAttribute="vendorVO">
										<fieldset>
											<div class="form-group ">
												<label for="range-from">Name</label>
												<f:input id="timefrom" class="form-control"
													name="range-from" path="fullName" type="text" />
											</div>

											<div class="form-group ">
												<label for="range-from">Username</label>
												<f:input id="timefrom" class="form-control"
													name="range-from" path="loginvo.username" type="text" />
											</div>

											<div class="form-group ">
												<label for="range-from">Contect Number</label>
												<f:input id="timefrom" class="form-control"
													name="range-from" path="contactno" type="text" />
											</div>

											<label for="range-from">Select City</label>
											<f:select id="cityId" class="form-control"
												name="cityVO.id" path="cityVO.id">
												<!-- <option value="">Select City</option> -->
												<c:forEach items="${cityList}" var="i">
													<f:option value="${i.id}">${i.cityName}</f:option>
												</c:forEach>
											</f:select>
											<br>

											<div class="form-group ">
												<label for="range-from">Address</label>
												<f:input id="timefrom" class="form-control"
													name="range-from" path="address" type="text" />
											</div>
											
											
											<f:hidden path="loginvo.loginId" />
											<f:hidden path="loginvo.enabled" />
											<f:hidden path="loginvo.password" />
											<f:hidden path="loginvo.role" />
											<f:hidden path="id" />
											<f:hidden path="status" />
											<f:hidden path="flag"/>
											<f:hidden path="fileName"/>
											<f:hidden path="filePath"/>
											
											<input class="btn btn-primary" type="submit" value="Submit">
										</fieldset>
									</f:form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->

				<jsp:include page="footer.jsp"></jsp:include>

				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- plugins:js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.validate.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/bootstrap-maxlength.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- inject:js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/off-canvas.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/hoverable-collapse.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/template.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/settings.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/bt-maxLength.js"></script>
	<!-- End custom js for this page-->

	<script
		src="<%=request.getContextPath()%>/adminResources/js/bt-maxLength.js"></script>

	<script
		src="<%=request.getContextPath()%>/adminResources/js/jquery.toast.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/toastDemo.js"></script>

	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/toaster.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/custom/area.js"></script>

</body>

</html>
