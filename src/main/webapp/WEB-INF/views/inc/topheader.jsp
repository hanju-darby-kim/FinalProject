<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- TOPBAR -->
	<!-- 로그인한 후 접속 시 -->
	<c:if test="${logout eq true}">
	<script>
		alert("로그아웃 되셨습니다.");
	</script>
	</c:if>
	
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
			<c:if test="${certification.count != 1}">
			<li><a href="${pageContext.request.contextPath}/login.action">로그인</a></li>
			<li><a href="${pageContext.request.contextPath}/register.action">회원가입</a></li>
			</c:if>
			<c:if test="${certification.count eq 1}">
			${certification.name}님, 반갑습니다.
			<li><a href="${pageContext.request.contextPath}/logout.action">로그아웃</a></li>
			</c:if>
		</ul>
		<div class="searchbox">
			<form method="post">
				<div class="input-group input-group-sm">
					<input type="text" class="form-control" placeholder="search ...">
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