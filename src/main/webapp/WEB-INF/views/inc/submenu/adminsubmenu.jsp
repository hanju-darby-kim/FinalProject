<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-md-3">
	<ul id="sidebar-nav" class="sidebar-nav margin-bottom-30px">
		<!-- 헤더 메뉴랑 동일하게 만들것! -->

		<!-- 슬기 메뉴 시작 -->
		<li class="list-group-item has-submenu">
         <a href="#Notice" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">근무표 관리</a>
         <ul id="Notice" class="list-unstyled collapse submenu">
            <li><a href="${pageContext.request.contextPath}/admin/write.action">근무표 작성</a></li>
            <li><a href="ui-button-groups.html">근무 일지 체크</a></li>
            <li><a href="ui-button-groups.html">직원별 근무 차트</a></li>
         </ul>
      </li>
      <!-- 슬기 메뉴 끝 -->
      
      <!-- 재준 메뉴 시작 -->
		<li class="list-group-item has-submenu">
			<a href="#Notice" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">과정 관리</a>
			<ul id="Notice" class="list-unstyled collapse submenu">
	            <li><a href="ui-button-groups.html">과정 목록</a></li>
	            <li><a href="ui-button-groups.html">강의 목록</a></li>
         	</ul>
		</li>
		<!-- 재준 메뉴 끝 -->
	</ul>
</div>


