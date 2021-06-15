
<%@ page isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="zxx">

<head>
<title>Be Clinic Medical Category Bootstrap Responsive Website
	Template | Login :: W3layouts</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="UTF-8" />
<meta name="keywords"
	content="Be Clinic Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>
<style>
.grid-container {
  display: grid;
  grid-template-columns: auto auto auto auto;
  grid-gap: 10px;
  background-color: #2196F3;
  padding: 10px;
}

.grid-container > div {
  background-color: rgba(255, 255, 255, 0.8);
  text-align: center;
  padding: 20px 0;
  font-size: 30px;
}

.item1 {
  grid-row: 1 / span 2;
}
</style>
<!--// Meta tag Keywords -->

<!-- Custom-Files -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<!-- Bootstrap-Core-CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css"
	media="all" />
<!-- Style-CSS -->
<link href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" rel="stylesheet">
<!-- Font-Awesome-Icons-CSS -->
<!-- //Custom-Files -->

<!-- Web-Fonts -->
<link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700"
	rel="stylesheet">
<link
	href="//fonts.googleapis.com/css?family=Mukta:200,300,400,500,600,700,800&amp;subset=devanagari,latin-ext"
	rel="stylesheet">
<!-- //Web-Fonts -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
	background-color: maroon;
	color: white;
}
</style>




</head>

<body>
	<!-- main -->
	<div id="home">
		<!-- top header -->
		<header>
			<div class="top-bar py-3">
				<div class="container">
					<div class="row">
						<div
							class="col-xl-5 col-lg-6 col-md-8 top-social-agile text-lg-left text-center">
							<div class="row">
								<div class="col-4 header-top_w3layouts">
									<p class="text-bl">
										<span class="fa fa-map-marker mr-2"></span>Parma Via, Italy
									</p>
								</div>
								<div class="col-4 header-top_w3layouts">
									<p class="text-bl">
										<span class="fa fa-phone mr-2"></span>+1 000263676
									</p>
								</div>
								<!-- social icons -->
								<ul class="col-4 top-right-info">
									<li><a href="#"> <span class="fa fa-facebook-f"></span>
									</a></li>
									<li class="mx-3"><a href="#"> <span
											class="fa fa-twitter"></span>
									</a></li>
									<li><a href="#"> <span class="fa fa-google-plus"></span>
									</a></li>
									<li class="ml-3"><a href="#"> <span
											class="fa fa-pinterest-p"></span>
									</a></li>
								</ul>
								<!-- //social icons -->
							</div>
						</div>
						<div
							class="col-xl-7 col-lg-6 col-md-4 top-social-agile text-md-right text-center mt-md-0 mt-2">
							<div class="row">
								<div class="offset-xl-6 offset-lg-4"></div>
								<div
									class="col-xl-3 col-lg-4 col-6 top-w3layouts p-md-0 text-right">
									<!-- login -->

									<!-- //login -->
								</div>
								<div
									class="col-xl-3 col-lg-4 col-6 header-w3layouts text-md-right text-left">
									<!-- register -->

									<!-- //register -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- //top header -->

		<!-- second header -->
		<div class="main-top">
			<div class="container">
				<div
					class="header d-md-flex justify-content-between align-items-center py-3">
					<!-- logo -->
					<div id="logo">
						<h1>
							<a href="index.html"> <span class="fa fa-user-md mr-2"></span>
								<span class="logo-sp">Be</span> Clinic
							</a>
						</h1>
					</div>
					<!-- //logo -->
					<!-- nav -->
					<div class="nav_w3ls">
						<nav>
							<label for="drop" class="toggle">Menu</label> <input
								type="checkbox" id="drop" />
							<ul class="menu">
								<li><a href="index.html">Home</a></li>
								<li class="mx-lg-4 mx-md-3 my-md-0 my-2"><a
									href="about.html">About Us</a></li>
								<li><a href="gallery.html">Gallery</a></li>
								<li class="mx-lg-4 mx-md-3 my-md-0 my-2">
									<!-- First Tier Drop Down --> <label for="drop-2"
									class="toggle toogle-2">Dropdown <span
										class="fa fa-angle-down" aria-hidden="true"></span>
								</label> <a href="#">Dropdown <span class="fa fa-angle-down"
										aria-hidden="true"></span></a> <input type="checkbox" id="drop-2" />
									<ul>
										<li><a href="about.html" class="drop-text">Services</a></li>
										<li><a href="index.html" class="drop-text">Blog</a></li>
										<li><a href="single.html" class="drop-text">Blog
												Details</a></li>
										<li><a href="index.html" class="drop-text">What We do</a></li>
										<li><a href="about.html" class="drop-text">Our
												Doctors</a></li>
									</ul>
								</li>
								<li><a href="contact.html">Contact Us</a></li>
							</ul>
						</nav>
					</div>
					<!-- //nav -->
				</div>
			</div>
		</div>
		<!-- //second header -->

		<!-- banner -->
		<div class="main-banner-2"></div>
		<!-- //banner -->
	</div>
	<!-- //main -->

	<!-- page details -->
	<div class="breadcrumb-agile py-1">
		<ol class="breadcrumb m-0">
			<li class="breadcrumb-item"><a href="index.html">Home</a></li>
		</ol>
		<h5 align="center">Drug Owner Details</h5>
	</div>
	<!-- //page details -->

	<!-- login -->
	<section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
			<div class="title-section mb-md-5 mb-4">




<div class="team pb-5" id="team">
		<div class="container pb-xl-5 pb-lg-3">
		<c:forEach var="msg" items="${msg1}">
		
			<div class="row mt-30">
				<div class="col-lg-4 mt-lg-4 mb-lg-0 mb-4">
					<h6 class="w3ls-title-sub mb-2">Drug Owner</h6>
					<h3 class="w3ls-title text-bl font-weight-bold">${msg.name}</h3>
					<p class="mt-4"></p>
				</div>
				<div class="col-lg-4 col-sm-6" >
				
				<c:forEach var="tester" items="${tester }">					
				<div class="box16"  >
						<img src="${pageContext.request.contextPath}/resources/images/team3.jpg" alt="" class="img-fluid">
						<div class="box-content" >
							<h3 class="title">${msg.username}</h3>
							<ul class="social" >
								<li><a href="ownerDetails/${msg.username}/${msg2}/${tester.status}" ><span class="fa fa-eye" onclick="myFunction()"></span></a></li>
								<li><a href="fileDetails/${msg.username}/${tester.username}" ><span class="fa fa-file"></span></a></li>
							</ul>
						</div>
					</div>
					</c:forEach>
					
					
				</div>
				
				
				
			</div>
					</c:forEach>
			
		</div>
	</div>


<div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-animate-top w3-card-4">
      <header class="w3-container w3-teal"> 
        <span onclick="document.getElementById('id01').style.display='none'" 
        class="w3-button w3-display-topright">&times;</span>
        <h2>Modal Header</h2>
      </header>
      <div class="w3-container">
        <p>Some text..</p>
        <p>Some text..</p>
      </div>
      <footer class="w3-container w3-teal">
        <p>Modal Footer</p>
      </footer>
    </div>
  </div>
</div>















			</div>
			<div class="login px-sm-4 mx-auto mw-100 login-wrapper"></div>
		</div>
	</section>
	
	
<script>
function myFunction() {
  alert("A user can get a request from one tester only!");
}
</script>
	<!-- //login -->

	<!-- footer -->
	<!-- //footer bottom -->
	<!-- move top icon -->
	<a href="#home" class="move-top text-center"></a>
	<!-- //move top icon -->

</body>

</html>