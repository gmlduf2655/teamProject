<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">
	$(document).ready(function(){
		// 임희열 : 팝업으로 메세지 보관함 구현하려니까 불편한게 너무 많아서 안씀..
// 		$("#message_popup").click(function(){
// 			window.open("/message/message_list?page=1&type=receive","쪽지보관함","width=1000px,height=667px,scrollbars=yes");
// 		});
		// 임희열 : 회원가입 버튼 클릭시 회원가입 페이지로 이동
		$("#signup_btn").click(function(){
			location.href = "/user/signup_form";
		});
	});
</script>
<div class="col-lg-4 col-md-4">
	<div class="product__sidebar">
		<!-- 마이페이지 시작 -->
		<div class="product__sidebar__comment">
			<div class="section-title">
				<h5>마이페이지</h5>
			</div>
			<div class="product__sidebar__comment__item">
				<div class="product__sidebar__comment__item__pic">
					<!-- 임희열 : 로그인을 하지않았을 때 빈 프로필 사진을 보여줌 -->
                    <!-- 임희열 : 로그인을 했을 때  기존회원이면 C:/에서 프로필 사진을 가져오고 간편로그인 회원이면 Url을 통해서 프로필 사진을 가져옴-->
					<c:choose>
                        <c:when test="${empty loginUserVo.profile_image}" >
                        	<img src="/resources/images/default_image.jpg" alt="프로필 사진" style="width:90px; height:90px;border-radius:100%">
                        </c:when>
                        <c:otherwise>
                        	<c:choose>
		                        <c:when test="${empty loginUserVo.sns_type}">
		                        	<img src="/user/get_profile_image?filename=${loginUserVo.profile_image}" alt="프로필 사진" style="width:90px; height:90px;border-radius:100%">
		                        </c:when>
		                        <c:otherwise>
		                        	<img src="${loginUserVo.profile_image}" alt="프로필 사진" style="width:90px; height:90px;border-radius:100%">
		                        </c:otherwise>
		                	</c:choose>
                        </c:otherwise>
                    </c:choose>
				</div>
				<div class="product__sidebar__comment__item__text">
					<c:if test="${not empty loginUserVo}">
						<ul>
							<li>Active</li>
							<li>Movie</li>
						</ul>
					</c:if>
					<h5>
						<!-- 임희열 : 로그인 했을 때와 로그인 하지 않았을 떄의 메세지를 다르게 표시하였음 -->
						<!-- 임희열 : 마이페이지 부분에서 로그인 하지 않았을 때는 마이페이지에서 로그인을 하거나 회원 가입 페이지로 갈 수 있게 변경하였습니다 -->
						<!-- 임희열 : 로그인 했을 때는 마이페이지에서 로그아웃 할 수 있게 변경하였습니다 -->
						<c:choose>
							<c:when test="${empty loginUserVo}">
<!-- 								<a href="/user/login_form">비회원님 환영합니다</a><br> -->
								<form method="post" action="/user/login_run">
									<input type="text" class="form-control mb-2" style="width:80%;"
									name="userid" placeholder="아이디">
									<input type="password" class="form-control mb-2" style="width:80%;" 
									name="userpw" placeholder="비밀번호">
									<button type="submit" class="site-btn btn-sm" style="padding:6px 15px;">로그인</button>
									<button type="button" class="site-btn btn-sm" id="signup_btn" style="padding:6px 15px;">회원가입</button>
								</form>
							</c:when>
							<c:otherwise>
								<a href="/mypage/main?userno=${loginUserVo.userno}">
									<c:choose>
										<c:when test="${not empty loginUserVo.sns_type}">
											${loginUserVo.userid}님
										</c:when>
										<c:otherwise>
											${loginUserVo.userid}(${loginUserVo.nickname})님
										</c:otherwise>
									</c:choose>
								</a><br>
								<a href="/mypage/main?userno=${loginUserVo.userno}">포인트 : ${loginUserVo.point}P</a>
							</c:otherwise>
						</c:choose>
					</h5>
					<c:if test="${not empty loginUserVo}">
						<a class="site-btn btn-sm" style="padding:6px 15px;" href="/event/attendance">출석</a>
						<a class="site-btn btn-sm" style="padding:6px 15px;" href="/message/message_list?page=1&type=receive">쪽지함</a>
						<a class="site-btn btn-sm" style="padding:6px 15px;" href="/user/logout">로그아웃</a>
					</c:if>
				</div>
			</div>
		</div>
		<!-- // 마이페이지 끝 -->
		
		<!-- 유수연 박스 오피스 시작 -->
		<div class="product__sidebar__view">
			<div class="section-title">
				<h5>박스 오피스</h5>
			</div>
			<ul class="filter__controls">
				<li><b>일간</b></li>
			</ul>
			<div class="anime__details__sidebar">
                 <%@ include file="/WEB-INF/views/movie/boxoffice.jsp"%>
            </div>
			
		</div>
		<!-- // 박스 오피스 끝 -->
	</div>
</div>