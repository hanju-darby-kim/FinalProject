<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- TOPBAR -->
	<div class="topbar">
		<ul class="list-inline top-nav">
			<li>
				<!-- 번역 -->
				<div class="btn-group">
					<button type="button" class="btn btn-link dropdown-toggle btn-xs"
						data-toggle="dropdown">
						<img
							src="${pageContext.request.contextPath}/img/flags/United-Kingdom.png"
							alt="United Kingdom"> United Kingdom <span class="caret"></span>
					</button>
					<ul class="dropdown-menu dropdown-menu-right country-selector"
						role="menu">
						<li><a href="#"><img
								src="${pageContext.request.contextPath}/img/flags/United-Kingdom.png"
								alt="United Kingdom"> United Kingdom</a></li>
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
			<li><a href="${pageContext.request.contextPath}/login.action">login</a></li>
			<li><a href="#">register</a></li>
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