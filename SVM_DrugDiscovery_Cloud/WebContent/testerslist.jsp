<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="zxx">
<head>
<title>Alleviating A Medical Category Bootstrap responsive Web
	Template | Home :: w3layouts</title>
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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery-ui.css" />


<link
	href="




${pageContext.request.contextPath}/resources/css/bootstrap.css"
	type="text/css" rel="stylesheet" media="all">
<link
	href="




${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css" rel="stylesheet" media="all">
<!-- font-awesome icons -->
<link
	href="




${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css"
	rel="stylesheet">
<!-- //Custom Theme files -->
<link
	href="




${pageContext.request.contextPath}/resources/css/minimal-slider.css"
	rel='stylesheet' type='text/css' />
<link rel="stylesheet"
	href="




${pageContext.request.contextPath}/resources/css/flexslider.css"
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

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap Delete Confirmation Modal</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
	font-family: 'Varela Round', sans-serif;
}
.modal-confirm {		
	color: #636363;
	width: 400px;
}
.modal-confirm .modal-content {
	padding: 20px;
	border-radius: 5px;
	border: none;
	text-align: center;
	font-size: 14px;
}
.modal-confirm .modal-header {
	border-bottom: none;   
	position: relative;
}
.modal-confirm h4 {
	text-align: center;
	font-size: 26px;
	margin: 30px 0 -10px;
}
.modal-confirm .close {
	position: absolute;
	top: -5px;
	right: -2px;
}
.modal-confirm .modal-body {
	color: #999;
}
.modal-confirm .modal-footer {
	border: none;
	text-align: center;		
	border-radius: 5px;
	font-size: 13px;
	padding: 10px 15px 25px;
}
.modal-confirm .modal-footer a {
	color: #999;
}		
.modal-confirm .icon-box {
	width: 80px;
	height: 80px;
	margin: 0 auto;
	border-radius: 50%;
	z-index: 9;
	text-align: center;
	border: 3px solid #f15e5e;
}
.modal-confirm .icon-box i {
	color: #f15e5e;
	font-size: 46px;
	display: inline-block;
	margin-top: 13px;
}
.modal-confirm .btn, .modal-confirm .btn:active {
	color: #fff;
	border-radius: 4px;
	background: #60c7c1;
	text-decoration: none;
	transition: all 0.4s;
	line-height: normal;
	min-width: 120px;
	border: none;
	min-height: 40px;
	border-radius: 3px;
	margin: 0 5px;
}
.modal-confirm .btn-secondary {
	background: #c1c1c1;
}
.modal-confirm .btn-secondary:hover, .modal-confirm .btn-secondary:focus {
	background: #a8a8a8;
}
.modal-confirm .btn-danger {
	background: #f15e5e;
}
.modal-confirm .btn-danger:hover, .modal-confirm .btn-danger:focus {
	background: #ee3535;
}
.trigger-btn {
	display: inline-block;
	margin: 100px auto;
}
</style>

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


<style>
table {
	border-collapse: collapse;
	width: 70%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: black;
	color: white;
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

					

				</ul>
			</div>

		</nav>
		
	</header>
	<!-- main image slider container -->

	<!-- main image slider container -->
	<!-- end of main image slider container -->
	<!--about-->


	<br>
	<br>
	<br>
	<br>
	<div align="center">

		<h3 class="subheading-w3-agile">Drug Details</h3>
		<!-- stats -->

<div class="about" align="center">
		<div class="abt-layer">
			<div class="container">
				<div class="about-main">
					<div class="about-right">
						<h3 class="subheading-w3-agile">Upload and Train Your Drug
							Component</h3>
						<!-- stats -->
						<div class="stats">
							<div id="divLoading"></div>

							<div class="stats_inner">
							
<c:forEach var="msg" items="${msg}">

<h5 align="center" style="color: white;">Name:  ${msg.name }</h5>

<h5 align="center" style="color: white;">Email: ${msg.email}</h5>
<h5 align="center" style="color: white;">UserName: ${msg.username}</h5>
<h5 align="center" style="color: white;">Phone: ${msg.phone}</h5>

<c:forEach var="owner" items="${owner }">
					<c:if test="${owner.status=='Request pending' }">
					
					<a href="accept/${owner.username}/${owner.testername}" style="color: yellow;">Accept</a>
					<a href="#myModal" class="trigger-btn" data-toggle="modal"  style="color: red;">Delete</a>
					
					
					</c:if>
					
					
					<c:if test="${owner.status=='Accepted' }">
					
					<td>Accepted</td>
					
					</c:if>
		<div id="myModal" class="modal fade">
	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header flex-column">
				<div class="icon-box">
					<i class="material-icons">&#xE5CD;</i>
				</div>						
				<h4 class="modal-title w-100">Are you sure?</h4>	
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
			</div>
			<div class="modal-body">
				<p>Do you really want to delete this Request? This process cannot be undone.</p>
			</div>
			<div class="modal-footer justify-content-center">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
				<button type="button" class="btn btn-danger" ><a href="delete/${owner.username}/${owner.testername}">Delete</a></button>

			</div>
		</div>
	</div>
</div>    
					
</c:forEach>

</c:forEach>

								</div>
							</div>
						</div>
						<!-- //stats -->

					</div>
				</div>

			</div>
		</div>






















					




	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-2.2.3.min.js"></script>
	<!-- //js -->
	<script
		src="${pageContext.request.contextPath}/resources/js/minimal-slider.js"></script>
	

	


	
	<script src=" ${pageContext.request.contextPath}/resources/js/move-top.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/easing.js"></script>
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
	<script src="${pageContext.request.contextPath}/resources/js/SmoothScroll.min.js"></script>
	<!-- //smooth-scrolling-of-move-up -->
	<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="${pageContext.request.contextPath}/resources/js/bootstrap.js"></script>
</body>
</html>