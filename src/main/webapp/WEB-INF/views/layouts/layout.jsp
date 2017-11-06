<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<tiles:insertAttribute name="links"/>
</head>

<body>
	<!-- WRAPPER -->
	<div class="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default " role="navigation">
			<tiles:insertAttribute name="topheader"/>
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
							<li class="list-group-item has-submenu ">
								<a href="#Buttons" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">메뉴1</a>
								<ul id="Buttons" class="list-unstyled collapse submenu ">
									<li><a href="#">General Buttons</a></li>
									<li><a href="#">Button Groups</a></li>
								</ul>
							</li>
							<li class="list-group-item has-submenu "><a href="ui-tabs-accordion.html">메뉴1</a></li>
							<li class="list-group-item has-submenu ">
								<a href="#Components" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">메뉴1</a>
								<ul id="Components" class="list-unstyled collapse submenu ">
									<li><a href="#">Alerts</a></li>
									<li><a href="#">Breadcrumbs</a></li>
									<li><a href="#">Pagination</a></li>
								</ul>
							</li>
							<li class="list-group-item has-submenu ">
								<a href="#Forms" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">메뉴1</a>
								<ul id="Forms" class="list-unstyled collapse submenu ">
									<li><a href="#">Basic Form Elements</a></li>
									<li><a href="#">Advanced Form Elements</a></li>
									<li><a href="#">Form Layouts</a></li>
									<li><a href="#">Validation</a></li>
								</ul>
							</li>
							<li class="list-group-item "><a href="#">메뉴1</a></li>
							<li class="list-group-item "><a href="#">메뉴1</a></li>
							<li class="list-group-item "><a href="#">메뉴1</a></li>
							<li class="list-group-item "><a href="#">메뉴1</a></li>
							<li class="list-group-item "><a href="#">메뉴1</a></li>
							<li class="list-group-item "><a href="#">메뉴1</a></li>
						</ul>
					</div>
					<div class="col-md-9">
						<!-- BASIC -->
						<h2 class="section-heading">TITLE</h2>
						<!-- 내용이 들어갈 자리 -->
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
