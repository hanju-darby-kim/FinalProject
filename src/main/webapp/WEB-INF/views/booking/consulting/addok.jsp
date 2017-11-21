<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>


<style>
	#tbl {}
	#tbl th { width: 150px; text-align: right; padding-right: 15px; vertical-align: middle; } 
	#tbl td { width: 550px; }
	#tbl .short { width: 30%; }
	#tbl #content { height: 300px; }
</style>

<script>
	$(document).ready(function() {
		
	});
</script>
</head>
<body>
	<!-- template.jsp -> (복사) -> add.jsp -->
	<div id="main">
		<section>
		입력완료한 후 넘어온 페이지
		<script>
			<c:if test="${result==1}">
				alert("글이 등록되었습니다!");
				location.href = "/booking/consulting.action";
			</c:if>
		</script>
			
		</section>

	</div>
	
	
	
	
	
	
	
	
	
	
</body>
</html>





















