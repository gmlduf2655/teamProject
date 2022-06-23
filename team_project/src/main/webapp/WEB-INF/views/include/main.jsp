<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!-- 영화 정보 -->
<div class="popular__product">
	<div class="row">
		<div class="col-lg-8 col-md-8 col-sm-8">
			<div class="section-title">
				<h4>영화정보</h4>
			</div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4">
			<div class="btn__all">
				<a href="/movie/movieList" class="primary-btn">더 보기 <i class="bi bi-arrow-right"></i></a>
			</div>
		</div>
	</div>
	
	<div class="row">
	<c:forEach items="${movieList2}" var="movieVo" varStatus="status">
	<c:if test="${status.index < 6}">
		<div class="col-lg-4 col-md-6 col-sm-6">
		
			
			<div class="product__item">
				<div class="product__item__pic set-bg"
					data-setbg="/movie/displayImage?filename=${movieVo.movie_image_name}">
					
				</div>
				<div class="product__item__text">
					<ul>
						<li>Active</li>
						<li>Movie</li>
					</ul>
					<h5>
						<a href="#">${movieVo.movie_name}</a>
					</h5>
				</div>
			</div>
			</div>
			</c:if>
			</c:forEach>
		</div>
		
</div>
<!-- 영화 정보 끝 -->
	
	<!-- 영화 리뷰 -->
<div class="trending__product">
	<div class="row">
		<div class="col-lg-8 col-md-8 col-sm-8">
			<div class="section-title">
				<h4>영화 리뷰</h4>
			</div>
		</div>
		<div class="col-lg-4 col-md-4 col-sm-4">
			<div class="btn__all">
				<a href="/review/review_list?page=1" class="primary-btn">더 보기 <i class="bi bi-arrow-right"></i></span></a>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-lg-4 col-md-6 col-sm-6">
			<div class="product__item">
				<div class="product__item__pic set-bg"
					data-setbg="resources/images/img/trending/trend-6.jpg">
					<div class="ep">18 / 18</div>
					<div class="comment">
						<i class="fa fa-comments"></i> 11
					</div>
					<div class="view">
						<i class="fa fa-eye"></i> 9141
					</div>
				</div>
				<div class="product__item__text">
					<ul>
						<li>Active</li>
						<li>Movie</li>
					</ul>
					<h5>
						<a href="#">Code Geass: Hangyaku no Lelouch R2</a>
					</h5>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 영화 리뷰 끝 -->

