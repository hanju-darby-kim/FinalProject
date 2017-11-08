<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!-- 참고 : <link rel="stylesheet" href="/memo/css/bootstrap.css"> -->
<link href='${pageContext.request.contextPath}/css/fullcalendar.min.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/css/fullcalendar.print.min.css' rel='stylesheet' />

<!-- 참고 : <script src="/memo/js/jquery-1.12.4.js"></script> -->
<script src='${pageContext.request.contextPath}/js/moment.min.js'></script>
<script src='${pageContext.request.contextPath}/js/jquery.min.js'></script>
<script src='${pageContext.request.contextPath}/js/fullcalendar.min.js'></script>
<script>

	$(document).ready(function() {

		$("#calendar").fullCalendar({
			defaultDate: '2017-10-12',
			editable: true,
			eventLimit: true, 
			events: [
				{
					title: 'All Day Event',
					start: '2017-10-01'
				},
				{
					title: 'Long Event',
					start: '2017-10-07',
					end: '2017-10-10'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2017-10-09T16:00:00'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2017-10-16T16:00:00'
				},
				{
					title: 'Conference',
					start: '2017-10-11',
					end: '2017-10-13'
				},
				{
					title: 'Meeting',
					start: '2017-10-12T10:30:00',
					end: '2017-10-12T12:30:00'
				},
				{
					title: 'Lunch',
					start: '2017-10-12T12:00:00'
				},
				{
					title: 'Meeting',
					start: '2017-10-12T14:30:00'
				},
				{
					title: 'Happy Hour',
					start: '2017-10-12T17:30:00'
				},
				{
					title: 'Dinner',
					start: '2017-10-12T20:00:00'
				},
				{
					title: 'Birthday Party',
					start: '2017-10-13T07:00:00'
				},
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2017-10-28'
				}
			]
		});
		
	});

</script>
<style>

	body {
		margin: 40px 10px;
		padding: 0;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		font-size: 14px;
	}

	#calendar {
		max-width: 900px;
		margin: 0 auto;
	}

</style>
<div id="calendar"></div>



<%-- <h2 class="section-heading">공고 등록</h2>
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
	
</script> --%>
	
	
	
	
<!-- 여기까지 -->	




