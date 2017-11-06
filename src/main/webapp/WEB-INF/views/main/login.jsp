<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:if test="${login eq false}">
    	<script>
    		alert("아이디 또는 비밀번호가 일치하지 않습니다.");
    	</script>
    </c:if>
		<!-- MAIN -->
		<div class="shop-main login" style="margin: 50px;">
			<div class="container">
				<!-- BREADCRUMBS -->
				<ol class="breadcrumb link-accent separator-arrow">
					<li><a href="${pageContext.request.contextPath}/main.action" title="Home"><i class="fa fa-home"></i></a></li>
					<li class="active">Login</li>
				</ol>
				<!-- END BREADCRUMBS -->
				<!-- LOGIN BOX -->
				<div class="row">
					<div class="col-sm-5 col-sm-offset-1 col-lg-4 col-lg-offset-2">
						<div class="account-box login-box box-with-help">
							<h1 style="margin-bottom: 12px;">계정에 로그인하세요.</h1>
							<form class="form-horizontal" role="form" method="post" action="/final/loginok.action">
								<div class="form-group col-sm-12" style="text-align: center; margin: 10px auto; padding: 0px">
									<input type="radio" name="target" id="member" value="member" style="margin-right: 3px;" checked><label for="member" style="margin-right: 10px;">회원</label>
									<input type="radio" name="target" id="manager" value="manager" style="margin-right: 3px;"><label for="manager" style="margin-right: 10px;">매니저</label>
									<input type="radio" name="target" id="admin" value="admin" style="margin-right: 3px;"><label for="admin" style="margin-right: 10px;">관리자</label>
									<input type="radio" name="target" id="teacher" value="teacher" style="margin-right: 3px;"><label for="teacher" style="margin-right: 10px;">강사</label>
									<input type="radio" name="target" id="company" value="company" style="margin-right: 3px;"><label for="company">기업</label>
								</div>
								<div class="form-group">
									<label for="inputId" class="control-label sr-only">ID</label>
									<div class="col-sm-12">
										<div class="input-group">
											<!-- 아이디 입력 -->
											<span class="input-group-addon"><i class="fa fa-asterisk"></i></span>
											<input type="text" class="form-control" id="inputId" placeholder="ID" name="id">
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword" class="control-label sr-only">Password</label>
									<div class="col-sm-12">
										<div class="input-group">
											<!-- 비밀번호 입력 -->
											<span class="input-group-addon"><i class="fa fa-lock"></i></span>
											<input type="password" class="form-control" id="inputPassword" placeholder="Password" name="pw">
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-xs-7">
										<button type="submit" class="btn btn-primary btn-block"><i class="fa fa-sign-in"></i> 로그인</button>
									</div>
									<div class="col-xs-5 text-right">
										<a href="#"><em>forgot password?</em></a>
									</div>
								</div>
							</form>
							<p><em>아직 계정이 없으신가요?</em> <a href="shop-register.html"><strong>회원가입</strong></a></p>
							<button type="button" class="btn btn-link btn-login-help"><i class="fa fa-question-circle" title="Click for help"></i></button>
						</div>
					</div>
					<div class="col-sm-5 col-lg-4">
						<div class="login-copytext">
							<h2><i class="fa fa-lock"></i> Secure Login</h2>
							<p>Completely strategize mission-critical human capital before installed base intellectual capital. Proactively fashion ubiquitous architectures and value-added solutions.</p>
							<h2><i class="fa fa-user"></i> We protect your privacy</h2>
							<p>Appropriately customize enabled process improvements via resource maximizing methods of empowerment. Dramatically maintain interactive e-commerce before process-centric resources.</p>
						</div>
					</div>
				</div>
				<!-- END LOGIN BOX -->
			</div>
		</div>
		<!-- END MAIN -->

