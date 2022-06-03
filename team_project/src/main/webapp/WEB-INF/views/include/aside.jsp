<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="col-lg-4 col-md-4">
	<div class="product__sidebar">
		<!-- 마이페이지 시작 -->
		<div class="product__sidebar__comment">
			<div class="section-title">
				<h5>마이페이지</h5>
			</div>
			<div class="product__sidebar__comment__item">
				<div class="product__sidebar__comment__item__pic">
					<img src="resources/images/img/sidebar/comment-1.jpg" alt="">
				</div>
				<div class="product__sidebar__comment__item__text">
					<ul>
						<li>Active</li>
						<li>Movie</li>
					</ul>
					<h5>
						<!-- 임희열 : 로그인 되어있는 상태를 확인하기 위해 임시로 작성 -->
						<a href="#">아이디 : ${loginUserVo.userid}</a><br>
						<a href="#">유저네임 : ${loginUserVo.username}</a><br>
						<a href="#">포인트 : ${loginUserVo.point}</a>
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