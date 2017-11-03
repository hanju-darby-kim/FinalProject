<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
	<title>SIST | 쌍용교육센터</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Responsive Multipurpose Bootstrap Theme">
	<meta name="author" content="The Develovers">
	<tiles:insertAttribute name="links"/>
</head>

<body>
	<!-- WRAPPER -->
	<div class="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default " role="navigation">
			<tiles:insertAttribute name="header"/>
		</nav>
		<!-- END NAVBAR -->
		<!-- HERO UNIT -->
		
		<tiles:insertAttribute name="core"/>
	
		<!-- END CALL-TO-ACTION -->
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
	<script src="${pageContext.request.contextPath}/js/plugins/slick/slick.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/stellar/jquery.stellar.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/jquery-easypiechart/jquery.easypiechart.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/autohidingnavbar/jquery.bootstrap-autohidingnavbar.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/repute-scripts.js"></script>
	
</body>

</html>














