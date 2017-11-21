<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<!-- 전달받은 에러메시지 띄우기 -->
		<!-- PAGE CONTENT -->
		<div class="page-content page-error text-center">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3">
						<h1>404</h1>
						<h2>오류가 발생했습니다</h2>
						<hr />
						<div class="error-description">
							<p>${errorMsg}</p>
						</div>
						<hr />
						<form class="form-horizontal">
							<div class="input-group" style="width:100%">
								<br />
								<button type="button" class="btn btn-default btn-block" onclick="history.back()">이전 메뉴로 돌아가기</button>
							</span>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- END PAGE CONTENT -->