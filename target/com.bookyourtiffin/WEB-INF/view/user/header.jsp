<%@page import="com.project.utils.Basemethods"%>
<header>
	<div id="header">
		<div class="container">
			<div class="header-container row">
				<div class="logo">
					<a href="index.html" title="index">
						<div>
							<%-- <img
								src="<%=request.getContextPath()%>/userResources/images/latestlogo.png"
								alt="logo" style="height: 130px; width: 150px;"> --%>
						</div>
					</a>
				</div>
				<div class="fl-nav-menu">
					<nav>
						<div class="mm-toggle-wrap">
							<div class="mm-toggle">
								<i class="icon-align-justify"></i><span class="mm-label">Menu</span>
							</div>
						</div>
						<div class="nav-inner">
							<!-- BEGIN NAV -->
							<ul id="nav" class="hidden-xs">
								<li><a class="level-top" href="index"><span>Home</span></a></li>



								<%-- <li> <a class="level-top" href="<%=request.getContextPath()%>/user/addFeedback"><span>Feedback</span></a></li>
                      --%>
								<li class="fl-custom-tabmenulink"><a class="level-top"
									href="<%=request.getContextPath()%>/user/viewVendor"><span>Vendors��</span></a>
								</li>



								<li class="fl-custom-tabmenulink"><a
									href="<%=request.getContextPath()%>/user/addUserFeedback"
									class="level-top"> <span>Feedback</span>
								</a></li>

								<li class="fl-custom-tabmenulink"><a
									href="<%=request.getContextPath()%>/user/addComplain"
									class="level-top"> <span>Get Help</span>
								</a></li>

								<li class="fl-custom-tabmenulink"><a
									href="<%=request.getContextPath()%>/user/aboutUs"
									class="level-top"> <span>About Us</span>
								</a></li>
							</ul>
							<!--nav-->
						</div>
					</nav>
				</div>

				<!--row-->

				<div class="fl-header-right">
					<div class="fl-links">
						<div class="no-js">
							<a title="<%=Basemethods.getUser()%>" class="clicker"></a>
							<div class="fl-nav-links">
								<ul class="links">
									<li><a href="dashboard.html" title="My Account">My
											Account</a></li>

									<li><a href="blog.html" title="Blog"><span>My
												Orders</span></a></li>

									<li class="last"><a href="/logout" title="Login"><span>Logout</span></a></li>
								</ul>
							</div>
						</div>
					</div>


					<!-- <div class="my-order">
						<a href="#"><i class="fas fa-biking"></i>Book Now</a>
					</div>
 -->
					<!--links-->
				</div>
			</div>
		</div>
	</div>
</header>