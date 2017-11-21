<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
#tblform{
	width: 800px;
}

#tblform th:NTH-CHILD(1){
	text-align: right;
	width: 150px;
}

#tblform td:NTH-CHILD(1){
	width: 650px;
}

.short{
	width: 60%;
}

</style>
<script>
	function addcategory(){
		var win = window.open("${pageContext.request.contextPath}/admin/curri/categorylist.action", "win", "width=450, height=600, left=" + (screen.availWidth * 0.6) + ", top=" + (screen.availHeight * 0.2));
	}
</script>
<h3>과정 추가</h3>
<form method="post" action="${pageContext.request.contextPath}/admin/curri/addok.action">
	<table id="tblform" class="table">
		<tr>
			<th>카테고리</th>
			<td>
				<select name="categoryseq" id="categoryseq" class="form-control short">
					<c:forEach items="${list}" var="dto">
						<option value="${dto.seq}">${dto.category}</option>
					</c:forEach>
				</select>
				<input type="button" id="addCategory" name="addCategory" value="카테고리 추가/제거" onclick="addcategory();"/>
			</td>
			<!-- <td><input type="text" name="curTypeSeq" id="curTypeSeq" class="form-control short" /></td> -->
		</tr>
		<tr>
			<th>과정명</th>
			<td><input placeholder="예) Java&Python 기반 응용SW 개발자 양성과정" type="text" name="title" id="title" class="form-control short" /></td>
		</tr>
		<tr>
			<th>과정단가</th>
			<td><input placeholder="예) 7362880" type="text" name="cost" id="cost" class="form-control short" /></td>
		</tr>
		<tr>
			<th>모집정원</th>
			<td><input placeholder="예) 28" type="text" name="capacity" id="capacity" class="form-control short" /></td>
		</tr>
		<tr>
			<th>교육시간</th>
			<td><input placeholder="예) 1120" type="text" name="time" id="time" class="form-control short" /></td>
		</tr>
		<tr>
			<th>하루교육시간</th>
			<td><input placeholder="예) 8" type="text" name="timeperday" id="timeperday" class="form-control short" /></td>
		</tr>
		<tr>
			<th>교육일수</th>
			<td><input placeholder="예) 140" type="text" name="day" id="day" class="form-control short" /></td>
		</tr>
		<tr>
			<th>교육목표</th>
			<td>
				<textarea placeholder="교육목표를 입력하세요." name="objective" id="objective" class="form-control short" cols="30" rows="10"></textarea>
			</td>
		</tr>
	</table>
	<div id="btns" style="text-align: right;">
		<input type="submit" value="등록하기" class="btn btn-primary" />
		<input type="button" value="돌아가기" onclick="location.href='';" class="btn" style="background-color: LightGray;" />
	</div>
</form>


