<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.short{
	width: 50%;
}
</style>
<form method="post" action="">
	과정명: <input type="text" class="form-control short" /><br>
	카테고리: <input type="text" class="form-control short" /><br>
	과정단가: <input type="text" class="form-control short" /><br>
	모집정원: <input type="text" class="form-control short" /><br>
	교육시간: <input type="text" class="form-control short" /><br>
	하루교육시간: <input type="text" class="form-control short" /><br>
	교육목표: <input type="text" class="form-control short" /><br>
	<div style="text-align: right;">
		<input type="submit" value="등록하기" class="btn btn-primary" />
		<input type="button" value="돌아가기" class="btn btn-primary" />
	</div>
</form>


