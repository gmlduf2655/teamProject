<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<style>
	body {
		background-color: #eeeeee;
	}section.product {
		padding : 0;
	}
	
	.ma {
		border-top: 50px solid #eeeeee;
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
	var frmSearch = $("#frmSearch");
	
	$("#btnSearch").on("click", function(){
		var searchType = $("#searchType").val();
		var keyword = $("#keyword").val();
		console.log("searchType:", searchType);
		console.log("keyword:", keyword);
		
		if(!searchType){
	    	alert("검색 종류를 선택하세요.");
	        return false;
	    }
	        
	    if(!keyword){
	        alert("검색어를 입력하세요.");
	        return false;
	    }    
	   
	    frmSearch.find("input[name=searchType]").val(searchType);
	    frmSearch.find("input[name=keyword]").val(keyword);
	    frmSearch.find("input[name=page]").val(1);
	    frmSearch.submit();
	});
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
			<!-- 이벤트 목록 내용 시작 -->
			<br><h2>이벤트 목록</h2>
			<br>
			<br>
	
			<!-- 검색 시작 -->
			<div>
			<select id="searchType">
				<option value="">선택</option>
				<option value="">---------------</option>
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
				<option value="tc"
					<c:if test="${pagingDto.searchType == 'tc'}">
						selected
					</c:if>
				>제목 + 내용</option>
			</select>
			<form id="frmSearch" action="/admin/event_admin_list" method="get">
			<input type="text" id="keyword"  class="form-control" 
				style="width: 300px;display: inline-block;margin-bottom: 2px;margin-top: 2px;margin-left: 4px;">
				<input type="hidden" name="searchType" value="${pagingDto.searchType}">
				<input type="hidden" name="keyword" value="${pagingDto.keyword}">
				<input type="hidden" name="page" value="${pagingDto.page}">
			<button type="button" class="site-btn fa fa-search" style="border-radius: 5px;" id="btnSearch">검색</button>
			</form>
			<br>
			<br>
			</div> 
		<!-- 검색 끝 -->
			<div class="row">

				<c:forEach items="${eventList}" var="eventVo">
					<div class="col-md-3">
						<div class="product__item">
							<div class="product__item__pic set-bg"
								<c:choose>
								<c:when test="${empty eventVo.event_image}"> 
									data-setbg="/resources/images/no_image.jpg" 
								</c:when>
								<c:otherwise>
									data-setbg="/event/displayImage?filename=${eventVo.event_image}"
								</c:otherwise>
								</c:choose>
								style="cursor: pointer;" onclick="location.href='/admin/event_admin_read?event_no=${eventVo.event_no}';"
							>
								
								<div class="view">
									<i class="fa fa-eye"></i> ${eventVo.event_count}
								</div>
							</div>
							<div class="product__item__text">
								<h5>
									<a href="/admin/event_admin_read?event_no=${eventVo.event_no}" style="color: black;">${eventVo.event_title}</a>
								</h5>
									<label>${eventVo.event_start_date}~${eventVo.event_end_date}</label>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
		
		<!-- 페이지네이션 시작 -->
	
	<div class="container-fluid">
		<div class="col-md-12">
			<nav>
				<ul class="pagination justify-content-center">
				<c:if test="${pagingDto.startPage!=1}">
					<li class="page-item">
						<a class="page-link" 
							href="/admin/event_admin_list?page=${pagingDto.startPage-1}">이전</a>
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
						<a id="nextPage" class="page-link" href="/admin/event_admin_list?page=${i}">${i}</a>
					</li>
				</c:forEach>
				<c:if test="${pagingDto.endPage!=pagingDto.totalPage}">
					<li class="page-item">
						<a class="page-link" 
							href="/admin/event_admin_list?page=${pagingDto.endPage + 1}">다음</a>
					</li>
				</c:if>
				</ul>
			</nav>
		</div>
	</div> <br><br>
	<!-- 페이지네이션 끝 -->
			
			<!-- 이벤트 목록 내용 끝 -->
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-1"></div>
	</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>