<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<link href="${pageContext.request.contextPath}/css/my-custom-styles.css" rel="stylesheet" type="text/css">
	
	<!-- IE 9 Fallback-->
	<!--[if IE 9]>
		<link href="${pageContext.request.contextPath}/css/ie.css" rel="stylesheet">
	<![endif]-->
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
		<!-- NAVBAR -->
		<nav class="navbar navbar-default " role="navigation">
				<tiles:insertAttribute name="header"/>
		
		</nav>
		<!-- END NAVBAR -->
		<!-- BREADCRUMBS -->
		<div class="page-header">
			<div class="container">
				<h1 class="page-title pull-left">BUTTONS</h1>
				<ol class="breadcrumb">
					<li><a href="#">Home</a></li>
					<li><a href="#">UI Elements</a></li>
					<li class="active">Buttons</li>
				</ol>
			</div>
		</div>
		<!-- END BREADCRUMBS -->
		<!-- PAGE CONTENT -->
		<div class="page-content">
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<ul id="sidebar-nav" class="sidebar-nav margin-bottom-30px">
							<li class="list-group-item has-submenu active">
								<a href="#Buttons" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">Buttons</a>
								<ul id="Buttons" class="list-unstyled collapse submenu in">
									<li class="active"><a href="#">General Buttons</a></li>
									<li><a href="ui-button-groups.html">Button Groups</a></li>
								</ul>
							</li>
							<li class="list-group-item "><a href="ui-tabs-accordion.html">Tabs &amp; Accordion</a></li>
							<li class="list-group-item has-submenu ">
								<a href="#Components" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">Components</a>
								<ul id="Components" class="list-unstyled collapse submenu ">
									<li><a href="ui-alerts.html">Alerts</a></li>
									<li><a href="ui-breadcrumbs.html">Breadcrumbs</a></li>
									<li><a href="ui-pagination.html">Pagination</a></li>
								</ul>
							</li>
							<li class="list-group-item has-submenu ">
								<a href="#Forms" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">Forms</a>
								<ul id="Forms" class="list-unstyled collapse submenu ">
									<li><a href="ui-form-elements-basic.html">Basic Form Elements</a></li>
									<li><a href="ui-form-elements-advanced.html">Advanced Form Elements</a></li>
									<li><a href="ui-form-layouts.html">Form Layouts</a></li>
									<li><a href="ui-form-validation.html">Validation</a></li>
								</ul>
							</li>
							<li class="list-group-item "><a href="ui-numbers-charts.html">Numbers &amp; Charts</a></li>
							<li class="list-group-item "><a href="ui-boxed-contents.html">Boxed Contents</a></li>
							<li class="list-group-item "><a href="ui-testimonials.html">Testimonials</a></li>
							<li class="list-group-item "><a href="ui-maps.html">Maps</a></li>
							<li class="list-group-item "><a href="ui-typography.html">Typography</a></li>
							<li class="list-group-item "><a href="ui-icons.html">Icons</a></li>
						</ul>
					</div>
					<div class="col-md-9">
						<!-- BASIC -->
						<h2 class="section-heading">TITLE</h2>
						<tiles:insertAttribute name="core"/>
					</div>
				</div>
			</div>
		</div>
		<!-- END PAGE CONTENT -->
		<!-- FOOTER -->
		<footer>
			<tiles:insertAttribute name="footer"/>
		</footer>
		<!-- END FOOTER -->
	</div>
	<!-- END WRAPPER -->
	<!-- JAVASCRIPTS -->
	<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/autohidingnavbar/jquery.bootstrap-autohidingnavbar.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/repute-scripts.js"></script>
	
</body>

</html>
