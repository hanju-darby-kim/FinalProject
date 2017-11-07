<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<h2 class="section-heading">공고 등록</h2>
<form method="POST" action="/final/addnotice.action">
	<div id="NoticeContentContainter">
		<div id="contentPcdata" class="noticeTitle">회사소개</div>
		<textarea name="noticeContent" class="form-control">${content}</textarea>
	</div>
	
	<div id="dateContainer">
		<div id="datePcdata">게시일</div>
		<div class="input-group"> 		
			<input type="text" id="daterangepicker" class="form-control">
			<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
		</div>
		
	</div>
	<div id="reportContainer">
		<span id="reportPcdata" class="noticeTitle">종합평가서</span>
		<input type="checkbox" name="report" id="report">
	</div>
</form>
	<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/jquery-maskedinput/jquery.masked-input.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/moment/moment.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/bootstrap-datepicker/bootstrap-datepicker.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/daterangepicker/daterangepicker.js"></script>
	<script src="${pageContext.request.contextPath}/js/plugins/autohidingnavbar/jquery.bootstrap-autohidingnavbar.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/repute-scripts.js"></script>