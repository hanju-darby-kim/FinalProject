<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 




<h2 class="section-heading">공고 등록</h2>
<form method="POST" action="/final/addnotice.action">
	<div id="noticeContainer">
		<div id="noticeHeadContainer">
			<div id="noticeContentContainter">
				<div id="contentPcdata" class="noticeTitle">회사소개</div>
				<textarea name="noticeContent" id="noticeContent" class="form-control">${content}</textarea>
			</div>
			
			<!-- 게시 시작일과 게시 종료일 입력 -->
			<div id="dateContainer" style="float: left;">
				<div id="datePcdata" class="noticeTitle">게시일</div>
				<div class="input-group" style="width: 350px;"> 		
					<input type="text" name="startEndDate" class="form-control">
					<span class="input-group-addon"><i class="fa fa-calendar"></i></span>
				</div>
			</div>
			
			<!-- 종합평가서 여부 -->
			<div id="reportContainer" style="float: left;">
				<div id="reportPcdata" class="noticeTitle">종합평가서 요청</div>
				<label class="fancy-radio" style="float: left;">
					<input type="radio" name="report" value="y">
					<span><i></i>네</span>
				</label><div style="clear: both;"></div>
				<label class="fancy-radio" style="float: left;">
					<input type="radio" name="report" checked="checked" value="n">
					<span><i></i>아니오</span>
				</label><div style="clear: both;"></div>
				<div style="clear: both;"></div>
			</div>
			<div style="clear: both;"></div>
			
			<!-- 면접 전형 -->
			<div id="testContainer">
				<div class="noticeTitle">면접 전형 <span class="addElement">추가</span> <span class="deleteElement">삭제</span></div>
				<div class="testSubContainer">
					<div class="testPcdata">1차</div>
					<select name="testByNotice1">
						<c:forEach items="${testlist}" var="testdto">
						<option value="${testdto.seq}">${testdto.testType}</option>
						</c:forEach>
					</select>
				</div>
				
				<div class="testSubContainer">
					<div class="testPcdata">2차</div>
					<select name="testByNotice2" disabled>
						<c:forEach items="${testlist}" var="testdto">
						<option value="${testdto.seq}">${testdto.testType}</option>
						</c:forEach>
					</select>
				</div>
				
				<div class="testSubContainer">
					<div class="testPcdata">3차</div>
					<select name="testByNotice3" disabled>
						<c:forEach items="${testlist}" var="testdto">
						<option value="${testdto.seq}">${testdto.testType}</option>
						</c:forEach>
					</select>
				</div>
				
				<div class="testSubContainer">
					<div class="testPcdata">4차</div>
					<select name="testByNotice4" disabled>
						<c:forEach items="${testlist}" var="testdto">
						<option value="${testdto.seq}">${testdto.testType}</option>
						</c:forEach>
					</select>
				</div>
				
				<div class="testSubContainer">
					<div class="testPcdata">5차</div>
					<select name="testByNotice5" disabled>
						<c:forEach items="${testlist}" var="testdto">
						<option value="${testdto.seq}">${testdto.testType}</option>
						</c:forEach>
					</select>
				</div>				
			</div>
			<div style="clear: both;"></div>
			<!-- 면접전형 끝 -->
		</div>
		<!-- 공고 헤드 부분 끝 -->
		<!-- 지원분야 관련(동적추가)1 -->
		<div class="fieldContainer" id="fieldContainer1">
		
			<div class="fieldNameContainer">
				<div class="noticeTitle testPcdata">지원분야명</div>
				<input type="text" name="fieldName1">
			</div>
			
			<div class="hireTypeContainer">
				<div class="noticeTitle">고용형태</div>
				<select name="hireTypeSeq1">
					<c:forEach items="${hiretypelist}" var="hiretypedto">
					<option value="${hiretypedto.seq}">${hiretypedto.hireType}</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="careerTypeContainer">
				<div class="noticeTitle">경력</div>
				<select name="careerTypeSeq1">
					<c:forEach items="${careertypelist}" var="careertypedto">
					<option value="${careertypedto.seq}">${careertypedto.careerType}</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="areaTypeContainer">
				<div class="noticeTitle">근무지역</div>
				<select name="areaTypeSeq1">
					<c:forEach items="${areatypelist}" var="areatypedto">
					<option value="${areatypedto.seq}">${areatypedto.area}</option>
					</c:forEach>
				</select>
			</div>
			
			<!-- 요구사항들 -->
			<div class="demandContainer">
				<div class="information">* 필수에 표시하지 않을 경우 우대사항이 됩니다.</div>
				<div id="demandEducationContainer">
					<div class="noticeTitle">요구학력</div>
					<select name="educationTypeSeq1">
						<c:forEach items="${educationtypelist}" var="educationtypedto">
						<option value="${educationtypedto.seq}">${educationtypedto.educationType}</option>
						</c:forEach>
					</select>
					<label class="fancy-checkbox">
		            	<input type="checkbox"  name="educationEssential1" value="필수">
		            	<span>필수</span>
		        	</label><div style="clear: both;"></div>
				</div>
				
				<!-- 자격증콘테이너 -->
				<div class="demandCertificateContainer">
					<!-- 3개가능 -->
					<div class="noticeTitle">요구자격증 <span class="addElement">추가</span> <span class="deleteElement">삭제</span></div>
					<!-- 1 -->
					<div class="certificateTypeContainer">
						<select name="certificateTypeSeq1_1" disabled>
							<c:forEach items="${certificatetypelist}" var="certificatetypedto">
							<option value="${certificatetypedto.seq}">${certificatetypedto.certificateType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="certificateEssential1_1" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
		        	
		        	<!-- 2 -->
		        	<div class="certificateTypeContainer">
			        	<select name="certificateTypeSeq1_2" disabled>
							<c:forEach items="${certificatetypelist}" var="certificatetypedto">
							<option value="${certificatetypedto.seq}">${certificatetypedto.certificateType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="certificateEssential1_2" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
		        	
		        	<!-- 3 -->
			        <div class="certificateTypeContainer">
			        	<select name="certificateTypeSeq1_3" disabled>
							<c:forEach items="${certificatetypelist}" var="certificatetypedto">
							<option value="${certificatetypedto.seq}">${certificatetypedto.certificateType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="certificateEssential1_3" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
			        </div>
				</div>
				<!-- 자격증콘테이너끝 -->
				
				<!-- 요구어학시험 -->
				<div class="demandLangTestContainer">
					<div class="noticeTitle">요구어학시험 <span class="addElement">추가</span> <span class="deleteElement">삭제</span></div>
					<!-- 1 -->
					<div class="langTestType">
						<select name="langTestTypeSeq1_1" disabled>
							<c:forEach items="${langtesttypelist}" var="langtesttypedto">
							<option value="${langtesttypedto.seq}">${langtesttypedto.langTestType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="langTestEssential1_1" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
		        	
		        	<!-- 2 -->
		        	<div class="langTestType">
						<select name="langTestTypeSeq1_2" disabled>
							<c:forEach items="${langtesttypelist}" var="langtesttypedto">
							<option value="${langtesttypedto.seq}">${langtesttypedto.langTestType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="langTestEssential1_2" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
		        	
		        	<!-- 3 -->
		        	<div class="langTestType">
			        	<select name="langTestTypeSeq1_3" disabled>
							<c:forEach items="${langtesttypelist}" var="langtesttypedto">
							<option value="${langtesttypedto.seq}">${langtesttypedto.langTestType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="langTestEssential1_3" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
				</div>
				<!-- 요구어학시험끝 -->
				
				<div class="demandMajorContainer">
					<div class="noticeTitle">요구학과 <span class="addElement">추가</span> <span class="deleteElement">삭제</span></div>
					<!-- 1 -->
					<div class="majorCategory">
						<select name="majorCategorySeq1_1" disabled>
							<c:forEach items="${majorcategorylist}" var="majorcategorydto">
							<option value="${majorcategorydto.seq}">${majorcategorydto.majorCategory}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="majorEssential1_1" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
		        	
		        	<!-- 2 -->
		        	<div class="majorCategory">
			        	<select name="majorCategorySeq1_2" disabled>
							<c:forEach items="${majorcategorylist}" var="majorcategorydto">
							<option value="${majorcategorydto.seq}">${majorcategorydto.majorCategory}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="majorEssential1_2" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
		        	
		        	<!-- 3 -->
		        	<div class="majorCategory">
			        	<select name="majorCategorySeq1_3" disabled>
							<c:forEach items="${majorcategorylist}" var="majorcategorydto">
							<option value="${majorcategorydto.seq}">${majorcategorydto.majorCategory}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="majorEssential1_3" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
				</div>		
			</div>
			<!-- 요구사항 끝 -->
			<button type="button" class="btn btn-rounded-4x btn-default addField">지원분야 추가</button>
		</div>
		<!-- 지원분야끝 -->
		
		<!-- 지원분야 관련(동적추가)2 -->
		
		<div class="fieldContainer" id="fieldContainer2">
		
			<div class="fieldNameContainer">
				<div class="noticeTitle testPcdata">지원분야명 <div class="fa fa-trash-o"></div></div>
				<input type="text" class="fieldName" name="fieldName1" disabled>
			</div>
			<div>
				<div class="hireTypeContainer">
					<div class="noticeTitle">고용형태</div>
					<select class="hireType" name="hireTypeSeq2" disabled>
						<c:forEach items="${hiretypelist}" var="hiretypedto">
						<option value="${hiretypedto.seq}">${hiretypedto.hireType}</option>
						</c:forEach>
					</select>
				</div>
				
				<div class="careerTypeContainer">
					<div class="noticeTitle">경력</div>
					<select class="careerType" name="careerTypeSeq2" disabled>
						<c:forEach items="${careertypelist}" var="careertypedto">
						<option value="${careertypedto.seq}">${careertypedto.careerType}</option>
						</c:forEach>
					</select>
				</div>
				
				<div class="areaTypeContainer">
					<div class="noticeTitle">근무지역</div>
					<select class="areaType" name="areaTypeSeq2" disabled>
						<c:forEach items="${areatypelist}" var="areatypedto">
						<option value="${areatypedto.seq}">${areatypedto.area}</option>
						</c:forEach>
					</select>
				</div>
				
			</div>
			
			
			<!-- 요구사항들 -->
			<div class="demandContainer" style="clear: both;">
				<div class="information">* 필수에 표시하지 않을 경우 우대사항이 됩니다.</div>
				<div id="demandEducationContainer">
					<div class="noticeTitle">요구학력</div>
					<select class="educationType" name="educationTypeSeq2" disabled>
						<c:forEach items="${educationtypelist}" var="educationtypedto">
						<option value="${educationtypedto.seq}">${educationtypedto.educationType}</option>
						</c:forEach>
					</select>
					<label class="fancy-checkbox">
		            	<input type="checkbox"  class="educationEssential" name="educationEssential2" value="필수" disabled>
		            	<span>필수</span>
		        	</label><div style="clear: both;"></div>
				</div>
				
				<div class="demandCertificateContainer">
					<!-- 3개가능 -->
					<div class="noticeTitle">요구자격증 <span class="addElement">추가</span> <span class="deleteElement">삭제</span></div>
					<!-- 1 -->
					<div class="certificateTypeContainer">
						<select name="certificateTypeSeq2_1" disabled>
							<c:forEach items="${certificatetypelist}" var="certificatetypedto">
							<option value="${certificatetypedto.seq}">${certificatetypedto.certificateType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="certificateEssential2_1" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
		        	
		        	<!-- 2 -->
		        	<div class="certificateTypeContainer">
			        	<select name="certificateTypeSeq2_2" disabled>
							<c:forEach items="${certificatetypelist}" var="certificatetypedto">
							<option value="${certificatetypedto.seq}">${certificatetypedto.certificateType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="certificateEssential2_2" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
		        	
		        	<!-- 3 -->
		        	<div class="certificateTypeContainer">
			        	<select name="certificateTypeSeq2_3" disabled>
							<c:forEach items="${certificatetypelist}" var="certificatetypedto">
							<option value="${certificatetypedto.seq}">${certificatetypedto.certificateType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="certificateEssential2_3" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
				</div>
				
				<!-- 요구 어학시험 시작 -->
				<div class="demandLangTestContainer">
					<div class="noticeTitle">요구어학시험 <span class="addElement">추가</span> <span class="deleteElement">삭제</span></div>
					<!-- 1 -->
					<div class="langTestType">
						<select name="langTestTypeSeq2_1" disabled>
							<c:forEach items="${langtesttypelist}" var="langtesttypedto">
							<option value="${langtesttypedto.seq}">${langtesttypedto.langTestType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="langTestEssential2_1" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
		        	
		        	<!-- 2 -->
		        	<div class="langTestType">
						<select name="langTestTypeSeq2_2" disabled>
							<c:forEach items="${langtesttypelist}" var="langtesttypedto">
							<option value="${langtesttypedto.seq}">${langtesttypedto.langTestType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="langTestEssential2_2" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
		        	
		        	<!-- 3 -->
		        	<div class="langTestType">
			        	<select name="langTestTypeSeq2_3" disabled>
							<c:forEach items="${langtesttypelist}" var="langtesttypedto">
							<option value="${langtesttypedto.seq}">${langtesttypedto.langTestType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="langTestEssential2_3" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
				</div>
				<!-- 요구 어학시험 끝 -->
				
				<div class="demandMajorContainer">
					<div class="noticeTitle">요구학과 <span class="addElement">추가</span> <span class="deleteElement">삭제</span></div>
					<!-- 1 -->
					<div class="majorCategory">
						<select name="majorCategorySeq2_1" disabled>
							<c:forEach items="${majorcategorylist}" var="majorcategorydto">
							<option value="${majorcategorydto.seq}">${majorcategorydto.majorCategory}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="majorEssential2_1" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
		        	
		        	<!-- 2 -->
		        	<div class="majorCategory">
			        	<select name="majorCategorySeq2_2" disabled>
							<c:forEach items="${majorcategorylist}" var="majorcategorydto">
							<option value="${majorcategorydto.seq}">${majorcategorydto.majorCategory}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="majorEssential2_2" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
		        	
		        	<!-- 3 -->
		        	<div class="majorCategory">
			        	<select name="majorCategorySeq2_3" disabled>
							<c:forEach items="${majorcategorylist}" var="majorcategorydto">
							<option value="${majorcategorydto.seq}">${majorcategorydto.majorCategory}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="majorEssential2_3" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
				</div>	
				<!-- 요구어학시험 끝 -->	
			</div>
			<!-- 요구사항 끝 -->
			<input type="button" class="addField" value="지원분야 추가">
		</div>
		<!-- 지원분야끝 -->
		
		<!-- 지원분야 관련(동적추가)3 -->
		<div class="fieldContainer" id="fieldContainer3">
		
			<div class="fieldNameContainer">
				<div class="noticeTitle testPcdata">지원분야명 <div class="fa fa-trash-o"></div></div>
				<input type="text" class="fieldName" name="fieldName1" disabled>
			</div>
			
			<div class="hireTypeContainer">
				<div class="noticeTitle">고용형태</div>
				<select class="hireType" name="hireTypeSeq3" disabled>
					<c:forEach items="${hiretypelist}" var="hiretypedto">
					<option value="${hiretypedto.seq}">${hiretypedto.hireType}</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="careerTypeContainer">
				<div class="noticeTitle">경력</div>
				<select class="careerType" name="careerTypeSeq3" disabled>
					<c:forEach items="${careertypelist}" var="careertypedto">
					<option value="${careertypedto.seq}">${careertypedto.careerType}</option>
					</c:forEach>
				</select>
			</div>
			
			<div class="areaTypeContainer">
				<div class="noticeTitle">근무지역</div>
				<select class="areaType" name="areaTypeSeq3" disabled>
					<c:forEach items="${areatypelist}" var="areatypedto">
					<option value="${areatypedto.seq}">${areatypedto.area}</option>
					</c:forEach>
				</select>
			</div>
			
			<!-- 요구사항들 -->
			<div class="demandContainer">
				<div class="information">* 필수에 표시하지 않을 경우 우대사항이 됩니다.</div>
				<div id="demandEducationContainer">
					<div class="noticeTitle">요구학력</div>
					<select class="educationType" name="educationTypeSeq3" disabled>
						<c:forEach items="${educationtypelist}" var="educationtypedto">
						<option value="${educationtypedto.seq}">${educationtypedto.educationType}</option>
						</c:forEach>
					</select>
					<label class="fancy-checkbox">
		            	<input type="checkbox" name="educationEssential3" value="필수" disabled>
		            	<span>필수</span>
		        	</label><div style="clear: both;"></div>
				</div>
				
				<div class="demandCertificateContainer">
					<!-- 3개가능 -->
					<div class="noticeTitle">요구자격증 <span class="addElement">추가</span> <span class="deleteElement">삭제</span></div>
					<!-- 1 -->
					<div class="certificateTypeContainer">
						<select class="" name="certificateTypeSeq3_1" disabled>
							<c:forEach items="${certificatetypelist}" var="certificatetypedto">
							<option value="${certificatetypedto.seq}">${certificatetypedto.certificateType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="certificateEssential3_1" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
			        	
		        	</div>
		        	
		        	<!-- 2 -->
		        	<div class="certificateTypeContainer">
			        	<select name="certificateTypeSeq3_2" disabled>
							<c:forEach items="${certificatetypelist}" var="certificatetypedto">
							<option value="${certificatetypedto.seq}">${certificatetypedto.certificateType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="certificateEssential3_2" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div><div style="clear: both;"></div>
		        	</div>
		        	
		        	<!-- 3 -->
		        	<div class="certificateTypeContainer">
			        	<select name="certificateTypeSeq3_3" disabled>
							<c:forEach items="${certificatetypelist}" var="certificatetypedto">
							<option value="${certificatetypedto.seq}">${certificatetypedto.certificateType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="certificateEssential3_3" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div><div style="clear: both;"></div>
			        </div>
				</div>
				<!-- 요구자격증끝 -->
				
				<!-- 요구 어학시험 -->
				<div class="demandLangTestContainer">
					<div class="noticeTitle">요구어학시험 <span class="addElement">추가</span> <span class="deleteElement">삭제</span></div>
					<!-- 1 -->
					<div class="langTestType">
						<select name="langTestTypeSeq3_1" disabled>
							<c:forEach items="${langtesttypelist}" var="langtesttypedto">
							<option value="${langtesttypedto.seq}">${langtesttypedto.langTestType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="langTestEssential3_1" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
			        </div>
			        	
		        	<!-- 2 -->
		        	<div class="langTestType">
						<select name="langTestTypeSeq3_2" disabled>
							<c:forEach items="${langtesttypelist}" var="langtesttypedto">
							<option value="${langtesttypedto.seq}">${langtesttypedto.langTestType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="langTestEssential3_2" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
			        </div>
		        	
		        	<!-- 3 -->
		        	<div class="langTestType">
			        	<select name="langTestTypeSeq3_3" disabled>
							<c:forEach items="${langtesttypelist}" var="langtesttypedto">
							<option value="${langtesttypedto.seq}">${langtesttypedto.langTestType}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="langTestEssential3_3" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
				</div>
				<!-- 요구어학시험끝 -->
				
				<!-- 요구학과 -->
				<div class="demandMajorContainer">
					<div class="noticeTitle">요구학과 <span class="addElement">추가</span> <span class="deleteElement">삭제</span></div>
					<!-- 1 -->
					<div class="majorCategory">
						<select name="majorCategorySeq3_1" disabled>
							<c:forEach items="${majorcategorylist}" var="majorcategorydto">
							<option value="${majorcategorydto.seq}">${majorcategorydto.majorCategory}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="majorEssential3_1" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
		        	
		        	<!-- 2 -->
		        	<div class="majorCategory">
			        	<select name="majorCategorySeq3_2" disabled>
							<c:forEach items="${majorcategorylist}" var="majorcategorydto">
							<option value="${majorcategorydto.seq}">${majorcategorydto.majorCategory}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="majorEssential3_2" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
		        	
		        	<!-- 3 -->
		        	<div class="majorCategory">
			        	<select name="majorCategorySeq3_3" disabled>
							<c:forEach items="${majorcategorylist}" var="majorcategorydto">
							<option value="${majorcategorydto.seq}">${majorcategorydto.majorCategory}</option>
							</c:forEach>
						</select>
						<label class="fancy-checkbox">
			            	<input type="checkbox"  name="majorEssential3_3" value="필수" disabled>
			            	<span>필수</span>
			        	</label><div style="clear: both;"></div>
		        	</div>
				</div>		
				<!-- 요구 학과 끝 -->
			</div>
			<!-- 요구사항 끝 -->
		</div>
		<!-- 지원분야끝 -->
	</div>
	<!-- 공고 끝 -->
	<input type="submit" value="등록하기">
</form>

<!-- dateRange -->
<!-- Include Required Prerequisites -->
<script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />

 <script>
 	$(document).ready(function() {
 		$(".fieldContainer").first().nextAll().hide();
 		$(".testSubContainer").first().nextAll().hide(); //면접 전형 1차만 보이게
 		$(".demandCertificateContainer > .certificateTypeContainer").hide(); //요구자격증모두숨김
 		$(".demandLangTestContainer > .langTestType").hide(); //어학시험모두숨김
 		$(".demandMajorContainer > .majorCategory").hide(); //전공모두숨김
 		
 		//+ 누르면 다음 요소 화면에 보임
 		$(".addElement").click(function(event) {
 			var next = $(event.target).parent().nextAll("div:hidden").first();
 			if(next.size() == 0) { alert("더 이상 추가할 수 없습니다."); } //최대 개수 넘어가면 ㄴㄴ
 			next.show(); //보이기
 			next.find(":disabled").prop("disabled", false); //enable 하기
 		});
 		
 		//- 누르면 마지막 요소 제거
 		$(".deleteElement").click(function(event) {
 			var nextContainer = $(event.target).parent().nextAll("div:visible");
 			if(nextContainer.size() == 1
 					&& nextContainer.hasClass("testSubContainer")) { //면접 전형을 하나 이하로 줄이려고 한다면
 				alert("최소 한개의 요건이 필요합니다.");
 			} else {
	 			var last = nextContainer.last(); //보이는 애들 중 마지막 애
	 			last.hide(); //마지막 요소 숨기기
	 			last.find(":enabled").prop("disabled", true); //disable 하면서 숨겨야됨
 			}
 		});
 		
 		$(".addField").click(function(event) {
 			var nextField = $(event.target).parent().next(); //다음 요구 조건
 			nextField.show(); //다음 요구 조건 보이기
 			nextField.find(".fieldName, .hireType, .careerType, .areaType, .educationType, .educationEssential").prop("disabled", false); //얘네 disabled 풀어주기
 		});
 		
 		$(".fa-trash-o").click(function(event) {
 			var parentField = $(event.target).parents(".fieldContainer");
 			parentField.find(".fieldName, .hireType, .careerType, .areaType, .educationType, .educationEssential").prop("disabled", true);
 			parentField.hide();
 			
 		});
 		
 	});
 	
 </script>
 
 
<script type="text/javascript">

    $('input[name="startEndDate"]').daterangepicker({
        timePicker: true,
        timePickerIncrement: 30,
        locale: {
            format: 'YYYY-MM-DD h:mm A'
        }
    });
	
</script>
