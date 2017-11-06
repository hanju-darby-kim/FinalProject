<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
							<h1 style="margin-bottom: 8px;">Log in to your account</h1>
							<form class="form-horizontal" role="form" method="post">
								<div class="form-group col-sm-12" style="text-align: left; margin: 10px auto; padding: 0px">
									<input type="radio" name="target" id="member" value="member" style="margin-right: 3px;"><label for="member" style="margin-right: 8px;">회원</label>
									<input type="radio" name="target" id="manager" value="manager" style="margin-right: 3px;"><label for="manager" style="margin-right: 8px;">매니저</label>
									<input type="radio" name="target" id="admin" value="admin" style="margin-right: 3px;"><label for="admin" style="margin-right: 8px;">관리자</label>
									<input type="radio" name="target" id="teacher" value="teacher" style="margin-right: 3px;"><label for="teacher">강사</label>
								</div>
								<div class="form-group">
									<label for="inputEmail" class="control-label sr-only">ID</label>
									<div class="col-sm-12">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
											<input type="email" class="form-control" id="inputEmail" placeholder="ID">
										</div>
									</div>
								</div>
								<div class="form-group">
									<label for="inputPassword" class="control-label sr-only">Password</label>
									<div class="col-sm-12">
										<div class="input-group">
											<span class="input-group-addon"><i class="fa fa-lock"></i></span>
											<input type="password" class="form-control" id="inputPassword" placeholder="Password">
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

