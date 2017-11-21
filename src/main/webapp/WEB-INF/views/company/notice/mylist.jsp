<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:if test="${login eq 1}">
<table id="tblList" class="table-bordered">
	<thead>
		<tr>
			<th>번호</th>
			<th>기업명</th>
			<th>허락여부</th>
			<th>등록일</th>
			<th>종료일</th>
			<th>지원자수</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${list}" var="notice">
		<tr class="tbltr" onclick="location.href='${pageContext.request.contextPath}/company/view.action?seq=${notice.seq}';">
			<td class="seq">${notice.seq}</td>
			<td class="name">${notice.companyName}</td>
			<td class="confirm">${notice.confirm}</td>
			<td class="regDate">${notice.regDate}</td>
			<td class="endDate">${notice.endDate}</td>
			<td class="applyCount">${notice.applyCount}</td>
		</tr>
		</c:forEach>
	</tbody>
</table>
<div id="pagebar">${pagebar}</div>
</c:if>
<c:if test="${login eq 0}">
<script>
	alert("로그인이 필요한 서비스입니다.");
	location.href = "/final/login.action";
</script>
</c:if>