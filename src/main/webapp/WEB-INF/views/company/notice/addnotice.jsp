<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 




<h2 class="section-heading">공고 등록</h2>
<form method="POST" action="/final/addnotice.action">
	<div id="noticeContiner">
		<div id="NoticeContentContainter">
			<div id="contentPcdata" class="noticeTitle">회사소개</div>
			<textarea name="noticeContent" class="form-control">${content}</textarea>
		</div>
		
		<!-- 게시 시작일과 게시 종료일 입력 -->
		<div id="dateContainer">
			<div id="datePcdata" class="">게시일</div>
			<div class="input-group" style="width: 350px;"> 		
				<input type="text" name="startEndDate" class="form-control">
				<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
			</div>
		</div>
		
		<!-- 종합평가서 여부 -->
		<div id="reportContainer">
			<label class="fancy-checkbox">
	            <input type="checkbox" name="report" value="y">
	            <span>종합평가서</span>
	        </label>
		</div>
		
		<!-- 면접 전형 -->
		<div id="testContainer">
			<div  class="noticeTitle">면접 전형</div>

			<div class="testSubContainer">
				<div class="testPcdata">1차</div>
				<select>
					<c:forEach items="${testlist}" var="testdto">
					<option value="${testdto.seq}">${testdto.testType}</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="testSubContainer">
				<div class="testPcdata">2차</div>
				<select disabled>
					<c:forEach items="${testlist}" var="testdto">
					<option value="${testdto.seq}">${testdto.testType}</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="testSubContainer">
				<div class="testPcdata">3차</div>
				<select disabled>
					<c:forEach items="${testlist}" var="testdto">
					<option value="${testdto.seq}">${testdto.testType}</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="testSubContainer">
				<div class="testPcdata">4차</div>
				<select disabled>
					<c:forEach items="${testlist}" var="testdto">
					<option value="${testdto.seq}">${testdto.testType}</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="testSubContainer">
				<div class="testPcdata">5차</div>
				<select disabled>
					<c:forEach items="${testlist}" var="testdto">
					<option value="${testdto.seq}">${testdto.testType}</option>
					</c:forEach>
				</select>
			</div>
			<button>추가</button> <button>삭제</button>
		</div>
	</div>
	<!-- 지원분야 관련 -->
	<div id="fieldContainer">
		<div id="fieldNameContainer">
			<div id="testPcdata" class="noticeTitle">지원분야명</div>
			<input type="text" name="fieldName">
		</div>
		
		<div id="hireTypeContainer">
			<div class="noticeTitle">고용형태</div>
			<select>
				<c:forEach items="${hiretypelist}" var="hiretypedto">
				<option value="${hiretypedto.seq}">${hiretypedto.hireType}</option>
				</c:forEach>
			</select>
		</div>
		
		<div id="careerTypeContainer">
			<div class="noticeTitle">경력</div>
			<select>
				<c:forEach items="${careertypelist}" var="careertypedto">
				<option value="${careertypedto.seq}">${careertypedto.careerType}</option>
				</c:forEach>
			</select>
		</div>
		
		<div id="areaTypeContainer">
			<div class="noticeTitle">근무지역</div>
			<select>
				<c:forEach items="${areatypelist}" var="areatypedto">
				<option value="${areatypedto.seq}">${areatypedto.area}</option>
				</c:forEach>
			</select>
		</div>
		
		<div id="demandContainer">
			<div id="areaTypeContainer">
				<div class="noticeTitle">요구학력</div>
				<select>
					<c:forEach items="${educationtypelist}" var="educationtypedto">
					<option value="${educationtypedto.seq}">${educationtypedto.educationType}</option>
					</c:forEach>
				</select>
			</div>
			
			<div id="areaTypeContainer">
				<div class="noticeTitle">요구자격증</div>
				<select>
					<c:forEach items="${certificatetypelist}" var="certificatetypedto">
					<option value="${certificatetypedto.seq}">${certificatetypedto.certificateType}</option>
					</c:forEach>
				</select>
			</div>
			
			<div id="areaTypeContainer">
				<div class="noticeTitle">요구어학시험</div>
				<select>
					<c:forEach items="${langtesttypelist}" var="langtesttypedto">
					<option value="${langtesttypedto.seq}">${langtesttypedto.area}</option>
					</c:forEach>
				</select>
			</div>
			
			<div id="areaTypeContainer">
				<div class="noticeTitle">근무지역</div>
				<select>
					<c:forEach items="${areatypelist}" var="areatypedto">
					<option value="${areatypedto.seq}">${areatypedto.area}</option>
					</c:forEach>
				</select>
			</div>
			
			<div id="areaTypeContainer">
				<div class="noticeTitle">근무지역</div>
				<select>
					<c:forEach items="${areatypelist}" var="areatypedto">
					<option value="${areatypedto.seq}">${areatypedto.area}</option>
					</c:forEach>
				</select>
			</div>
		
		</div>
		
		
	</div>
	
	
	
	
	
</form>

<!-- dateRange -->
<!-- Include Required Prerequisites -->
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />

 
<script type="text/javascript">

    $('input[name="startEndDate"]').daterangepicker({
        timePicker: true,
        timePickerIncrement: 30,
        locale: {
            format: 'YYYY-MM-DD h:mm A'
        }
    });
	
</script>
	
	
	
	
	