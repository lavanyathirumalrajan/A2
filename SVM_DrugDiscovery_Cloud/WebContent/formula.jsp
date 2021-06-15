<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="zxx">
<head>
<title>Drug Discovery</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8" />
<meta name="keywords"
	content="Alleviating Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />


  <link rel="stylesheet" href="/resources/demos/style.css">

  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.5/jquery.min.js"></script>


<link href="${pageContext.request.contextPath}/resources/css/bootstrap.css" type="text/css"
	rel="stylesheet" media="all">
<link href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" rel="stylesheet"
	media="all">
<!-- font-awesome icons -->
<link href="${pageContext.request.contextPath}/resources/css/fontawesome-all.min.css" rel="stylesheet">
<!-- //Custom Theme files -->
<link href="${pageContext.request.contextPath}/resources/css/minimal-slider.css" rel='stylesheet'
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

<style>
.dropbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
  display: block;
}

.dropdown:hover .dropbtn {
  background-color: #451515;
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
				
				<div class="dropdown">
  <button class="dropbtn">User Actions</button>
  <div class="dropdown-content">
  <a href="findUser/${msg}">User Details</a>
  <a href="changepassword.jsp">Change Password</a>
  </div>

</div>
				

					<li class="nav-item active  mr-3 mt-lg-0 mt-3"><a
						class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span>
					</a></li>


				</ul>
			</div>

		</nav>
		<div class="sidebar">
			<br> <br> <br> <br> <a href="index.jsp"><i
				class="fa fa-fw fa-home"></i>Home</a> <a href="findFile/${msg}">Uploaded
				Drug</a>
				 <a href="testerInfo/${msg}">Testers Info</a>

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
						<h3 class="subheading-w3-agile">Upload and Train Your Drug
							Component</h3>
						<!-- stats -->
						<div class="stats">
							<div id="divLoading"></div>
							<p>${alert}</p>

							<div class="stats_inner">
								<form action="drugUpload" method="post"
									enctype="multipart/form-data">
									<input class="form-control date mb-3" id="name" name="username"
										type="text" required="required" readonly="readonly"
										value="${msg}"> 
										<input class="form-control date mb-3"
										id="code" name="labcode" type="text" required="required"
										value="${msg1}" readonly="readonly">
										 <input
										class="form-control date mb-3" id="name" name="drugname"
										type="text" required="required" placeholder="Drug Name">
                                         <input class="form-control date mb-3" id="name" name="drugid"
										type="text" required="required" placeholder="Drug Id">

									     <input class="form-control date mb-3" id="datepicker"
										name="date" placeholder="Select Date of Upload" type="text"
										required="required"> 
										<input class="form-control date mb-3"
										type="file" name="file" id="fileinput"  multiple />

<h1 id="file"></h1>
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
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>

<script type="text/javascript">
  function readSingleFile(evt) {
    //Retrieve the first (and only!) File from the FileList object
    var f = evt.target.files[0]; 

    if (f) {
      var r = new FileReader();
      r.onload = function(e) { 
	      var contents = e.target.result;
	      alert( "Got the file " 
	              +"name: " + f.name + "n"
	              +"type: " + f.type + "n"
	              +"size: " + f.size + " bytesn"
	              + "starts with: " + contents.substr(1, contents.indexOf("n"))
	        );
      }
      
      r.readAsText(f);
    } else { 
      alert("Failed to load file");
    }
  }

  document.getElementById('fileinput').addEventListener('change', readSingleFile, false);
</script>

</body>
</html>