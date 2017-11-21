<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- addok.jsp -->
	성공하셨습니다.
	<script>
		<c:if test="${result==1}">
			alert("회원가입이 완료되었습니다!!");
			location.href = "/final/login.action";
		</c:if>
		<c:if test="${result==0}">
			history.back();
		</c:if>
		<c:if test="${result==-1}">
			alert("아이디가 중복되었어요!");
			history.back();
		</c:if>
		
	</script>	 
</body>
</html>















