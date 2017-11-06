<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!DOCTYPE html>
<html lang="en">

<head>

	<title>SIST | 쌍용교육센터</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Responsive Multipurpose Bootstrap Theme">
	<meta name="author" content="The Develovers">
	<!-- CSS -->
	<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/shop-main.css" rel="stylesheet" type="text/css">
	<link href="${pageContext.request.contextPath}/css/my-custom-styles.css" rel="stylesheet" type="text/css">

	<!-- GOOGLE FONTS -->
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,400,600,700' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,300italic,400italic,700,400,300' rel='stylesheet' type='text/css'>
	<!-- FAVICONS -->
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/ico/repute144x144.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/ico/repute114x114.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/ico/repute72x72.png">
	<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/ico/repute57x57.png">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/ico/favicon.png">

</head>

<body>
	<!-- WRAPPER -->
	<div class="wrapper">
		<nav class="navbar navbar-default " role="navigation">
			<div class="container">
			<tiles:insertAttribute name="topheader"/>
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#main-nav">
						<span class="sr-only">Toggle Navigation</span> <i class="fa fa-bars"></i>
					</button>
					<a href="#" class="navbar-brand navbar-logo navbar-logo-bigger"> <img
						src="${pageContext.request.contextPath}/img/logo/repute-logo-nav.png"
						alt="Repute - Responsive Multipurpose Bootstrap Theme">
					</a>
				</div>
				<!-- MAIN NAVIGATION -->
				<div id="main-nav" class="navbar-collapse collapse navbar-mega-menu">
					<ul class="nav navbar-nav navbar-right">
					<tiles:insertAttribute name="commonheader"/>

					</ul>
				</div>
			</div>
		</nav>

		
		<tiles:insertAttribute name="core"/>
		
		<footer>
			<tiles:insertAttribute name="footer"/>
		</footer>
	</div>
	<!-- END WRAPPER -->
	<!-- JAVASCRIPTS -->
	<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/repute-shop.js"></script>

</body>

</html>
