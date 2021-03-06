<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<style>
/* 평점 별 시작*/
.checked {
  color: orange;
}
 tr.tr_list {
 	cursor: pointer;
 }
.fa fa-star {
	color: white;
}
/* 평점 별 끝*/
</style>

<!-- 영화 정보 시작 -->
<div class="popular__product" style="margin-top: 50px;">
	<div class="row">
		<div class="col-lg-8 col-md-8 col-sm-8">
			<div class="section-title">
				<h4>영화정보</h4>
			</div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4">
			<div class="btn__all">
				<a href="/movie/movieList" class="primary-btn">
					더 보기 
				<i class="bi bi-arrow-right"></i>
				</a>
			</div>
		</div>
	</div>
	<div class="row">
		<c:forEach items="${movieList}" var="movieVo" varStatus="status">
			<c:if test="${status.index < 6}">
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="/movie/displayImage?filename=${movieVo.movie_image_name}"
							style="cursor: pointer;"
							onclick="location.href='/movie/movieInfo?movie_code=${movieVo.movie_code}'">
						</div>
						<div class="product__item__text">
							<ul>
								<li>
									<a style="color: white;" href="/movie/movieListHashTag?sType=movie_genre&keyword=${movieVo.movie_genre}">#${movieVo.movie_genre}</a>
								</li>
								<c:set var="actorsArr" value="${fn:split(movieVo.movie_actors,',')}"/>
								<c:forEach var="actors" items="${actorsArr}">
									<li>
										<a style="color: white;" href="/movie/movieListHashTag?sType=movie_actors&keyword=${actors}">#${actors}</a>
									</li>
								</c:forEach>
							</ul>
							<h5>
								<a href="/movie/movieInfo?movie_code=${movieVo.movie_code}">${movieVo.movie_name}</a>
							</h5>
						</div>
					</div>
				</div>
			</c:if>
		</c:forEach>
	</div>

</div>
<!-- 영화 정보 끝 -->

<!-- 영화 리뷰 시작 -->
<div class="trending__product">
	<div class="row">
		<div class="col-lg-8 col-md-8 col-sm-8">
			<div class="section-title">
				<h4>영화 리뷰</h4>
			</div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4">
			<div class="btn__all">
				<a href="/review/review_list?page=1" class="primary-btn">
					더 보기 
				<i class="bi bi-arrow-right"></i>
				</a>
			</div>
		</div>
	</div>
	<div class="row">
		<c:forEach items="${reviewList}" var="reviewVo" varStatus="status">
			<!-- 리뷰 중에서 이미지가 있는 것 중에서 6개 이하로 메인에 띄우기 -->
			<c:if test="${not empty reviewVo.movie_image_name && status.index < 6}">
				<div class="col-lg-4 col-md-6 col-sm-6">
					<div class="product__item">
						<div class="product__item__pic set-bg"
							data-setbg="/movie/displayImage?filename=${reviewVo.movie_image_name}"
							style="cursor: pointer;"
							onclick="location.href='/review/review_read?review_no=${reviewVo.review_no}'">
							<div class="view">
								<i class="fa fa-eye"></i> ${reviewVo.review_viewcnt}
							</div>
						</div>
						<div class="product__item__text">
							<div style="background-color: rgba(255, 255, 255, 0.1); border-radius: 10px; width: 125px; text-align:center;">
							
							<c:choose>
							<c:when test="${reviewVo.review_star == 5}">
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star	checked"></span>
							<span class="fa fa-star checked"></span>
							</c:when>
							<c:when test="${reviewVo.review_star == 4}">
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star	checked"></span>
							<span class="fa fa-star"></span>
							</c:when>
							<c:when test="${reviewVo.review_star == 3}">
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
							</c:when>
							<c:when test="${reviewVo.review_star == 2}">
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
							</c:when>
							<c:when test="${reviewVo.review_star == 1}">
							<span class="fa fa-star checked"></span>
							<span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
							</c:when>
							<c:when test="${reviewVo.review_star == 0}">
							<span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
							<span class="fa fa-star"></span>
							</c:when>
							</c:choose>
							</div>
							<h5>
								<a href="/review/review_read?review_no=${reviewVo.review_no}">${reviewVo.review_title}</a>
							</h5>
							
						</div>
					</div>
				</div>
			</c:if>
		</c:forEach>
	</div>
</div>
<!-- 영화 리뷰 끝 -->