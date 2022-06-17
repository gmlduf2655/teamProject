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
 tr.tr_list {
 	cursor: pointer;
 }
 
 tr.tr_list:hover {
 	background-color: #FFCCCB;
 }
 
 .review_content {
 	display: none;
 }
</style>  

<script>

$(document).ready(function(){
	var frmPaging = $("#frmPaging");
	
	$(".td_list").click(function() {
		var review_no = $(this).attr("data-rno");
		frmPaging.find("input[name=review_no]").val(review_no);
		frmPaging.attr("action", "/review/review_read");
		frmPaging.attr("method", "get");
		frmPaging.submit();
	});
	
	$("#btnSearch").on("click", function(){
		var searchType = $("#searchType").val();
		var keyword = $("#keyword").val();
		
		
		if(!searchType){
	    	alert("검색 종류를 선택하세요.");
	        return false;
	    }
	        
	    if(!keyword){
	        alert("검색어를 입력하세요.");
	        return false;
	    }    
	   
		frmPaging.find("input[name=searchType]").val(searchType);
		frmPaging.find("input[name=keyword]").val(keyword);
		frmPaging.find("input[name=page]").val(1);
		frmPaging.submit();
	});
	
});
</script>


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


<!-- 검색 -->
			<div>
			<select id="searchType">
				<option value="">선택</option>
				<option value="">--------------------</option>
				<option value="t"
					<c:if test="${pagingDto.searchType == 't'}">
						selected
					</c:if>
				>제목</option>
				<option value="c"
					<c:if test="${pagingDto.searchType == 'c'}">
						selected
					</c:if>
				>내용</option>
				<option value="w"
					<c:if test="${pagingDto.searchType == 'w'}">
						selected
					</c:if>
				>작성자</option>
				<option value="tc"
					<c:if test="${pagingDto.searchType == 'tc'}">
						selected
					</c:if>
				>제목 + 내용</option>
				<option value="tcw"
					<c:if test="${pagingDto.searchType == 'tcw'}">
						selected
					</c:if>
				>제목 + 내용 + 작성자</option>
			</select>
			<form id="frmPaging" action="/review/review_list" method="get">
			<input type="text" id="keyword">
				<input type="hidden" name="review_no" value="">
				<input type="hidden" name="page" value="${pagingDto.page}">
				<input type="hidden" name="searchType" value="${pagingDto.searchType}">
				<input type="hidden" name="keyword" value="${pagingDto.keyword}">
			<button type="button" class="btn btn-sm btn-success" id="btnSearch">검색</button>
			</form>
			</div> 



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
					
					
					<c:choose>
					
					<c:when test="${reviewVo.admin_delete == 'y'}">
						<tr><td colspan="7" align="center">관리자가 삭제한 게시글 입니다.</td></tr>
					</c:when>
					
					<c:otherwise>
					
					<tr class="tr_list">
							<td class="td_list" data-rno="${reviewVo.review_no}">${reviewVo.review_no}</td>
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
					
					</c:otherwise>
						
					</c:choose>
					
					
					
						
					</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-md-2"></div>
	</div>
	
	
	<!-- 글 쓰기 버튼 -->
	<div class="float-right">
	<p>
		<a class="btn btn-primary btn-large" href="/review/review_form">게시글 쓰기</a>
	</p>
</div>
	
	<!-- 페이지 -->
	
	<div class="row">
		<div class="col-md-12">
			<nav>
				<ul class="pagination justify-content-center">
				<c:if test="${pagingDto.startPage!=1}">
					<li class="page-item">
						<a class="page-link" 
							href="/review/review_list?page=${pagingDto.startPage-1}">이전</a>
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
						<a class="page-link" href="/review/review_list?page=${i}">${i}</a>
					</li>
				</c:forEach>
				<c:if test="${pagingDto.endPage!=pagingDto.totalPage}">
					<li class="page-item">
						<a class="page-link" 
							href="/review/review_list?page=${pagingDto.endPage + 1}">다음</a>
					</li>
				</c:if>
				</ul>
			</nav>
		</div>
	</div>
	
	
	
</div>


    
    

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>