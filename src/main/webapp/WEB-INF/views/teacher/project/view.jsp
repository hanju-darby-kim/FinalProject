<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
.dropdown-menu{
	z-index:1100;
}
</style>
<div class="project-box border-solid">
	<div class="project-row">
		<div class="explain-box">객체지향 프로그래밍(JAVA)</div>
	</div>
</div>
<div style="height: 20px;"></div>
<div class="project-box border-dashed">
	<div class="project-row" id="addbtn" data-toggle="modal"
		data-target="#myModal">
		<div class="plus-box">
			<i class="fa fa-plus fa-3x" aria-hidden="true"></i>
		</div>
		<div class="explain-box">새 프로젝트 추가하기</div>
		<div style="clear: both;"></div>
	</div>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">새 프로젝트 등록</h4>
			</div>
			<form method="post" action="/Project/club/voteaddok.do?">
				<div class="modal-body">

					<div class="mb-title">
						<div>개설 과정명</div>
						<div>
							<input type="text" id="title" name="title"
								placeholder="제목을 입력하세요">
						</div>
					</div>
					<div class="mb-items">
						<div>프로젝트 과목명</div>
						<div>
							<select class="form-control">
								<option value="객체지향프로그래밍(Java)">객체지향프로그래밍(JAVA)</option>
								<option value="객체지향프로그래밍(Java)">객체지향프로그래밍(JAVA)</option>
								<option value="객체지향프로그래밍(Java)">객체지향프로그래밍(JAVA)</option>
							</select>
						</div>
					</div>

					<div class="mb-time">
						<div>프로젝트날짜 설정</div>

						<div class="input-group input-append date">
							<div class="input-group datebox">
								<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
								<input type="text" id="datepicker" class="form-control">
							</div>
							<div class="datebox-middle"> ~ </div>
							<div class="input-group datebox">
								<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
								<input type="text" id="datepicker2" class="form-control">
							</div>
						</div>
						<script>
						var nowTemp = new Date();
						var now = new Date(nowTemp.getFullYear(), nowTemp.getMonth(), nowTemp.getDate(), 0, 0, 0, 0);
						 
						var checkin = $('#datepicker').datepicker({
						  onRender: function(date) {
						    return date.valueOf() < now.valueOf() ? 'disabled' : '';
						  }
						}).on('changeDate', function(ev) {
						  if (ev.date.valueOf() > checkout.date.valueOf()) {
						    var newDate = new Date(ev.date)
						    newDate.setDate(newDate.getDate() + 1);
						    checkout.setValue(newDate);
						  }
						  checkin.hide();
						  $('#datepicker2')[0].focus();
						}).data('datepicker');
						var checkout = $('#datepicker2').datepicker({
						  onRender: function(date) {
						    return date.valueOf() <= checkin.date.valueOf() ? 'disabled' : '';
						  }
						}).on('changeDate', function(ev) {
						  checkout.hide();
						}).data('datepicker');
						</script>


					</div>

				</div>
				<div class="modal-footer">
					<input type="submit" class="btn btn-default" value="올리기"> <input
						type="hidden" name="clubseq" value="">
				</div>
			</form>
		</div>

	</div>
</div>