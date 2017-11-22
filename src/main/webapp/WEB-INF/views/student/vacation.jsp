<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!-- PAGE CONTENT -->
<form method="post" action="${pageContext.request.contextPath}/student/vacationGo.action">
	<!-- DATE PICKER -->
	<div class="panel panel-default" id="date-picker-demo">
		<div class="panel-heading">
			<h2 class="panel-title section-heading no-margin">희망일 지정</h2>
		</div>
		<div class="panel-body">
			<div class="input-group">
				<input type="text" id="datepicker" name="day" class="form-control">
				<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
			</div>
		</div>
	</div>
	<!-- END DATE PICKER -->
	<!-- TEXT AREA WITH COUNTER  -->
	<div class="panel panel-default" id="textarea-demo">
		<div class="panel-heading">
			<h2 class="panel-title section-heading no-margin">사유 작성</h2>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<select class="form-control" name="type">
				<c:forEach items="${typeList}" var="dto">
					<option value="${dto.seq}">${dto.atType}</option>
				</c:forEach>
				</select>
				</div>
			<div class="form-group">
				<p>총 휴가일수는  ${remainVac} 일 입니다</p>
				<p>사용하신 휴가일수는  ${checkVac} 일 입니다</p>
				<textarea name="content" class="textarea form-control" rows="4" cols="30" maxlength="100" style="resize: none;" required></textarea>
				<p class="help-block text-right js-textarea-help">
					<span class="text-muted"></span>
				</p>
			</div>
		</div>
	</div>
	<!-- END TEXT AREA WITH COUNTER -->
	<button type="submit" class="btn btn-primary" style="float:right; width: 20%; ">신청</button>
</form>
<!-- END PAGE CONTENT -->