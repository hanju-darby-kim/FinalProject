<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 




<h2 class="section-heading">공고 등록</h2>
<form method="POST" action="/final/addnotice.action">
	<div id="NoticeContentContainter">
		<div id="contentPcdata" class="noticeTitle">회사소개</div>
		<textarea name="noticeContent" class="form-control">${content}</textarea>
	</div>
	
	<div id="dateContainer">
		<div id="datePcdata">게시일</div>
		<div class="input-group" style="width: 350px;"> 		
			<input type="text" name="daterange" class="form-control">
			<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
		</div>
		
		
	</div>
	<div id="reportContainer">
		<label class="fancy-checkbox">
            <input type="checkbox" name="checkbox1">
            <span>종합평가서</span>
        </label>
	</div>
	
</form>

<!-- Include Required Prerequisites -->
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />

 
<script type="text/javascript">

    $('input[name="daterange"]').daterangepicker({
        timePicker: true,
        timePickerIncrement: 30,
        locale: {
            format: 'YYYY-MM-DD h:mm A'
        }
    });
	
</script>
	
	
	
	
	