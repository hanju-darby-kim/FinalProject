<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-md-3">
	<ul id="sidebar-nav" class="sidebar-nav margin-bottom-30px">
		<!-- 헤더 메뉴랑 동일하게 만들것! -->

		<!-- 현진 메뉴 시작 -->
		<li class="list-group-item has-submenu">
         <a href="#Notice" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">예약센터</a>
         <ul id="Notice" class="list-unstyled collapse submenu">
            <li><a href="${pageContext.request.contextPath}/booking/consulting.action">예약신청</a></li>
           
         </ul>
		</li>
		<!-- 현진 메뉴 끝 -->
		
	</ul>
</div>


