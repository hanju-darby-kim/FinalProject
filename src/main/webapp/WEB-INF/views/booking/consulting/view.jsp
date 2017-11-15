<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>


<style>
	#tbl {}
	#tbl th { width: 150px; text-align: right; padding-right: 15px; vertical-align: middle; } 
	#tbl td { width: 550px; }
	#tbl .short { width: 30%; }
	#tbl #content { height: 300px; }
</style>

<script>
	$(document).ready(function() {
		
	});
</script>
</head>
<body>
	<!-- template.jsp -> (복사) -> add.jsp -->
	<div id="main">
		<section>
		
			<!-- 글쓰기 폼 -->
			<form method="post" action="/MVCTest/board/addok.do" enctype="multipart/form-data">		<!-- 그다음일처리할 서블릿 호출/ 항상 서블릿을 호출 jsp -> jsp x  -->
			<table id="tbl" class="table table-striped">
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" id="name" class="form-control short" required /></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text" name="email" id="email" class="form-control short" required /></td>
				</tr>
				<tr>
					<th>제목</th>
					<td><input type="text" name="subject" id="subject" class="form-control long" required /></td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea name="content" id="content" class="form-control long" required></textarea></td>
				</tr>
				<tr>
					<th>태그</th>
					<td>
						<select name="tag" id="tag" class="form-control short">
							<option value="y">적용함</option>
							<option value="n">적용안함</option>
						</select>
					</td>
				</tr>
				<tr>
					<th>파일</th>
					<td><input type="file" name="attach" id="attach" class="form-control" /></td>
				</tr>
				<tr>
					<th>암호</th>
					<td><input type="password" name="pw" id="pw" class="form-control short" required /></td>
					
				</tr>
			</table>
			<div id="btns">
				<input type="button" value="돌아가기" class="btn btn-default" onclick="history.back();" />
				<input type="submit" value="글쓰기" class="btn btn-primary" />
			</div>
			
			<!-- 지금 작성중인 글이 새글? 답변글? -->
			<input type="hidden" name = "reply" value="${reply}" />
			<input type="hidden" name = "thread" value ="${thread }" />
			<input type="hidden" name ="depth" value="${depth }" />
			</form>
		</section>

	</div>
	
	
	
	
	
	
	
	
	
	
</body>
</html>





















