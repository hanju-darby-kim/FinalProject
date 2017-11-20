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
		테스트
			<!-- 글쓰기 폼 -->
			<form method="post" action="/final/booking/consultingOk.action" enctype="multipart/form-data">		<!-- 그다음일처리할 서블릿 호출/ 항상 서블릿을 호출 jsp -> jsp x  -->
			<table id="tbl" class="table table-striped">
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" id="name" class="form-control short" required /></td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><input type="text" name="email" id="tel" class="form-control short" required /></td>
				</tr>
				<tr>
					<th>e-mail</th>
					<td><input type="text" name="subject" id="email" class="form-control long" required /></td>
				</tr>
				
				<!-- <tr>
					<th>예약인 구분</th>
					<td>
						<select name="tag" id="tag" class="form-control short">
							<option value="">-- 선택 --</option>
							<option value="4">대학생,일반</option>
							<option value="5">회사에서 교육비 납부</option>
							<option value="6">개인이 교육비 납부(제직자)</option>
						</select>
					</td>
				</tr> -->
		<tr>
			<th>예약인 구분</th>
			<td>
				<select name="ConsulteeType" id="ConsulteeType" class="form-control short">
					<c:forEach items="${list}" var="dto">
						<option value="${dto.seq}">${dto.consulteeType}</option>
					</c:forEach>
				</select>
			</td>
			<!-- <td><input type="text" name="curTypeSeq" id="curTypeSeq" class="form-control short" /></td> -->
		</tr>
		<tr>
			<th>선택 과목</th>
			<td>
				<select name="CurType" id="CurType" class="form-control short">
					<c:forEach items="${list2}" var="dto">
						<option value="${dto.seq}">${dto.curType}</option>
					</c:forEach>
				</select>
			</td>
		</tr>
			
				
				<!-- 	<tr>
						<th><label for="username">선택 과목 </label></th>
						<td> 
							<input type="checkbox" value="5" name="cou"/> 웹 프로그래밍과정
						</td>
					</tr>
					<tr>
						<th></th>
						<td> 
							<input type="checkbox" value="6" name="cou"/> 데이터베이스 과정
						</td>
					</tr>
					<tr>
						<th></th>
						<td> 
							<input type="checkbox" value="7" name="cou"/> 스마트 폰 개발과정
						</td>
					</tr> -->
					<!-- <tr>
						<th></th>
						<td> 
							<input type="checkbox" value="클라우드 과정" name="cou"/> 기타 과정
						</td>
					</tr> -->

					<tr>
						<th scope="row"><label for="username"> 기타 희망과정 : </label></th>
						<td>
							<textarea name="inq" rows="6" cols="60"></textarea>
						</td>
					</tr>
				
			</table>
			<div id="btns" align="center">
				<input type="button" style="width:100px; " value="돌아가기" class="btn btn-default" onclick="history.back();"/>
				<input type="submit" style="width:100px; " value="신청하기" class="btn btn-primary" />
			</div>
			
			<!-- 지금 작성중인 글이 새글? 답변글? -->
			<%-- <input type="hidden" name = "reply" value="${reply}" />
			<input type="hidden" name = "thread" value ="${thread }" />
			<input type="hidden" name ="depth" value="${depth }" /> --%>
			</form>
		</section>

	</div>
	
	
	
	
	
	
	
	
	
	
</body>
</html>





















