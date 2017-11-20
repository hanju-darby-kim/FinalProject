<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<div class="col-md-3">
	<ul id="sidebar-nav" class="sidebar-nav margin-bottom-30px">
		<li class="list-group-item"><a
		 href="${pageContext.request.contextPath}/teacher/evaluate.action">학생평가</a></li>
		<li class="list-group-item"><a
			href="${pageContext.request.contextPath}/teacher/schedule.action">강의 스케줄 조회</a></li>		
		<li class="list-group-item has-submenu">
		<a href="#Project" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">프로젝트 관리</a>
		<ul id="Project" class="list-unstyled collapse submenu in ">
			<li><a href="${pageContext.request.contextPath}/teacher/project.action">프로젝트 등록</a></li>	
		</ul>
			
		<%-- <li class="list-group-item has-submenu ">
			<a href="#Notice" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">공고관리</a>
			<ul id="Notice" class="list-unstyled collapse submenu ">
				<li><a href="${pageContext.request.contextPath}/company/addnotice.action">공고확인</a></li>
				<li><a href="${pageContext.request.contextPath}/company/addnotice.action">공고등록</a></li>
			</ul>
		</li> --%>
	</ul>
</div>