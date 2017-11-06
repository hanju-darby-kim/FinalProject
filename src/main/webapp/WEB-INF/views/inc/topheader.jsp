<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- TOPBAR -->
	<div class="topbar">
		<ul class="list-inline top-nav">
			<li>
				<!-- 번역 -->
				<div class="btn-group">
					<button type="button" class="btn btn-link dropdown-toggle btn-xs"
						data-toggle="dropdown">
						<img
							src="${pageContext.request.contextPath}/img/flags/South-Korea.png"
							alt="South Korea" width="16px"> South Korea <span class="caret"></span>
					</button>
					<ul class="dropdown-menu dropdown-menu-right country-selector"
						role="menu">
						<li><a href="#"><img
								src="${pageContext.request.contextPath}/img/flags/South-Korea.png"
								alt="South Korea" width="16px"> South Korea</a></li>
						<li><a href="#"><img
								src="${pageContext.request.contextPath}/img/flags/Japan.png"
								alt="Japan"> Japan</a></li>
						<li><a href="#"><img
								src="${pageContext.request.contextPath}/img/flags/China.png"
								alt="China"> China</a></li>
						<li><a href="#"><img
								src="${pageContext.request.contextPath}/img/flags/Germany.png"
								alt="Germany"> Germany</a></li>
					</ul>
				</div>
			</li>
			<c:if test="${target eq null}">
			<li><a href="${pageContext.request.contextPath}/login.action">로그인</a></li>
			<li><a href="${pageContext.request.contextPath}/register.action">회원가입</a></li>
			</c:if>
			<c:if test="${target != null}">
			${name}님, 반갑습니다.
			<li><a href="#">로그아웃</a></li>
			</c:if>
		</ul>
		<div class="searchbox">
			<form method="post">
				<div class="input-group input-group-sm">
					<input type="text" class="form-control" placeholder="검색 ...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div>
			</form>
		</div>
	</div>
	<!-- END TOPBAR -->