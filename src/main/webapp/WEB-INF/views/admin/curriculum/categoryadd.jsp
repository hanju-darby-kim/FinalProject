<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	#categoryaddtbl {
		width: 420px;
	}
	#categoryaddtbl th:NTH-CHILD(1) { width: 50px; }
	#categoryaddtbl th:NTH-CHILD(2) { width: 270px; }
	#categoryaddtbl th:NTH-CHILD(3) { width: 100px; }
	#categoryaddtbl td { text-align: center; }
	
</style>

<script type="text/javascript">
	
	function idcheck() {
		
		$.ajax({
			type: "GET",
			url: "/AjaxTest/question01ok.do",
			data: "id=" + $("#id").val(),
			success: function(result) {
				//동일 아이디 없음(1)
				//동일 아이디 있음(0)
				if (result == "1") {
					$("#result").text("사용가능한 아이디입니다")
				} else {
					$("#result").text("이미 존재하는 아이디입니다")
				}
			},
			error: function(a,b,c) {
				alert(c);
			}
		});
		
	}	
	
</script>

<table id="categoryaddtbl">
	<tr>
		<th>번호</th>
		<th>과정명</th>
		<th>수정/삭제</th>
	</tr>
<c:forEach items="${list}" var="dto">
	<tr>
		<td>${dto.seq}</td>
		<td>${dto.curType}</td>
		<td>
			<a href="" style="cursor: pointer;">[수정]</a>
			<a href="" style="cursor: pointer;">[삭제]</a>
		</td>
	</tr>
</c:forEach>
	<tr>
		<!-- ;%재준보완. 추가될 번호 표시하기 -->
		<td colspan="3"><input type="text" placeholder="추가할 과정명을 입력하세요."/ style="width: 265px; margin-right: 5px;"><input type="button" value="추가" /></td>
	</tr>
</table>
