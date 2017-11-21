<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	#curriculumlisttbl {
		width: 800px;
	}
</style>
<h3>과정 목록</h3>
<table id="curriculumlisttbl" class="table table-striped">
	<c:forEach items="${list}" var="dto" varStatus="status">
		<tr>
			<td>번호</td>
			<td>${status.count}</td>
			<td>카테고리</td>
			<td>${dto.title}</td>
		</tr>
		<tr>
			<td>과정명</td>
			<td>${dto.title}</td>
		</tr>
		<tr>
			<td>비용</td>
			<td>${dto.cost}</td>
		</tr>
		<tr>
			<td>총 교육시간</td>
			<td>${dto.time}</td>
			<td>하루 교육시간</td>
			<td>${dto.timePerDay}</td>
		</tr>
		<tr>
			<td>교육목표</td>
			<td>${dto.objective}</td>
		</tr>
		<tr>
			<td>
		</tr>
	</c:forEach>
</table>


