<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-md-3">
	<ul id="sidebar-nav" class="sidebar-nav margin-bottom-30px">

		<li class="list-group-item"><a
		 	href="${pageContext.request.contextPath}/admin/seulikitest.action">테스트 합시다</a></li>

		<li class="list-group-item"><a 
			href="${pageContext.request.contextPath}/admin/seulikitest.action">테스트</a></li>		
			
		<li class="list-group-item"><a 
			href="${pageContext.request.contextPath}/admin/seulikitest.action">테스트</a></li>		
			
		<li class="list-group-item"><a 
			href="${pageContext.request.contextPath}/admin/seulikitest.action">테스트</a></li>		

		<li class="list-group-item has-submenu ">
			<a href="#Notice" class="submenu-toggle" data-toggle="collapse" data-parent="sidebar-nav">공고관리</a>
			<ul id="Notice" class="list-unstyled collapse submenu ">
				<li><a href="${pageContext.request.contextPath}/company/addnotice.action">공고확인</a></li>
				<li><a href="${pageContext.request.contextPath}/company/addnotice.action">공고등록</a></li>
			</ul>
		</li>
		<li class="list-group-item"><a href="${pageContext.request.contextPath}/center/column.action">CEO 컬럼</a></li>		

		
	</ul>
</div>