<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!-- PAGE CONTENT -->
	<!-- DATE PICKER -->
<form method="post" action="${pageContext.request.contextPath}/manager/vacationGo.action">
	<div class="panel panel-default" id="date-picker-demo">
		<div class="panel-heading">
			<h2 class="panel-title section-heading no-margin">휴가일</h2>
		</div>
		<div class="panel-body">
			<div class="input-group">
				<input type="text" id="datepicker" name="day" value="${dto.tempdate}" class="form-control" readonly>
				<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
			</div>
		</div>
	</div>
	<!-- END DATE PICKER -->
	<!-- TEXT AREA WITH COUNTER  -->
	<div class="panel panel-default" id="textarea-demo">
		<div class="panel-heading">
			<h2 class="panel-title section-heading no-margin">사유</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<input class="form-control" name="type" value="${dto.temptype}" type="text" readonly>
			</div>
			<div class="form-group">
				<p>해당 학생의 총 휴가일수는  ${remain} 일 입니다</p>
				<p>이미 사용한 휴가일수는  ${check} 일 입니다</p>
				<textarea name="content" class="textarea form-control" rows="4" cols="30" maxlength="100" style="resize: none;" readonly>${dto.content}</textarea>
				<p class="help-block text-right js-textarea-help">
					<span class="text-muted"></span>
				</p>
			</div>
		</div>
	</div>
	<!-- END TEXT AREA WITH COUNTER -->
	<input type="hidden" name="sseq" value="${dto.tempseq}" />
	<input type="hidden" name="resultseq" value="${dto.seq}" />
	<div style="float:right;">
		<button type="submit" class="btn btn-primary">승인처리</button>
		<button type="button" class="btn btn-danger" onclick="location.href='${pageContext.request.contextPath}/manager/vacationNo.action?seq=${dto.seq}';">거부처리</button>
	</div>
</form>
<!-- END PAGE CONTENT -->