
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
<script>
	addEventListener("load", function() {
		setTimeout(hideURLbar, 0);
	}, false);

	function hideURLbar() {
		window.scrollTo(0, 1);
	}
</script>

<style>
#customers {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 80%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #03574c;
	color: white;
}
</style>


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css"
	type="text/css" media="all" />

<link
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"
	rel="stylesheet">

</head>

<body>

	<div id="home">
		
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
							</div>
						</div>
						<div
							class="col-xl-7 col-lg-6 col-md-4 top-social-agile text-md-right text-center mt-md-0 mt-2">
							<div class="row">
								<div class="offset-xl-6 offset-lg-4"></div>

							</div>
						</div>
					</div>
				</div>
			</div>
		</header>
	
		<div class="main-top">
			<div class="container">
				<div
					class="header d-md-flex justify-content-between align-items-center py-3">
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
		
				</div>
			</div>
		</div>
	
		<div class="main-banner-2"></div>

	</div>

	<div class="breadcrumb-agile py-1">
		<ol class="breadcrumb m-0">
			<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
		</ol>
		<c:forEach var="msg" items="${msg }">
			<ol class="breadcrumb m-0">
				<h5>${msg.username}'sDetailsare Here...:-)</h5>
			</ol>

		</c:forEach>
	</div>
	
	<section class="logins py-5">
		<div class="container py-xl-5 py-lg-3">
			<c:forEach var="msg" items="${msg}">
				<div class="login px-sm-4 mx-auto mw-100 login-wrapper">
					<div class="form-group">

						<table id="customers" align="center">
							<tr>
								<th>Name</th>
								<th>Email</th>
								<th>UserName</th>
								<th>LabName</th>
								<th>LabCode</th>
								<th>Action</th>
								<th>Status</th>
								
							</tr>
							
							<tr>
							<td>${msg.name }</td>
							<td>${msg.email }</td>
							<td>${msg.username }</td>
							<td>${msg.labname }</td>
							<td>${msg.labcode }</td>


<c:if test="${msg.status=='No action Taken' }">


<td><a href="request/${username}/${msg.username}" onclick="myFunction()">SendRequest</a>
<td>Waiting For tester Request</td>


</c:if>

<c:if test="${msg.status=='Request pending' }">


<td> Request Already send</td>
<td>Waiting For Owner Response</td>



</c:if>

<c:if test="${msg.status=='Accepted' }">


<td> Request Accepted</td>
<td>You can Test the drug component</td>




</c:if>

							</tr>
						</table>




					</div>
				</div>
			</c:forEach>
		</div>
	</section>
	<script>
function myFunction() {
  alert("A user can get a Request from one tester only!");
}
</script>
	<a href="#home" class="move-top text-center"></a>


</body>

</html>