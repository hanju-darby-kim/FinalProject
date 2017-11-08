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
<form method="post" action="/admin/curri/addok.action">
	<table id="tblform" class="table">
		<tr>
			<th>카테고리</th>
			<td>
				<select name="curTypeSeq" id="curTypeSeq" class="form-control short">
					<option></option>
					<option></option>
				</select>
			</td>
			<!-- <td><input type="text" name="curTypeSeq" id="curTypeSeq" class="form-control short" /></td> -->
		</tr>
		<tr>
			<th>과정명</th>
			<td><input type="text" name="title" id="title" class="form-control short" /></td>
		</tr>
		<tr>
			<th>과정단가</th>
			<td><input type="text" name="cost" id="cost" class="form-control short" /></td>
		</tr>
		<tr>
			<th>모집정원</th>
			<td><input type="text" name="capacity" id="capacity" class="form-control short" /></td>
		</tr>
		<tr>
			<th>교육시간</th>
			<td><input type="text" name="time" id="time" class="form-control short" /></td>
		</tr>
		<tr>
			<th>하루교육시간</th>
			<td><input type="text" name="timePerDay" id="timePerDay" class="form-control short" /></td>
		</tr>
		<tr>
			<th>교육목표</th>
			<td><input type="text" name="objective" id="objective" class="form-control short" /></td>
		</tr>
	</table>
	<div id="btns" style="text-align: right;">
		<input type="submit" value="등록하기" class="btn btn-primary" />
		<input type="button" value="돌아가기" onclick="location.href='';" class="btn" style="background-color: LightGray;" />
	</div>
</form>


