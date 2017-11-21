<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
$(document).ready(function() {
	
	$('#curTable').DataTable( {
  		order: [0, 'desc'],
      initComplete: function () {
        this.api().columns().every( function () {
          var column = this;
          var select = $('<select><option value=""></option></select>')
            .appendTo( $(column.footer()).empty() )
            .on( 'change', function () {
              var val = $.fn.dataTable.util.escapeRegex(
                $(this).val()
              );

              column
                .search( val ? '^'+val+'$' : '', true, false )
                .draw();
            });

          column.data().unique().sort().each( function ( d, j ) {
            select.append( '<option value="'+d+'">'+d+'</option>' )
          });
        });
      }
   });
	
   $('#stuTable').DataTable( {
  		order: [0, 'desc'],
      initComplete: function () {
        this.api().columns().every( function () {
          var column = this;
          var select = $('<select><option value=""></option></select>')
            .appendTo( $(column.footer()).empty() )
            .on( 'change', function () {
              var val = $.fn.dataTable.util.escapeRegex(
                $(this).val()
              );

              column
                .search( val ? '^'+val+'$' : '', true, false )
                .draw();
            });

          column.data().unique().sort().each( function ( d, j ) {
            select.append( '<option value="'+d+'">'+d+'</option>' )
          });
        });
      }
   });
   
  $('#curBtn').click(function() {
		$.ajax({
			type:'get',
			url:'/manager/attendanceStuList.action',
			data:'curriSeq='+$('#curriSeq').val(),
			success:function(data) {
				
			},
			error:function() {
				alert("오류가 발생했습니다. 다시 시도해 주세요");
			}
		});
	});
   
});
</script>

<!-- PAGE CONTENT -->
<c:if test="${not empty bigList}">
<div class="panel-body">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h2 class="panel-title section-heading no-margin">현재 강의 목록</h2>
		</div>
		<div class="panel-body">
			<table id="curTable" width="100%" class="table table-striped table-bordered table-hover">
				<thead>
					<tr class="table-list">
						<th style="text-align:center;">커리큘럼</th>
						<th style="text-align:center;">시작일</th>
						<th style="text-align:center;">종료일</th>
						<th style="text-align:center;">교사</th>
						<th style="text-align:center;">교육실</th>
						<th style="text-align:center;">내용</th>
					</tr>
				</thead>
					<tfoot>
					<tr class="table-list text-center">
						<th style="text-align:center;"></th>
						<th style="text-align:center;"></th>
						<th style="text-align:center;"></th>
						<th style="text-align:center;"></th>
						<th style="text-align:center;"></th>
						<th style="text-align:center;"></th>
					</tr>
				</tfoot>
				<tbody>
					<c:forEach items="${bigList}" var="dto">
					<tr class="table-list text-center">
						<td>${dto.title}</td>
						<td>${dto.startDate}</td>
						<td>${dto.endDate}</td>
						<td>${dto.teacher}</td>
						<td>${dto.room}</td>
						<td><button type="button" id="btn-custom-small" class="btn btn-outline btn-default glyphicon glyphicon-check" onclick="location.href='${pageContext.request.contextPath}/manager/attendanceStuList.action?curriSeq=${dto.curriSeq}';"></button></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
</c:if>
		
<c:if test="${not empty smallList}">
<div class="panel-body">
	<div class="panel panel-success">
		<div class="panel-heading">
			<h2 class="panel-title section-heading no-margin">해당 강의 수강생 목록</h2>
		</div>
		<div class="panel-body">
			<table id="stuTable" width="100%" class="table table-striped table-bordered table-hover">
				<thead>
					<tr class="table-list">
						<th style="text-align:center;">이름</th>
						<th style="text-align:center;">전화번호</th>
						<th style="text-align:center;">계좌번호</th>
						<th style="text-align:center;">총일수</th>
						<th style="text-align:center;">내용</th>
					</tr>
				</thead>
					<tfoot>
					<tr class="table-list text-center">
						<th style="text-align:center;"></th>
						<th style="text-align:center;"></th>
						<th style="text-align:center;"></th>
						<th style="text-align:center;"></th>
						
					</tr>
				</tfoot>
				<tbody>
					<c:forEach items="${smallList}" var="dto">
					<tr class="table-list text-center">
						<td>${dto.name}</td>
						<td>${dto.tel}</td>
						<td>${dto.accountNumber}</td>
						<td>${dto.day}</td>
						<td><button type="button" id="btn-custom-small" class="btn btn-outline btn-default glyphicon glyphicon-check" onclick="location.href='${pageContext.request.contextPath}/student/attendance.action?seq=${dto.seq}';"></button></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>		
	</div>
</div>
</c:if>
