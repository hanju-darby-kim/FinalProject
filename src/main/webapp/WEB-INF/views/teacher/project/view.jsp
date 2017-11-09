<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="project-box border-solid">
	<div class="project-row">
		<div class="explain-box">객체지향 프로그래밍(JAVA)</div>
	</div>
</div>
<div style="height:20px;"></div>
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
						<div>프로젝트 제목</div>
						<div>
							<input type="text" id="title" name="title"
								placeholder="제목을 입력하세요">
						</div>
					</div>
					<div class="mb-items">
						<div>프로젝트 항목</div>
						<div>
							<input type="text" id="item1" name="item" placeholder="항목을 입력하세요">
						</div>
						<div>
							<input type="text" id="item2" name="item" placeholder="항목을 입력하세요">
						</div>
						<div>
							<input type="text" id="item3" name="item" placeholder="항목을 입력하세요">
						</div>
					</div>
					<div class="mb-add">
						<div>
							<a href="#" onclick="addBtn();"><span
								class="glyphicon glyphicon-plus" aria-hidden="true"></span> 추가하기</a>
						</div>
					</div>
					<div class="mb-time">
						<div>마감날짜 설정</div>

						<div class="input-group input-append date">
							<button type="button" class="btn btn-default btn-sm"
								id="dateChoice" title="unchecked">&nbsp;&nbsp;</button>
							<input id="datePicker" class="datePicker" type="text"
								name="endDate" placeholder="이틀 후 마감" disabled="disabled">
						</div>



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