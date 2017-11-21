<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<table id="tblList" class="table-bordered">
	<thead>
		<tr>
			<th>번호</th>
			<th>회사이름</th>
			<th>주소</th>
			<th>종료일</th>
			<th>지원자수</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${list}" var="notice">
		<tr class="tbltr" onclick="location.href='${pageContext.request.contextPath}/company/view.action?seq=${notice.seq}';">
			<td class="seq">${notice.seq}</td>
			<td class="name">${notice.companyName}</td>
			<td class="address">${notice.companyAddress}</td>
			<td class="endDate">${notice.endDate}</td>
			<td class="applyCount">${notice.applyCount}</td>
		</tr>
		</c:forEach>
	</tbody>
</table>
<div id="pagebar">${pagebar}</div>