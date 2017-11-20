<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="page-header one-column has-company-background-image">
	<div class="container">
		<h1 class="page-title">SIST Information</h1>
		<ol class="breadcrumb link-accent">
			<li>Home</li>
			<li>${menuCategory.bigCategory}</li>
			<li>${menuCategory.middleCategory}</li>
			<c:if test="${menuCategory.smallCategory ne '없음'}">
				<li>${menuCategory.smallCategory}</li>
			</c:if>
		</ol>
	</div>
</div>