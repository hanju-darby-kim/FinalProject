<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

			<li class="dropdown active"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">센터소개 <i class="fa fa-angle-down"></i></a>
				<ul class="dropdown-menu" role="menu">
					<li class="active"><a href="${pageContext.request.contextPath}/center/geyo.action">개요</a></li>
					<li><a href="index-v1_dark-header.html">CEO컬럼</a></li>
					<li><a href="index-v1_light-footer.html">연혁</a></li>
					<li><a href="index-v2.html">시설 및 장비</a></li>
					<li><a href="index-v2_dark-header.html">교수진 소개</a></li>
					<li><a href="index-v3.html">입학안내</a></li>
					<li><a href="index-v4_fullscreen.html">수상현황</a></li>
					<li><a href="index-v5_fullscreen_slider.html">찾아오시는 길</a></li>
				</ul></li>
			<li class="dropdown "><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">취업교육과정 <i class="fa fa-angle-down"></i></a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="${pageContext.request.contextPath}/curProgramming.action">프로그래밍 과정</a></li>
					<li><a href="${pageContext.request.contextPath}/curDatabase.action">데이터베이스 과정</a></li>
					<li><a href="${pageContext.request.contextPath}/curSmartphone.action">스마트폰 과정</a></li>
				</ul></li>
			<li class="dropdown "><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">예약센터 <i class="fa fa-angle-down"></i></a>
				<ul class="dropdown-menu" role="menu">
					<li class="active"><a href="${pageContext.request.contextPath}/booking/consulting.action">예약신청</a></li>
				</ul></li>
			<li class="dropdown "><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">교육서비스 <i class="fa fa-angle-down"></i></a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="portfolio-4-columns.html">취업교육</a></li>
					<li><a href="portfolio-3-columns.html">재직자교육</a></li>
					<li><a href="portfolio-2-columns.html">기업맞춤교육</a></li>
					<li><a href="portfolio-single.html">교육컨설팅</a></li>
				</ul></li>
			<li class="dropdown "><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">인재추천의뢰 <i class="fa fa-angle-down"></i></a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="shop/index.html">업체등록관리</a></li>
					<li><a href="shop/single-product-page.html">구인의뢰</a></li>
					<li><a href="shop/product-filter-grid.html">구인의뢰수정</a></li>
					<li><a href="shop/checkout.html">SIST수료생장점</a></li>
				</ul></li>
			<li class="dropdown "><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">고객센터 <i class="fa fa-angle-down"></i></a>
				<ul class="dropdown-menu" role="menu">
					<li><a href="blog-medium-thumbnail.html">공지사항</a></li>
					<li><a href="blog-full-thumbnail.html">문의게시판</a></li>
					<li><a href="blog-single.html">취업정보</a></li>
					<li><a href="blog-single-full.html">후기</a></li>
					<li><a href="blog-single-full.html">프로젝트</a></li>
					<li><a href="blog-single-full.html">HRD-Net 수강후기</a></li>
					<li><a href="blog-single-full.html">FAQ</a></li>
					<li><a href="blog-single-full.html">강의장임대</a></li>
					<li><a href="blog-single-full.html">결제안내</a></li>
				</ul></li>
				
				<c:if test="${certification.target eq 'student'}">
				<li class="dropdown "><a href="#" class="dropdown-toggle"	data-toggle="dropdown">학생 메뉴 <i class="fa fa-angle-down"></i></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="${pageContext.request.contextPath}/student/attcheck.action">출석체크</a></li>
						<li><a href="${pageContext.request.contextPath}/student/attendance.action">출결확인</a></li>
						<li><a href="${pageContext.request.contextPath}/student/vacation.action">공결신청</a></li>
						<%-- <li><a href="${pageContext.request.contextPath}/student/grant.action">지원금확인</a></li> --%>
						<li><a href="${pageContext.request.contextPath}/student/evaluate.action">동료평가</a></li>
					</ul>
				</li>
				</c:if>
				
				<c:if test="${certification.target eq 'manager'}">
				<li class="dropdown "><a href="#" class="dropdown-toggle" data-toggle="dropdown">매니저 메뉴 <i class="fa fa-angle-down"></i></a>
					<ul class="dropdown-menu" role="menu">		
						<li class="dropdown "><a href="#">학생관리 <i	class="fa fa-angle-right"></i></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="${pageContext.request.contextPath}/manager/attcheck.action">출결개시</a></li>
							<li><a href="${pageContext.request.contextPath}/manager/attendance.action">출결확인</a></li>
							<li><a href="${pageContext.request.contextPath}/manager/manageAtt.action">출결관리</a></li>
						</ul></li>
						<%--<li class="dropdown "><a href="#">지원금관리 <i class="fa fa-angle-right"></i></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="${pageContext.request.contextPath}/manager/grant.action">지원금확인</a></li>
							<li><a href="${pageContext.request.contextPath}/manager/grantrequest.action">지원금신청</a></li>
						</ul></li> --%>
					</ul></li>
				</c:if>
				
				<c:if test="${certification.target eq 'admin'}">

				
				<li class="dropdown "><a href="#" class="dropdown-toggle"	data-toggle="dropdown">관리자 메뉴 <i class="fa fa-angle-down"></i></a>
					<ul class="dropdown-menu" role="menu">	
						<li class="dropdown "><a href="#">근무표 관리<i class="fa fa-angle-right"></i></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="${pageContext.request.contextPath}/admin/write.action">근무표 작성</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/write.action">근무 일지 체크</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/write.action">직원별 근무 차트</a></li>
							</ul>
						</li>
						
						<li>
							<a href="${pageContext.request.contextPath}/admin/curri/curriculumlist.action">과정 관리</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="${pageContext.request.contextPath}/admin/curri/curriculumlist.action">과정 목록</a></li>
								<li><a href="${pageContext.request.contextPath}/admin/curri/add.action">과정 추가</a></li>
							</ul>
						</li>
					</ul>
				</li>

						<%-- <li class="dropdown "><a href="#">학생관리 <i	class="fa fa-angle-right"></i></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="${pageContext.request.contextPath}/admin/attendance.action">출결변경</a></li>
							<li class="dropdown "><a href="#">지원금관리 <i class="fa fa-angle-right"></i></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="${pageContext.request.contextPath}/admin/grant.action">지원금확인</a></li>
									<li><a href="${pageContext.request.contextPath}/admin/grantrequest.action">지원금신청</a></li>
								</ul></li>
						</ul></li> --%>
				</c:if>
				
				<c:if test="${certification.target eq 'company'}">
				<li class="dropdown "><a href="#" class="dropdown-toggle"
				data-toggle="dropdown">기업메뉴 <i class="fa fa-angle-down"></i></a>
				<ul class="dropdown-menu" role="menu">
					<li class="dropdown "><a href="#">공고관리<i class="fa fa-angle-right"></i></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="${pageContext.request.contextPath}/company/list.action">공고목록</a></li>
							<li><a href="${pageContext.request.contextPath}/company/addnotice.action">공고등록</a></li>
							<li><a href="${pageContext.request.contextPath}/company/mylist.action">내 공고 확인</a></li>
						</ul>
					</li>
					<li><a href="blog-full-thumbnail.html">Blog Full Thumbnail</a></li>
					<li><a href="blog-single.html">Blog Single</a></li>
					<li><a href="blog-single-full.html">Blog Single Full</a></li>
				</ul></li>
				</c:if>
				
				<c:if test="${certification.target eq 'teacher'}">
				<li class="dropdown "><a href="#" class="dropdown-toggle"	data-toggle="dropdown">강사 메뉴<i class="fa fa-angle-down"></i></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="${pageContext.request.contextPath}/teacher/evaluate.action">학생 평가</a></li>
						<li><a href="${pageContext.request.contextPath}/teacher/schedule.action">강의스케줄 조회</a></li>
						<li><a href="${pageContext.request.contextPath}/teacher/project.action">프로젝트 관리</a></li>
					</ul>	
				</li>
				</c:if>
				


	<!-- END MAIN NAVIGATION -->
