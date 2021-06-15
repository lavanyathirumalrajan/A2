<%@ page isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />



<!DOCTYPE html>
<html lang="en">
<head>

<title>Health - Medical Website Template</title>
<!--

Template 2098 Health

http://www.tooplate.com/view/2098-health

-->
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="description" content="">
<meta name="keywords" content="">
<meta name="author" content="Tooplate">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.theme.default.min.css">

<!-- MAIN CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/tooplate-style.css">
<style>
#customers {
	font-family: Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 70%;
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
	background-color: #576158;
	color: white;
}
</style>
</head>
<body id="top" data-spy="scroll" data-target=".navbar-collapse"
	data-offset="50">

	<!-- PRE LOADER -->
	<section class="preloader">
		<div class="spinner">

			<span class="spinner-rotate"></span>

		</div>
	</section>


	<!-- HEADER -->
	<header>
		<div class="container">
			<div class="row">

				<div class="col-md-4 col-sm-5">
					<p>Welcome to a Professional Health Care</p>
				</div>

				<div class="col-md-8 col-sm-7 text-align-right">
					<span class="phone-icon"><i class="fa fa-phone"></i>
						010-060-0160</span> <span class="date-icon"><i
						class="fa fa-calendar-plus-o"></i> 6:00 AM - 10:00 PM (Mon-Fri)</span> <span
						class="email-icon"><i class="fa fa-envelope-o"></i> <a
						href="#">info@company.com</a></span>
				</div>

			</div>
		</div>
	</header>


	<!-- MENU -->
	<section class="navbar navbar-default navbar-static-top"
		role="navigation">
		<div class="container">

			<div class="navbar-header">
				<button class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon icon-bar"></span> <span class="icon icon-bar"></span>
					<span class="icon icon-bar"></span>
				</button>

				<!-- lOGO TEXT HERE -->
				<a href="index.html" class="navbar-brand"><i
					class="fa fa-h-square"></i>ealth Center</a>
			</div>

			<!-- MENU LINKS -->
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#top" class="smoothScroll">Home</a></li>
					<li><a href="#about" class="smoothScroll">About Us</a></li>
					<li><a href="#team" class="smoothScroll">Doctors</a></li>
					<li><a href="#news" class="smoothScroll">News</a></li>
					<li><a href="#google-map" class="smoothScroll">Contact</a></li>
					<li class="appointment-btn"><a href="#appointment">Login</a></li>
				</ul>
			</div>

		</div>
	</section>


	<!-- HOME -->



	<!-- ABOUT -->






	<!-- NEWS -->

	<!-- MAKE AN APPOINTMENT -->
	<section id="appointment" data-stellar-background-ratio="3">
		<div class="container">
			<div class="row">






				<p align="center" style="color: black;">Accepted Drug Components
					Details</p>



				<table id="customers" align="center">
					<tr>
						<th>DrugOwner</th>
						<th>Drug Name</th>
						<th>NB Accuracy</th>
						<th>SVM Accuracy</th>
						
						<th>Conclusion</th>

					</tr>
					<c:forEach var="msg" items="${msg }">
					<c:if test="${msg.status=='Active' }">
						<tr>
							<td>${msg.username}</td>
							<td>${msg.drugname}</td>
							<td>${msg.accuracy_nb}</td>
							<td>${msg.accuracy_svm}</td>


							<td><a href="accept/${msg.drugname }" style="color: green;">Approve</a>
								<a href="decline/${msg.drugname }" style="color: red;">Decline</a></td>






						</tr>
						</c:if>
						<c:if test="${msg.status=='success' }">
						<tr>
							
							<p align="center">No Action Until Now</p>





						</tr>
						</c:if>
						<c:if test="${msg.status=='Accepted' || msg.status=='Decliened' }">
						<tr>
							<td>${msg.username}</td>
							<td>${msg.drugname}</td>
							<td>${msg.accuracy_nb}</td>
							<td>${msg.accuracy_svm}</td>
							<td>Completed</td>


							






						</tr>
						</c:if>
					</c:forEach>
				</table>














			</div>

		</div>

	</section>


	<!-- GOOGLE MAP -->





	<!-- SCRIPTS -->
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.sticky.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.stellar.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/smoothscroll.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

</body>
</html>