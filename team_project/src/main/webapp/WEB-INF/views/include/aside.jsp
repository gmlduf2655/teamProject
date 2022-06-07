<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-lg-4 col-md-4">
	<div class="product__sidebar">
		<!-- 마이페이지 시작 -->
		<div class="product__sidebar__comment">
			<div class="section-title">
				<h5>마이페이지</h5>
			</div>
			<div class="product__sidebar__comment__item">
				<div class="product__sidebar__comment__item__pic">
					<c:choose>
                        <c:when test="${empty loginUserVo.profile_image}" >
                        	<img src="/resources/images/no_image.jpg" alt="프로필 사진" style="width:90px; height:130px;">
                        </c:when>
                        <c:otherwise>
                        	<c:choose>
		                        <c:when test="${empty loginUserVo.sns_type}">
		                        	<img src="/user/get_profile_image?filename=${loginUserVo.profile_image}" alt="프로필 사진" style="width:90px; height:130px;">
		                        </c:when>
		                        <c:otherwise>
		                        	<img src="${loginUserVo.profile_image}" alt="프로필 사진" style="width:90px; height:130px;">
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
						<c:choose>
							<c:when test="${empty loginUserVo}">
								<a href="#">비회원님 환영합니다</a><br>
							</c:when>
							<c:otherwise>
								<a href="#">${loginUserVo.userid}(${loginUserVo.nickname})님</a><br>
								<a href="#">환영합니다</a><br>
								<a href="#">포인트 : ${loginUserVo.point}점</a>
							</c:otherwise>
						</c:choose>
						<!-- 임희열 : 로그인 되어있는 상태를 확인하기 위해 임시로 작성 -->
					</h5>
				</div>
			</div>
		</div>
		<!-- // 마이페이지 끝 -->
		
		<!-- 박스 오피스 시작 -->
		<div class="product__sidebar__view">
			<div class="section-title">
				<h5>박스 오피스</h5>
			</div>
			<ul class="filter__controls">
				<li class="active" data-filter="*">Day</li>
				<li data-filter=".week">Week</li>
				<li data-filter=".month">Month</li>
				<li data-filter=".years">Years</li>
			</ul>
			<div class="filter__gallery">
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
			</div>
		</div>
		<!-- // 박스 오피스 끝 -->
	</div>
</div>