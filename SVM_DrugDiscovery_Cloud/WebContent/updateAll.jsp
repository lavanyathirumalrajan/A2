<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="zxx">
<head>
<title>Drug Discovery</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8" />
<meta name="keywords"
	content="Alleviating Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<!-- Custom Theme files -->

<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/users.js"></script>


<link href="resources/css/bootstrap.css" type="text/css"
	rel="stylesheet" media="all">
<link href="resources/css/style.css" type="text/css" rel="stylesheet"
	media="all">
<link rel="stylesheet" href="resources/css/jquery-ui.css" />
<link href="resources/css/fontawesome-all.min.css" rel="stylesheet">
<!-- //Custom Theme files -->
<link href="resources/css/minimal-slider.css" rel='stylesheet'
	type='text/css' />
<link rel="stylesheet" href="resources/css/flexslider.css"
	type="text/css" media="screen" property="" />
<!-- online-fonts -->
<link href="//fonts.googleapis.com/css?family=Lato:400,700"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900"
	rel="stylesheet">
<!-- //online-fonts -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: "Lato", sans-serif;
}

.sidebar {
	height: 100%;
	width: 160px;
	position: fixed;
	z-index: 1;
	top: 0;
	left: 0;
	background-color: #025660;
	overflow-x: hidden;
	padding-top: 16px;
}

.sidebar a {
	padding: 6px 8px 6px 16px;
	text-decoration: none;
	font-size: 20px;
	color: white;
	display: block;
}

.sidebar a:hover {
	color: #f1f1f1;
}

.main {
	margin-left: 160px; /* Same as the width of the sidenav */
	padding: 0px 10px;
}

@media screen and (max-height: 450px) {
	.sidebar {
		padding-top: 15px;
	}
	.sidebar a {
		font-size: 18px;
	}
}
</style>
</head>
<body>

	<!-- header -->
	<header>

		<nav
			class="navbar navbar-expand-lg navbar-light bg-gradient-secondary">
			<h1>
				<a class="navbar-brand text-white" href="index.html">
					Alleviating </a>
			</h1>
			<button class="navbar-toggler ml-md-auto" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ml-lg-auto text-center">

					<li class="nav-item dropdown mr-3 mt-lg-0 mt-3"><img
						src="resources/images/user.png" class="nav-link dropdown-toggle"
						href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" />
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="findUser/${msg}">User Details</a>
							<div class="dropdown-divider"></div>
							<a class="dropdown-item" href="typo.html">Change Password</a>
						</div></li>
					<li class="nav-item active  mr-3 mt-lg-0 mt-3"><a
						class="nav-link" href="index.html">Home <span class="sr-only">(current)</span>
					</a></li>


				</ul>
			</div>

		</nav>
		<div class="sidebar">
			<br> <br> <br> <br> <a href="index.jsp"><i
				class="fa fa-fw fa-home"></i> Home</a>

		</div>
	</header>
	<!-- main image slider container -->

	<!-- main image slider container -->
	<!-- end of main image slider container -->
	<!--about-->


	<br>

	<div class="about" align="center">
		<div class="abt-layer">
			<div class="container">
				<div class="about-main">
					<div class="about-right">
						<h3 class="subheading-w3-agile">Change Password</h3>
						<!-- stats -->
						<div class="stats">
							<div id="divLoading"></div>

							<div class="stats_inner">
<form action="drugUpload" method="post"
									enctype="multipart/form-data">
									<input class="form-control date mb-3" id="name" name="name"
										type="text" 
										value="${msg.name}"> 
										<input class="form-control date mb-3"
										id="code" name="labcode" type="text" required="required"
										value="${msg.email}" >
										 <input
										class="form-control date mb-3" id="name" name="drugname"
										type="text" required="required" value="${msg.username}">
                                         <input class="form-control date mb-3" id="name" name="drugid"
										type="text" required="required" value="${msg.password }">

									     <input class="form-control date mb-3" id="datepicker"
										name="phone"  type="text"
										required="required" value="${msg.phone}"> 
										<input class="form-control date mb-3"
										type="text" name="labname" value="${msg.labname }"/>
                                        <input class="form-control date mb-3"
										type="text" name="labname" value="${msg.labcode }"/>


									<button type="submit" class="btn btn-agile btn-block w-100">Train
										and Upload</button>
								</form>

							</div>
						</div>
						<!-- //stats -->

					</div>
				</div>

			</div>
		</div>

	</div>
	<!--//about-->


	<!-- testimonials -->

	<!-- //testimonials -->

	<!-- choose -->

	<!-- //choose -->

	<!-- case studies -->

	<!-- //case studies -->
	<!-- footer -->

	<!-- //footer -->

	<!-- login  -->

	<!-- //login -->
	<!--/Register-->

	<!--//Register-->

	<!-- //footer -->
	<!-- js -->
	<script src="resources/js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	<script src="resources/js/minimal-slider.js"></script>
	<!-- flexSlider (for testimonials) -->
	<!-- Calendar -->
	<script src="resources/js/jquery-ui.js"></script>


	<!-- //Calendar -->

	<script defer src="resources/js/jquery.flexslider.js"></script>
	<script>
		$(window).load(function() {
			$('.flexslider').flexslider({
				animation : "slide",
				start : function(slider) {
					$('body').removeClass('loading');
				}
			});
		});
	</script>
	<!-- //flexSlider (for testimonials) -->

	<!-- script for password match -->

	<!-- script for password match -->
	<!-- start-smooth-scrolling -->
	<script src="resources/js/move-top.js"></script>
	<script src="resources/js/easing.js"></script>
	<script>
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();

				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
			});
		});
	</script>
	<!-- //end-smooth-scrolling -->
	<!-- smooth-scrolling-of-move-up -->
	<script>
		$(document).ready(function() {
			/*
			var defaults = {
			    containerID: 'toTop', // fading element id
			    containerHoverID: 'toTopHover', // fading element hover id
			    scrollSpeed: 1200,
			    easingType: 'linear' 
			};
			 */

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>
	<script src="resources/js/SmoothScroll.min.js"></script>
	<!-- //smooth-scrolling-of-move-up -->
	<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="resources/js/bootstrap.js"></script>
</body>
</html>