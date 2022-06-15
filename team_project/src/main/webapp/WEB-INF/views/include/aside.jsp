<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script type="text/javascript">
	$(document).ready(function(){
		$("#message_popup").click(function(){
			window.open("/message/message_list?page=1&type=receive","쪽지보관함","width=1000px,height=667px,scrollbars=yes");
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
                        	<img src="/resources/images/no_image.jpg" alt="프로필 사진" style="width:90px; height:90px;border-radius:100%">
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
					<ul>
						<li>Active</li>
						<li>Movie</li>
					</ul>
					<h5>
						<!-- 임희열 : 로그인 했을 때와 로그인 하지 않았을 떄의 메세지를 다르게 표시하였음 -->
						<c:choose>
							<c:when test="${empty loginUserVo}">
								<a href="/user/login_form">비회원님 환영합니다</a><br>
							</c:when>
							<c:otherwise>
								<a href="/user/mypage?userno=${loginUserVo.userno}">
									<c:choose>
										<c:when test="${not empty loginUserVo.sns_type}">
											${loginUserVo.userid}님
										</c:when>
										<c:otherwise>
											${loginUserVo.userid}(${loginUserVo.nickname})님
										</c:otherwise>
									</c:choose>
								</a><br>
								<a href="/user/mypage?userno=${loginUserVo.userno}">포인트 : ${loginUserVo.point}점</a>
							</c:otherwise>
						</c:choose>
					</h5>
					<c:if test="${not empty loginUserVo}">
						<button class="site-btn btn-sm" id="message_popup" type="button" style="padding:6px 15px;">쪽지함</button>
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
			
			
			<!-- <div class="filter__gallery">
				<div class="product__sidebar__view__item set-bg mix day years"
					data-setbg="resources/images/img/sidebar/tv-1.jpg">
					<div class="ep">18 / ?</div>
					<div class="view">
						<i class="fa fa-eye"></i> 9141
					</div>
					<h5>
						<a href="#">Boruto: Naruto next generations</a>
					</h5>
				</div>
				<div class="product__sidebar__view__item set-bg mix month week"
					data-setbg="resources/images/img/sidebar/tv-2.jpg">
					<div class="ep">18 / ?</div>
					<div class="view">
						<i class="fa fa-eye"></i> 9141
					</div>
					<h5>
						<a href="#">The Seven Deadly Sins: Wrath of the Gods</a>
					</h5>
				</div>
				<div class="product__sidebar__view__item set-bg mix week years"
					data-setbg="resources/images/img/sidebar/tv-3.jpg">
					<div class="ep">18 / ?</div>
					<div class="view">
						<i class="fa fa-eye"></i> 9141
					</div>
					<h5>
						<a href="#">Sword art online alicization war of underworld</a>
					</h5>
				</div>
				<div class="product__sidebar__view__item set-bg mix years month"
					data-setbg="resources/images/img/sidebar/tv-4.jpg">
					<div class="ep">18 / ?</div>
					<div class="view">
						<i class="fa fa-eye"></i> 9141
					</div>
					<h5>
						<a href="#">Fate/stay night: Heaven's Feel I. presage flower</a>
					</h5>
				</div>
				<div class="product__sidebar__view__item set-bg mix day"
					data-setbg="resources/images/img/sidebar/tv-5.jpg">
					<div class="ep">18 / ?</div>
					<div class="view">
						<i class="fa fa-eye"></i> 9141
					</div>
					<h5>
						<a href="#">Fate stay night unlimited blade works</a>
					</h5>
				</div>
			</div> -->
		</div>
		<!-- // 박스 오피스 끝 -->
	</div>
</div>