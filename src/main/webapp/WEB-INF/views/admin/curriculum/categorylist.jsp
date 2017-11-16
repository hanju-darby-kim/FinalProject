<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

<style>
	#categoryaddtbl { width: 420px; }
	#categoryaddtbl th:NTH-CHILD(1) { width: 50px; }
	#categoryaddtbl th:NTH-CHILD(2) { width: 270px; }
	#categoryaddtbl th:NTH-CHILD(3) { width: 100px; }
	#categoryaddtbl td { text-align: center; }
	#categoryaddtbl tr:NTH-LAST-CHILD(2)>td:FIRST-CHILD { background-color:red; }
	

</style>

<script type="text/javascript">
	$(document).ready(function() {
		
		//console.log($("#categoryaddtbl tr:NTH-LAST-CHILD(2)>td:FIRST-CHILD").text());
	});
	
	var seq;
	function add() {
		//alert("ajax 동작");
		//alert($("#categoryname").val());
		
		//;%레퍼런스 스크립트에서 리스트 값에 접근하기
		alert(${list.size()}); //29
		alert(${list[list.size() - 1].seq});
		seq = ${list[list.size() - 1].seq} + 1;
		
		var num = Number($("#categoryaddtbl tr:NTH-LAST-CHILD(2)>td:FIRST-CHILD").text()) + 1;
		
		$.ajax({
			type: "POST",
			url: "${pageContext.request.contextPath}/admin/curri/categoryaddok.action",
			data: "categoryname=" + $("#categoryname").val(),
			dataType: "json",
			success: function(result) {
				//추가 성공(1)
				//추가 실패(0)
				if (result.addCategoryresult == "1") {
					//var seq = ${list.size()} + 1;
					var tr = "<tr><td>" + num + "</td><td>" + $("#categoryname").val() + "</td><td>" + "<a href='#' style='cursor: pointer;' onclick='modify(" + seq + "," + num + ");'>[수정]</a> <a href='#' style='cursor: pointer;' onclick='del(" + seq + "," + num + ");'>[삭제]</a>" + "</tr>";
					//<table></table> : <tr> 태그가 존재하지 않으면 <tbody>도 자동 생성되지 않는다.
					$("#beforepoint").before(tr);
					$("#categoryname").val("");
					
				} else {
					alert("과정 추가에 실패했습니다. 다시 시도해주세요.");
				}
			},
			error: function(a,b,c) {
				alert(c);
			}
		});
	}	

	function modify(seq, statusseq) {
		alert("수정" + seq + "테이블행번호" + statusseq);
		
		//테이블 td를 텍스트박스 value로
		
	}
	
	var count = 0;
	var preseq = 0;
	function del(seq, statusseq) {
		statusseq = statusseq + 1;
		
		if (confirm("정말 삭제하시겠습니까?")){
			$.ajax({
				type: "POST",
				url: "${pageContext.request.contextPath}/admin/curri/categorydelok.action",
				data: "delcategoryseq=" + seq,
				dataType: "json",
				success: function(result) {
					//추가 성공(1)
					//추가 실패(0)
					if (result.delCategoryresult == "1") {
						//$("#categoryaddtbl tr:NTH-CHILD(" + statusseq + ")").remove();
						window.location.reload(true);
					} else {
						alert("과정 삭제에 실패했습니다. 다시 시도해주세요.");
					}
				},
				error: function(a,b,c) {
					alert(c);
				}
			});
		}
		
		
	}
	
</script>

<table id="categoryaddtbl">
	<tr>
		<th>번호</th>
		<th>과정명</th>
		<th>수정/삭제</th>
	</tr>
<c:forEach items="${list}" var="dto" varStatus="status">
	<tr>
		<td>${status.count}</td>
		<td>${dto.curType}</td>
		<td>
		<a href="#" style="cursor: pointer;" onclick="modify(${dto.seq}, ${status.count});">[수정]</a>
			<a href="#" style="cursor: pointer;" onclick="del(${dto.seq}, ${status.count});">[삭제]</a>
		</td>
	</tr>
</c:forEach>
	<tr id="beforepoint">
		<!-- ;%재준보완. 추가될 번호 표시하기 -->
		<td colspan="3"><input type="text" id="categoryname" name="categoryname" placeholder="추가추가할 과정명을 입력하세요." style="width: 265px; margin-right: 5px;"><input type="button" value="추가" onclick="add();"/></td>
	</tr>
</table>


