<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
$(document).ready(function() {
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
});
</script>

<!-- PAGE CONTENT -->
<div class="panel-body">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h2 class="panel-title section-heading no-margin">출석 상황</h2>
		</div>
		<div class="panel-body">
			<table id="stuTable" width="100%" class="table table-striped table-bordered table-hover">
				<thead>
					<tr class="table-list">
						<th style="text-align:center;">일자</th>
						<th style="text-align:center;">출석상태</th>
						<th style="text-align:center;">입실시간</th>
						<th style="text-align:center;">퇴실시간</th>
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
					<c:forEach items="${list}" var="dto">
					<tr class="table-list text-center">
						<td>${dto.day}</td>
						<td>${dto.type}</td>
						<td>${dto.startTime}</td>
						<td>${dto.endTime}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			<div id="btns" class="col-sm-12" >
				<br />
				<input type="button" value="돌아가기" class="btn btn-default" style="float: right;" onclick="history.back();"/>
				<br />
			</div>
		</div>
	</div>
</div>