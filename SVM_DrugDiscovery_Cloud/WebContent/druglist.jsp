
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
	background-color: gray;
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

					<li class="nav-item dropdown mr-3 mt-lg-0 mt-3"><img
						src="




${pageContext.request.contextPath}/resources/images/user.png"
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false" />
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
				class="fa fa-fw fa-home"></i> Home</a> <a href="druglist.jsp">Uploaded
				Drug</a> <a href="testerslist.jsp">Testers Info</a>


		</div>
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

		<table align="center">
			<tr align="center">
				<th>DrugName</th>
				<th>FileName</th>
				<th>NB Accuracy</th>
				<th>SVM Accuracy</th>
				<th>Status</th>
			</tr>
			<c:forEach var="msg" items="${msg}">
			
			<c:if test="${msg.status=='success' }">
			
				<tr align="center">
				
					<td>${msg.drugname}</td>
					<td>${msg.filename}</td>
					<td>${msg.accuracy_nb }</td>
					<td>${msg.accuracy_svm }</td>
					
					<td><a href="downloadFile/${msg.filename}"><img
							src="${pageContext.request.contextPath}/resources/images/download.png" /></a>
						<a href="delete/${msg.drugname}/${msg.username}"><img
							src="${pageContext.request.contextPath}/resources/images/delete.png" /></a>




				</tr>

</c:if>


			</c:forEach>
			
			
			
			
			<c:forEach var="msg" items="${msg}">
			<c:if test="${msg.status=='Active'  }">
				<tr align="center">
				
					<td>${msg.drugname}</td>
					<td>${msg.filename}</td>
					<td>${msg.accuracy_nb }</td>
					<td>${msg.accuracy_svm }</td>
					
					<td><a href="downloadFile/${msg.filename}"><img
							src="${pageContext.request.contextPath}/resources/images/download.png" /></a>
						<a href="delete/${msg.drugname}/${msg.username}"><img
							src="${pageContext.request.contextPath}/resources/images/delete.png" /></a>




				</tr>

</c:if>


			</c:forEach>
			
			
			
			
			<c:forEach var="msg" items="${msg}">
			<c:if test="${msg.status=='Accepted'  }">
				<tr align="center">
					
					<td>${msg.drugname}</td>
					<td>${msg.filename}</td>
					<td>${msg.accuracy_nb }</td>
					<td>${msg.accuracy_svm }</td>
					<td><a href="fullDetails/${msg.drugname}">Update your details into Clinic DB</a></td>
					



				</tr>


</c:if>

			</c:forEach>
			
			
			
			<c:forEach var="msg" items="${msg}">
			<c:if test="${msg.status=='Uploaded'  }">
				<tr align="center">
					
					<td>${msg.drugname}</td>
					<td>${msg.filename}</td>
					<td>${msg.accuracy_nb }</td>
					<td>${msg.accuracy_svm }</td>
					<td>Uploaded</td>
					



				</tr>


</c:if>

			</c:forEach>
			
			
			
			
			
			
			<c:forEach var="msg" items="${msg}">
			<c:if test="${msg.status=='Decliened'}">
				<tr align="center">
					
					<td>${msg.drugname}</td>
					<td>${msg.filename}</td>
					<td>${msg.accuracy_nb }</td>
					<td>${msg.accuracy_svm }</td>
					<td>Declined</td>
					



				</tr>


</c:if>

			</c:forEach>

		</table>


	</div>





	
	
	




</body>
</html>