<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div id="noticeContainer">
	<!-- 기업명 -->
	<div id="companyName">
		<h1>${view.companyName}</h1>
	</div>		
	
	<!-- 회사소개 -->
	<div id="contentContainer">
		<div id="viewTitle">
			회사 소개
		</div>
		<div id="content">
			${view.content}
		</div>
	</div>
	
	<div id="websiteContainer">
		<div class="viewTitle">
			홈페이지
		</div>
		<div id="website">
			${view.website}
		</div>
	</div>
	
	<div id="addressContainer">
		<div class="viewTitle">
			회사 주소
		</div>
		<div id="address">
			${view.companyAddress}
		</div>
	</div>
	
	<div id="endDateContainer">
		<div class="viewTitle">
			마감일
		</div>
		<div id="endDate">
			${view.endDate}
		</div>
	</div>
	
	<div id="numberOfEmpContainer">
		<div class="viewTitle">
			사원수
		</div>
		<div id="numberOfEmp">
			${view.numberOfEmp}
		</div>
	</div>
	
	<div id="fondationDateContainer">
		<div class="viewTitle">
			설립일
		</div>
		<div id="foundationDate">
			${view.foundationDate}
		</div>
	</div>
	
	<div id="salesContainer">
		<div id="viewTitle">
			매출액
		</div>
		<div id="sales">
			<fmt:formatNumber value="${view.sales}" pattern="#,###" />원
		</div>
	</div>
	
	<div id="companyTypeContainer">
		<div id="viewTitle">
			기업형태
		</div>
		<div id="companyType">
			${view.companyType}
		</div>
	</div>
	
	<div id="industryTypeContainer">
		<div id="viewTitle">
			산업군
		</div>
		<div id="industryType">
			${view.industryType}
		</div>
	</div>
	
	지원분야
	<c:forEach items="${view.field}" var="field">
		
	
	</c:forEach>
	
</div>