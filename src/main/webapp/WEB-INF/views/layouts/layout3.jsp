<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html>
<html lang="en">
<head>
		
	<!-- JAVASCRIPTS -->	
	<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/slick/slick.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/stellar/jquery.stellar.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/jquery-easypiechart/jquery.easypiechart.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/autohidingnavbar/jquery.bootstrap-autohidingnavbar.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/repute-scripts.js"></script>
	
	<!-- CUSTOM JAVASCRIPTS -->	
	<script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
	<script src="${pageContext.request.contextPath}/js/daterangepicker.js"></script>
	<script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js"></script>
	
	<tiles:insertAttribute name="links"/>
	
</head>
<body>
	<!-- WRAPPER -->
	<div class="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default " role="navigation">
			<div class="container">
			<tiles:insertAttribute name="topheader"/>
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#main-nav">
						<span class="sr-only">Toggle Navigation</span> <i class="fa fa-bars"></i>
					</button>
					<a href="${pageContext.request.contextPath}/main.action" class="navbar-brand navbar-logo navbar-logo-bigger"> <img
						src="${pageContext.request.contextPath}/img/logo/repute-logo-nav.png"
						alt="Repute - Responsive Multipurpose Bootstrap Theme">
					</a>
				</div>
				<!-- MAIN NAVIGATION -->
				<div id="main-nav" class="navbar-collapse collapse navbar-mega-menu">
					<ul class="nav navbar-nav navbar-right">
					<tiles:insertAttribute name="header"/>
					<%-- <tiles:insertAttribute name="header"/> --%>
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- PAGE CONTENT -->
		<div class="page-content">
			<div class="container">
				<div class="row">
					<div class="col-md-3">					
						<tiles:insertAttribute name="submenu"/>
					</div>
					<div class="col-md-9">					
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

</body>
</html>