<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
		<!-- MAIN -->
		<div class="shop-main register">
			<div class="container">
				<!-- BREADCRUMBS -->
				<ol class="breadcrumb link-accent separator-arrow">
					<li><a href="index.html" title="Home"><i class="fa fa-home"></i></a></li>
					<li class="active">Register</li>
				</ol>
				<!-- END BREADCRUMBS -->
				<!-- REGISTER BOX -->
				<div class="account-box register-box">
					<h1>Create an account</h1>
					
					
					
					<form method="POST" action="/final/registerok.action" class="form-horizontal" role="form">
						<div class="form-group">
							<label for="username" class="control-label sr-only">Username</label>
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user"></i></span>
									<input type="text" class="form-control" id="username" placeholder="Username">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="control-label sr-only">Email</label>
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-envelope"></i></span>
									<input type="email" class="form-control" id="email" placeholder="Email">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="control-label sr-only">Password</label>
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock"></i></span>
									<input type="password" class="form-control" id="password" placeholder="Password">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="password2" class="control-label sr-only">Repeat Password</label>
							<div class="col-sm-12">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock"></i></span>
									<input type="password" class="form-control" id="password2" placeholder="Repeat Password">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<label class="fancy-checkbox">
									<input type="checkbox">
									<span>Subscribe me to the newsletter</span>
								</label>
							</div>
							<div class="col-sm-12">
								<label class="fancy-checkbox">
									<input type="checkbox">
									<span>I accept the <a href="#">Terms &amp; Agreement</a></span>
								</label>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-12">
								<button type="submit" class="btn btn-primary btn-block"><i class="fa fa-check-circle"></i> Create Account</button>
							</div>
						</div>
					</form>
					
					
					<p><em>Already have an account? 이미 만들었어요?</em> <a href="login.action"><strong>Login</strong></a></p>
				</div>
				<!-- END REGISTER BOX -->
			</div>
		</div>
		<!-- END MAIN -->
