<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>



    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>당첨자 발표</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

<%@ include file="/WEB-INF/views/event/WinnerPaging.jsp" %>

<div class="container-fluid" style="background-color: white">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">

			<table class="table">
				<thead>
					<tr>
						<th>글 번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${winnerList}" var="winnerVo">
						<tr>
							<td>${winnerVo.winner_no}</td>
							<td><a
								href="/event/winner_read?winner_no=${winnerVo.winner_no}">${winnerVo.winner_title}</a></td>
							<td>${winnerVo.winner_sysdate}</td>
							<td>${winnerVo.winner_count}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-md-2"></div>
	</div>
	
	<!-- 페이지 -->
	
	<div class="row">
		<div class="col-md-12">
			<nav>
				<ul class="pagination justify-content-center">
				<c:if test="${pagingDto.startPage!=1}">
					<li class="page-item">
						<a class="page-link" 
							href="${pagingDto.startPage-1}">이전</a>
					</li>
				</c:if>
				<c:forEach begin="${pagingDto.startPage}" end="${pagingDto.endPage}" var="i">
					<li 
					<c:choose>
						<c:when test="${i==param.page}">
							class="page-item active"
						</c:when>
						<c:otherwise>
							class="page-item"
						</c:otherwise>
					</c:choose>
					>
						<a class="page-link" href="${i}">${i}</a>
					</li>
				</c:forEach>
				<c:if test="${pagingDto.endPage!=pagingDto.totalPage}">
					<li class="page-item">
						<a class="page-link" 
							href="${pagingDto.endPage + 1}">다음</a>
					</li>
				</c:if>
				</ul>
			</nav>
		</div>
	</div>	
	
	
	
	
</div>
<div class="float-right">
	<p>
		<a class="btn btn-primary btn-large" href="/event/winner_write">게시글 쓰기</a>
	</p>
</div>


<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>