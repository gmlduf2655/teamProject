<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<!-- 별 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
	body {
		background-color: #eeeeee;
	}section.product {
		padding : 0;
	}
	
	.ma {
		border-top: 50px solid #eeeeee;
	}
	
	.checked {
  color: orange;
}
 tr.tr_list {
 	cursor: pointer;
 }
 
 tr.tr_list:hover {
 	background-color: aliceblue;
 }
 .review_content {
 	display: none;
 }
/* 페이지네이션 색깔 바꾸기 시작*/
.page-item.active .page-link {
	background-color: #e53637 !important;
	color: white;
  	border: 1px solid #e53637 !important;
} 

.page-item .page-link {
	background-color: white !important;
	color: black;
  	border: 1px solid #white !important;
} 
/* 페이지네이션 색깔 바꾸기 끝*/
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
	
	$(".tr_list").on("click", ".btnDelete",function(){
		console.log("삭제버튼 클릭됨");
	});
	
	$("input[name=review_content]")
	
});
</script>


<!-- 샘플 레이아웃 데이터 -->
<div class="ma">

	<div class="row" style="background-color: #eeeeee">
		<div class="col-md-1"></div>
		<!-- 유수연 메뉴 목록  -->
		<div class="col-md-2">
		<div class="menu">
	    			<%-- <c:if test="">
								로그인 계정이 관리자 계정일때 관리자 메뉴 보이도록
	    			</c:if> --%>
	    				<jsp:include page="/WEB-INF/views/admin/manage_menu.jsp"/>	
    			</div> 
		</div>
		<!-- 유수연 상세내용  -->
		<div class="col-md-7">
			<!-- 유수연 각 페이지의 내용이 여기 뜨도록 해주세요 -->
			<br><h2>평점/리뷰 목록</h2>
			<br>
			<br>
			
			<div class="container-fluid">
	<div class="row">
		
<div class="col-md-12">

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
			<form id="frmPaging" action="/admin/event_admin_reviewList" method="get">
			<input type="text" id="keyword"  class="form-control"
			style="width: 300px;display: inline-block;margin-bottom: 2px;margin-top: 2px;margin-left: 4px;">
				<input type="hidden" name="review_no" value="">
				<input type="hidden" name="page" value="${pagingDto.page}">
				<input type="hidden" name="searchType" value="${pagingDto.searchType}">
				<input type="hidden" name="keyword" value="${pagingDto.keyword}">
			<button type="button" class="site-btn fa fa-search" style="border-radius: 5px;" id="btnSearch">검색</button>
			</form>
			<br>
			</div> 



			<table class="table" >
				<thead>
					<tr>
						<th>번호</th>
						<th>작성자</th>
						<th>제목</th>
						<th>평점</th>
						<th>작성일</th>
						<th>조회수</th>
						<th>게시글 삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${reviewList}" var="reviewVo">
					
					
					<c:choose>
					
					<c:when test="${reviewVo.admin_delete == 'y'}">
						<tr>
						<td>${reviewVo.review_no}</td>
						<td colspan="6" align="center">관리자가 삭제한 게시글 입니다.</td>
						</tr>
					</c:when>
					
					<c:otherwise>
					
					<tr class="tr_list">
							<td class="td_list" data-rno="${reviewVo.review_no}">${reviewVo.review_no}</td>
							<th>${reviewVo.review_writer}</th>
							<td><a
								href="/review/review_read?review_no=${reviewVo.review_no}"
								style="color: black;">${reviewVo.review_title}</a></td>
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
							
							
							
							<td>
							<form action="/admin/event_admin_reviewDelete" method="post">
								<input type="hidden" name="review_no" value="${reviewVo.review_no}">
								<input type="hidden" name="review_title" value="${reviewVo.review_title}">
								<input type="hidden" name="review_star" value="${reviewVo.review_star}">
								<div class="review_content"><input type="hidden" name="review_content" value="${reviewVo.review_content}"></div>
								<input type="hidden" name="admin_delete" value="y">
								<button type="submit" id="btnDelete" class="btn btn-sm btn-danger btnDelete">삭제</button>
							</form>
							</td>
								
						</tr>
					
					</c:otherwise>
						
					</c:choose>
					
					
					
						
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	
	
	<!-- 페이지 -->
	
	<div class="row">
		<div class="col-md-12">
			<nav>
				<ul class="pagination justify-content-center">
				<c:if test="${pagingDto.startPage!=1}">
					<li class="page-item">
						<a class="page-link" 
							href="/admin/event_admin_reviewList?page=${pagingDto.startPage-1}">이전</a>
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
						<a class="page-link" href="/admin/event_admin_reviewList?page=${i}">${i}</a>
					</li>
				</c:forEach>
				<c:if test="${pagingDto.endPage!=pagingDto.totalPage}">
					<li class="page-item">
						<a class="page-link" 
							href="/admin/event_admin_reviewList?page=${pagingDto.endPage + 1}">다음</a>
					</li>
				</c:if>
				</ul>
			</nav>
		</div>
		
	</div>
	
	
	
</div>


			
			
			
			
			
			<!-- 유수연 각 페이지의 내용이 여기 뜨도록 해주세요 -->
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-1"></div>
	</div>
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>