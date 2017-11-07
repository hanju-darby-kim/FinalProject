<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<h2 class="section-heading">공고 등록</h2>
<form method="POST" action="/final/addnotice.action">
	<div id="noticeContent">
		<div id="noticePcdata">회사소개</div>
		<textarea name="noticeContent" class="form-control">${content}</textarea>
	</div>
	<div></div>
</form>
