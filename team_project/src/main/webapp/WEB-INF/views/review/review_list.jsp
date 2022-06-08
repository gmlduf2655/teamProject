<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

 <!-- 별 아이콘 -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.checked {
  color: orange;
}
</style>  

<!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>영화 평점/리뷰</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->
    
    
    <div class="container-fluid" style="background-color: white">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">

			<table class="table">
				<thead>
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>제목</th>
						<th>평점</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${reviewList}" var="reviewVo">
						<tr>
							<td>${reviewVo.review_no}</td>
							<th>${reviewVo.review_writer}</th>
							<td><a
								href="/review/review_read?review_no=${reviewVo.review_no}">${reviewVo.review_title}</a></td>
							
							<th>
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
							</th>
							
							<td>${reviewVo.review_reg_date}</td>
							<td>${reviewVo.review_viewcnt}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>
<div class="float-right">
	<p>
		<a class="btn btn-primary btn-large" href="/review/review_form">게시글 쓰기</a>
	</p>
</div>
    
    

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>