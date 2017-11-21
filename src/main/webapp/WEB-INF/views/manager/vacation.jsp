<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

		<!-- PAGE CONTENT -->
		<div class="page-content">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<!-- CHECKBOX AND RADIO BUTTON -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<h2 class="panel-title section-heading no-margin">Checkbox And Radio Button</h2>
							</div>
							<div class="panel-body">
								<form class="form-horizontal" role="form">
									<div class="row">
										<div class="col-md-6">
											<label class="switch-input">
												<input type="checkbox" name="switch-checkbox" checked>
												<i data-swon-text="ON" data-swoff-text="OFF"></i> Web Notification
											</label>
											<label class="switch-input">
												<input type="checkbox" name="switch-checkbox">
												<i data-swon-text="ON" data-swoff-text="OFF"></i> Mobile Notification
											</label>
											<label class="switch-input">
												<input type="checkbox" name="switch-checkbox" checked>
												<i data-swon-text="ON" data-swoff-text="OFF"></i> Email Subscription
											</label>
											<label class="switch-input">
												<input type="checkbox" name="switch-checkbox" checked>
												<i data-swon-text="YES" data-swoff-text="NO"></i> Show Birthdate
											</label>
										</div>
										<div class="col-md-6">
											<label class="switch-input">
												<input type="radio" name="switch-radio">
												<i data-swon-text="ON" data-swoff-text="OFF"></i> Daily
											</label>
											<label class="switch-input">
												<input type="radio" name="switch-radio" checked>
												<i data-swon-text="ON" data-swoff-text="OFF"></i> Weekly
											</label>
											<label class="switch-input">
												<input type="radio" name="switch-radio">
												<i data-swon-text="ON" data-swoff-text="OFF"></i> Monthly
											</label>
										</div>
									</div>
								</form>
								<hr>
								<div class="row">
									<div class="col-md-6">
										<label class="fancy-checkbox">
											<input type="checkbox">
											<span>Fancy Checkbox 1</span>
										</label>
										<label class="fancy-checkbox">
											<input type="checkbox" checked="checked">
											<span>Fancy Checkbox 2</span>
										</label>
										<label class="fancy-checkbox">
											<input type="checkbox">
											<span>Fancy Checkbox 3</span>
										</label>
										<label>Inline Checkbox: &nbsp;</label>
										<label class="control-inline fancy-checkbox">
											<input type="checkbox">
											<span>Item 1</span>
										</label>
										<label class="control-inline fancy-checkbox">
											<input type="checkbox">
											<span>Item 2</span>
										</label>
									</div>
									<div class="col-md-6">
										<label class="fancy-radio">
											<input type="radio" name="gender" checked="checked">
											<span><i></i>Male</span>
										</label>
										<label class="fancy-radio">
											<input type="radio" name="gender" checked="checked">
											<span><i></i>Female</span>
										</label>
										<label>Inline Radio: &nbsp;</label>
										<label class="control-inline fancy-radio">
											<input type="radio" name="inline-radio" checked="checked">
											<span><i></i>Radio 1</span>
										</label>
										<label class="control-inline fancy-radio">
											<input type="radio" name="inline-radio" checked="checked">
											<span><i></i>Radio 2</span>
										</label>
										<label class="control-inline fancy-radio">
											<input type="radio" name="inline-radio" checked="checked">
											<span><i></i>Radio 3</span>
										</label>
									</div>
								</div>
							</div>
						</div>
						<!-- END CHECKBOX AND RADIO BUTTON -->
						<!-- MASKED INPUT -->
						<div class="panel panel-default" id="masked-input-demo">
							<div class="panel-heading">
								<h2 class="panel-title section-heading no-margin">Masked Input</h2>
							</div>
							<div class="panel-body">
								<form class="form-horizontal label-left" role="form">
									<div class="form-group">
										<label for="phone" class="col-xs-6 col-sm-3 control-label">Phone
											<br/>
											<small>(999) 999-9999</small>
										</label>
										<div class="col-xs-6 col-sm-9">
											<input type="text" id="phone" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label for="phone-ex" class="col-xs-6 col-sm-3 control-label">Phone + Ext
											<br/>
											<small>(999) 999-9999? x99999</small>
										</label>
										<div class="col-xs-6 col-sm-9">
											<input type="text" id="phone-ex" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label for="tax-id" class="col-xs-6 col-sm-3 control-label">Tax ID
											<br/>
											<small>99-9999999</small>
										</label>
										<div class="col-xs-6 col-sm-9">
											<input type="text" id="tax-id" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label for="ssn" class="col-xs-6 col-sm-3 control-label">SSN
											<br/>
											<small>999-99-9999</small>
										</label>
										<div class="col-xs-6 col-sm-9">
											<input type="text" id="ssn" class="form-control">
										</div>
									</div>
									<div class="form-group">
										<label for="product-key" class="col-xs-6 col-sm-3 control-label">Product Key
											<br/>
											<small>a*-999-a999</small>
										</label>
										<div class="col-xs-6 col-sm-9">
											<input type="text" id="product-key" class="form-control">
										</div>
									</div>
								</form>
							</div>
						</div>
						<!-- END MASKED INPUT -->
						<!-- DATE PICKER -->
						<div class="panel panel-default" id="date-picker-demo">
							<div class="panel-heading">
								<h2 class="panel-title section-heading no-margin">Date Picker</h2>
							</div>
							<div class="panel-body">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
									<input type="text" id="datepicker" class="form-control">
								</div>
								<br>
								<p>Date Range Picker - <small>time picker can be disabled</small></p>
								<div class="input-group">
									<input type="text" id="daterangepicker" class="form-control">
									<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
								</div>
							</div>
						</div>
						<!-- END DATE PICKER -->
						<!-- TEXT AREA WITH COUNTER  -->
						<div class="panel panel-default" id="textarea-demo">
							<div class="panel-heading">
								<h2 class="panel-title section-heading no-margin">Text Area With Counter</h2>
							</div>
							<div class="panel-body">
								<p>Type some words</p>
								<textarea class="textarea-counting form-control" rows="6" cols="30" maxlength="99"></textarea>
								<p class="help-block text-right js-textarea-help">
									<span class="text-muted"></span>
								</p>
							</div>
						</div>
						<!-- END TEXT AREA WITH COUNTER -->
					</div>
				</div>
			</div>
		</div>
		<!-- END PAGE CONTENT -->