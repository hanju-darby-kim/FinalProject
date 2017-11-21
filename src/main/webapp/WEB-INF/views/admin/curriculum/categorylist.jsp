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
	/* #categoryaddtbl tr:NTH-LAST-CHILD(2)>td:FIRST-CHILD { background-color:red; } */

</style>

<script type="text/javascript">
	$(document).ready(function() {
		//console.log($("#categoryaddtbl tr:NTH-LAST-CHILD(2)>td:FIRST-CHILD").text());
		
	});

	//카테고리 추가
	var seq;
	function add() {
		//alert("ajax 동작");
		//alert($("#categoryname").val());
		
		//;%레퍼런스 스크립트에서 리스트 값에 접근하기
		//alert(${list.size()}); //29
		//seq = ${list[list.size() - 1].seq} + 1;
		
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
					seq = result.lastseq;
					var tr = "<tr><td>" + num + "</td><td>" + $("#categoryname").val() + "</td><td>" + "<a href='#' style='cursor: pointer;' onclick='modify(" + seq + "," + num + ");'>[수정]</a> <a href='#' style='cursor: pointer;' onclick='del(" + seq + "," + num + ");'>[삭제]</a>" + "</tr>";
					//<table></table> : <tr> 태그가 존재하지 않으면 <tbody>도 자동 생성되지 않는다.
					$("#beforepoint").before(tr);
					$("#categoryname").val("");
					
				} else {
					alert("카테고리 추가에 실패했습니다. 다시 시도해주세요.");
				}
			},
			error: function(a,b,c) {
				alert(c);
			}
		});
	}	
	
	//카테고리 수정하기 위한 입력폼 변경하기
	function modify(seq, statusseq) {
		//alert("수정" + seq + "테이블행번호" + statusseq);
		layoutstatusseq = statusseq + 1;
		var categorytext = $("#categoryaddtbl tr:NTH-CHILD(" + layoutstatusseq + ") td:NTH-CHILD(2)").text();
		tr = '<td><input type="text" id="editcategoryname" name="editcategoryname" value="'+ categorytext +'"/> <input type="button" value="저장하기" onclick="editok(' + seq + ',' + statusseq + ');" style="cursor: pointer;"/></td>';
		
		$("#categoryaddtbl tr:NTH-CHILD(" + layoutstatusseq + ") td:NTH-CHILD(2)").empty();
		$("#categoryaddtbl tr:NTH-CHILD(" + layoutstatusseq + ") td:NTH-CHILD(2)").prepend(tr);
	}
	//카테고리 수정
	function editok(seq, statusseq) {
		//alert("넘겨받은 시퀀스" + seq + "테이블행번호" + statusseq);
		//alert("수정할 카테고리 이름" + $("#editcategoryname").val());
		
		$.ajax({
			type: "POST",
			url: "${pageContext.request.contextPath}/admin/curri/categoryeditok.action",
			data: "seq=" + seq + "&editcategoryname=" + $("#editcategoryname").val(),
			dataType: "json",
			success: function(result) {
				//추가 성공(1)
				//추가 실패(0)
				if (result.editCategoryresult == "1") {
					//var seq = ${list.size()} + 1;
					window.location.reload(true);
				} else {
					alert("카테고리 수정에 실패했습니다. 다시 시도해주세요.");
				}
			},
			error: function(a,b,c) {
				alert(c);
			}
		});
		
	}

	//카테고리 삭제
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
						alert("카테고리 삭제에 실패했습니다. 다시 시도해주세요.");
					}
				},
				error: function(a,b,c) {
					alert(c);
				}
			});
		}
	}
	
	//창 종료시키기
	function windowclose() {
		opener.parent.location.reload(true);
		window.close();
	}
	
	//창 끄기방지
	function closeIt()
	{
		alert("창 강제종료");
	}
	
</script>

<table id="categoryaddtbl" ombeforeunload="closeIt();">
	<tr>
		<th>번호</th>
		<th>과정명</th>
		<th>수정/삭제</th>
	</tr>
<c:forEach items="${list}" var="dto" varStatus="status">
	<tr>
		<td>${status.count}</td>
		<td>${dto.category}</td>
		<td>
		<a href="#" style="cursor: pointer;" onclick="modify(${dto.seq}, ${status.count});">[수정]</a>
			<a href="#" style="cursor: pointer;" onclick="del(${dto.seq}, ${status.count});">[삭제]</a>
		</td>
	</tr>
</c:forEach>
	<tr id="beforepoint">
		<!-- ;%재준보완. 추가될 번호 표시하기 -->
		<td colspan="3"><input type="text" id="categoryname" name="categoryname" placeholder="추가할 과정명을 입력하세요." style="width: 265px; margin-right: 5px;"><input type="button" value="추가" onclick="add();"/></td>
	</tr>
</table>
<div style="width: 420px; text-align: right; margin-top: 10px;">
	<input type="button" value="창 닫기" onclick="windowclose();"/>
</div>

