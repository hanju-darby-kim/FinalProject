<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="noticeContainer" class="margin-20">
	<!-- 기업명 -->
	<div id="companyName" class="margin-20">
		<h1>${view.companyName}</h1>
	</div>		
	
	<!-- 회사소개 -->
	<div id="contentContainer" class="margin-20">
		<div class="viewTitle">
			회사 소개
		</div>
		<div id="content">
			${view.content}
		</div>
	</div>
	
	<div id="websiteContainer" class="margin-20 float-left">
		<div class="viewTitle">
			홈페이지
		</div>
		<div id="website">
			${view.website}
		</div>
	</div>
	
	<div id="addressContainer" class="margin-20 float-left">
		<div class="viewTitle">
			회사 주소
		</div>
		<div id="address">
			${view.companyAddress}
		</div>
	</div>
	
	<div id="endDateContainer" class="margin-20 float-left">
		<div class="viewTitle">
			마감일
		</div>
		<div id="endDate">
			${view.endDate}
		</div>
	</div>
	
	<div id="numberOfEmpContainer" class="margin-20 float-left">
		<div class="viewTitle">
			사원수
		</div>
		<div id="numberOfEmp">
			${view.numberOfEmp}명
		</div>
	</div>
	
	<div id="fondationDateContainer" class="margin-20 float-left">
		<div class="viewTitle">
			설립일
		</div>
		<div id="foundationDate">
			${view.foundationDate}
		</div>
	</div>
	<div style="clear: both;"></div>
	<div id="salesContainer" class="margin-20 float-left">
		<div class="viewTitle">
			매출액
		</div>
		<div id="sales">
			<fmt:formatNumber value="${view.sales}" pattern="#,###" />원
		</div>
	</div>
	
	<div id="companyTypeContainer" class="margin-20 float-left">
		<div class="viewTitle">
			기업형태
		</div>
		<div id="companyType">
			${view.companyType}
		</div>
	</div>
	
	<div id="industryTypeContainer" class="margin-20 float-left">
		<div class="viewTitle">
			산업군
		</div>
		<div id="industryType">
			${view.industryType}
		</div>
	</div>
	<div style="clear: both;"></div>
	<div class="viewTitle">지원분야</div>
	<c:forEach items="${view.field}" var="field">
	<div class="fieldContainer">
		<div class="fieldName">
			${field.fieldName}
		</div>
		<div class="fieldCondition">
			<div><b>학력</b> : ${field.demandEducation.educationType}(${field.demandEducation.essential})</div> 
			<div><b>경력</b> : ${field.careerType}</div>
			<div><b>근무지</b> : ${field.areaType}</div>
			<div><b>연봉</b> : <fmt:formatNumber value="${field.salary}" pattern="#,###" />만원</div>
		</div>
		<div class="fieldContent">
			${field.content}
		</div>
		<div class="fieldDemand">
			<c:if test="${field.demandCertificate.size() != 0}">
			<div id="demandCertificateContainer">
				<div class="viewTitle">자격증</div>
					<c:forEach items="${field.demandCertificate}" var="certificate">
					<div>${certificate.certificateType}(${certificate.essential})</div>
					</c:forEach>
			</div>
			</c:if>
			
			<c:if test="${field.demandLangTest.size() != 0}">
			<div id="demandLangTestContainer">
				<div class="viewTitle">어학</div>
					<c:forEach items="${field.demandLangTest}" var="langTest">
					<div>${langTest.langTestType}(${langTest.essential})</div>
					</c:forEach>
			</div>
			</c:if>
			
			<c:if test="${field.demandMajor.size() != 0}">
			<div id="demandMajorContainer">
				<div class="viewTitle">전공</div>
					<c:forEach items="${field.demandMajor}" var="major">
					<div>${major.majorCategory}(${major.essential})</div>
					</c:forEach>
			</div>
			</c:if>
		</div>
	</div>
	</c:forEach>
	
</div>