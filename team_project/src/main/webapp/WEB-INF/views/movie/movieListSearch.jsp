<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@ include file="/WEB-INF/views/include/daycount.jsp"%>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="row" id="movieList">

				<c:forEach items="${list}" var="movieVo">
					<div class="col-md-3">
						<div class="product__item">
						
							<div class="product__item__pic set-bg"
								<c:set var="movie_image_name" value="${movieVo.movie_image_name}"/>
								<c:choose>
								<c:when test="${empty fn:substringAfter(movie_image_name,'_')}">
									data-setbg="/resources/images/no_image.jpg" 
								</c:when>
								<c:otherwise>
									data-setbg="/movie/displayImage?filename=${movieVo.movie_image_name}"
								</c:otherwise>
								</c:choose>
								style="cursor: pointer; width: 80%;" onclick="location.href='/movie/movieInfo?movie_code=${movieVo.movie_code}';">
								
							</div>
							
							<div class="product__item__text">
								<ul>
									<li>
										<a style="color: white;" href="/movie/movieListHashTag?sType=movie_genre&keyword=${movieVo.movie_genre}">#${movieVo.movie_genre}</a>
									</li>
									<li>
										<a style="color: white;" href="/movie/movieListHashTag?sType=movie_actors&keyword=${movieVo.movie_actors}">#${movieVo.movie_actors}</a>
									</li>
								</ul>
								<h5>
									<a href="/movie/movieInfo?movie_code=${movieVo.movie_code}">${movieVo.movie_name}</a>
								</h5>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
		
</div>
<!-- 페이지 로딩 아이콘 -->
<div id="page-loading" align="center" style="display: none;">
	<i class="fa fa-spinner fa-pulse fa-3x fa-fw margin-bottom" style="color: white;"></i>	
</div>
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>