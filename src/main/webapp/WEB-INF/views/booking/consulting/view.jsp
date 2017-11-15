<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 예약상담 - 예약신청 View -->
컨설팅 화면

	<html>
		<body>
			<!-- 좌측메뉴 include 부분 끝-->
			
			<div id="right-container" class="ov1">
				<h3><span class="index"> > 예약센터 > 예약신청</span></h3> 
			</div>
			<div class="sub_content_center_wrap">
		      <div class="askform">
		    	<form name="ff2" method="post">
					<table width="100%" border="1" cellspacing="0" cellpadding="0">
					<tr>
						<th scope="row"><label for="username">신청인 :</label></th>
						<td><input type="text" size="30" name="name"/></td>
					</tr>
					<tr>
						<th scope="row"><label for="username">연락처 :</label></th>
						<td><input type="text" size="30" name="phone"/></td>
					</tr>
					<tr>
						<th scope="row"><label for="username">e-Mail :</label></th>
						<td><input type="text" size="50" name="email"/></td>
					</tr>
					<tr>
						<th scope="row"><label for="username">구  분 :</label></th>
						<td>
							<input type="radio" value="대학생,일반" name="div"/> 대학생,일반&nbsp;&nbsp;
							<input type="radio" value="회사에서 교육비납부" name="div"/> 회사에서 교육비납부&nbsp;&nbsp;
							<input type="radio" value="개인이 교육비납부" name="div"/> 개인이 교육비납부(재직자)&nbsp;&nbsp;
						</td>
					</tr>
					
					<tr>
						<th scope="row"><label for="username">캠퍼스 선택 :</label></th>
						<td>
							<input type="radio" value="쌍용강남캠퍼스" name="loc"/> 쌍용강남캠퍼스&nbsp;&nbsp;
							<input type="radio" value="쌍용강북캠퍼스" name="loc"/> 쌍용강북캠퍼스&nbsp;&nbsp;
						</td>
					</tr>
					<tr>
						<th ><label for="username">선택 과목 : </label></th>
						<td> 
							<input type="checkbox" value="스마트 폰 개발과정" name="cou"/> 스마트 폰 개발과정
						</td>
					</tr>
					<tr>
						<th></th>
						<td> 
							<input type="checkbox" value="웹 프로그래밍과정" name="cou"/> 웹 프로그래밍과정
						</td>
					</tr>
					<tr>
						<th></th>
						<td> 
							<input type="checkbox" value="데이터베이스 과정" name="cou"/> 데이터베이스 과정
						</td>
					</tr>
					<tr>
						<th></th>
						<td> 
							<input type="checkbox" value="클라우드 과정" name="cou"/> 기타 과정
						</td>
					</tr>

					<tr>
						<th scope="row"><label for="username"> 기타 희망과정 : </label></th>
						<td>
							<textarea name="inq" rows="6" cols="60"></textarea>
						</td>
					</tr>
					<tr>
			          	<td colspan="2" style="text-align:center"> <input type="hidden" name="cmd" value="0"/>
			          		<input type="button" value="보내기" onclick="sendIt()" style="cursor:pointer;border:0;background:url(/images/login/n_btn_send.jpg) no-repeat;width:106px;height:33px;text-indent:-999em;cursor:pointer;overflow:hidden;"/>&nbsp;
			          		<input type="reset" value="다시쓰기" style="cursor:pointer;border:0;background:url(/images/login/n_btn_rewrite.jpg) no-repeat;width:106px;height:33px;text-indent:-999em;cursor:pointer;overflow:hidden;"/>
			          	</td>
			          </tr>
				</table>
				</form>
			  </div>
	       </div>
			
		</div>
		<div id="footer">
			<img src="../images/main/footer.jpg" alt="footer"/>
		</div>
		
		
		<div id="confirmDiv">
			<ul>
				<li class="left"><a href="javascript:;" onclick="log_f('/incumbent/apply.do?index=',1);return false;"></a></li>
				<li class="right"><a href="javascript:;" onclick="log_f('/incumbent/applyMember.do?index=',3);return false;"></a></li> 
			</ul> 
			<input type="hidden" name="index" id="index" />    
		</div>
		<input type="hidden" name="index" id="index" />
				
		
	</div>
</body>
</html>