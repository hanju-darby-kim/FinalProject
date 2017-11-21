<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	#curriculumlisttbl {
		width: 800px;
		vertical-align: middle;
	}
</style>
<h3>과정 목록</h3>
<table id="curriculumlisttbl" class="table table-striped">
	<c:forEach items="${list}" var="dto" varStatus="status">
		<tr>
			<th style="width:100px;">번호</th>
			<td style="width:300px;">${status.count}</td>
			<th style="width:100px;">카테고리</th>
			<td style="width:300px;">${dto.category}</td>
		</tr>
		<tr>
			<th>과정명</th>
			<td colspan="3">${dto.title}</td>
		</tr>
		<tr>
			<th>비용</th>
			<td>${dto.cost}원</td>
			<th>총 교육시간/하루 교육시간</th>
			<td>${dto.time}시간 / ${dto.timePerDay}시간</td>
		</tr>
		<tr>
			<th>교육목표</th>
			<td colspan="3">${dto.objective}</td>
		</tr>
		<tr>
			<td colspan="4" style="background-color: Honeydew;"></td>
		</tr>
	</c:forEach>
</table>


