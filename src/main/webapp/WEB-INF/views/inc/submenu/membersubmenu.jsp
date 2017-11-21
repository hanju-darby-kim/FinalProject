<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	
<ul id="sidebar-nav" class="sidebar-nav margin-bottom-30px">

	<c:if test="${certification.target eq 'student'}">
	<li class="list-group-item has-submenu">
		<a href="#sideStuList" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">학생 메뉴</a>
		<ul id="sideStuList" class="list-unstyled collapse submenu">
			<li><a href="${pageContext.request.contextPath}/student/attcheck.action">출석체크</a></li>
			<li><a href="${pageContext.request.contextPath}/student/attendance.action">출결확인</a></li>
			<li><a href="${pageContext.request.contextPath}/student/vacation.action">공결신청</a></li>
		</ul>
	</li>
	</c:if>
	
	<c:if test="${certification.target eq 'manager'}">
	<li class="list-group-item has-submenu">
		<a href="#sideMagList" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">매니저 메뉴</a>
		<ul id="sideMagList" class="list-unstyled collapse submenu">
			<li><a href="${pageContext.request.contextPath}/manager/attcheck.action">출결개시</a></li>
			<li><a href="${pageContext.request.contextPath}/manager/attendance.action">출결확인</a></li>
			<li><a href="${pageContext.request.contextPath}/manager/manageAtt.action">출결관리</a></li>
		</ul>
	</li>
	</c:if>
	
	<c:if test="${certification.target eq 'admin'}">
	<li class="list-group-item has-submenu">
		<a href="#sideAdmList" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">관리자 메뉴</a>
		<ul id="sideAdmList" class="list-unstyled collapse submenu">
			<li><a href="${pageContext.request.contextPath}/">  </a></li>
			<li><a href="${pageContext.request.contextPath}/">  </a></li>
			<li><a href="${pageContext.request.contextPath}/">  </a></li>
		</ul>
	</li>
	</c:if>
	
</ul>