<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-md-3">
	<ul id="sidebar-nav" class="sidebar-nav margin-bottom-30px">

		<li class="list-group-item"><a
		 	href="${pageContext.request.contextPath}/admin/seulikitest.action">지원자 확인</a></li>

		<li class="list-group-item"><a 
			href="${pageContext.request.contextPath}/admin/seulikitest.action">입사관리</a></li>		
			
		<li class="list-group-item"><a 
			href="${pageContext.request.contextPath}/admin/seulikitest.action">기업정보관리</a></li>				

		<li class="list-group-item has-submenu ">
			<a href="#Notice" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">공고관리</a>
			<ul id="Notice" class="list-unstyled collapse submenu ">
				<li><a href="${pageContext.request.contextPath}/company/list.action">공고목록</a></li>
				<li><a href="${pageContext.request.contextPath}/company/addnotice.action">공고등록</a></li>
				<li><a href="${pageContext.request.contextPath}/company/mylist.action">내 공고 확인</a></li>
			</ul>
		</li>
			

		
	</ul>
</div>