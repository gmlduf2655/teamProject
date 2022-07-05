<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<style>
	body {
		background:#eeeeee;
		background-color: #eeeeee;
	}section.product {
		padding : 0;
	}
	
	.ma {
		border-top: 50px solid #eeeeee;
	}
	
tr.tr_list:hover {
 	background-color: aliceblue;
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
	// 검색
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
	
	// 삭제
	$(".table").on("click", "#btnDelete", function(){
		console.log("삭제버튼 클릭");
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
			<!-- 유수연 각 페이지의 내용이 여기 뜨도록 해주세요 -->
			<br><h2>이벤트 당첨자 목록</h2>
			<br>
			<br>
			
			
			<div class="container-fluid">



	<div class="row">
		<div class="col-md-12">


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
			<form id="frmPaging" action="/event/winner_info" method="get">
			<input type="text" id="keyword"  class="form-control" 
				style="width: 300px;display: inline-block;margin-bottom: 2px;margin-top: 2px;margin-left: 4px;">
				<input type="hidden" name="winner_no" value="">
				<input type="hidden" name="page" value="${pagingDto.page}">
				<input type="hidden" name="searchType" value="${pagingDto.searchType}">
				<input type="hidden" name="keyword" value="${pagingDto.keyword}">
			<button type="button" class="site-btn fa fa-search" style="border-radius: 5px;" id="btnSearch">검색</button>
			</form>
			<br>
			</div> 
<!-- 검색 끝 -->

<!-- 테이블 시작 -->
			<table class="table">
				<thead>
					<tr>
						<th>글 번호</th>
						<th>제목</th>
						<th>작성일</th>
						<th>조회수</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${winnerList}" var="winnerVo">
						<tr class="tr_list">
							<td>${winnerVo.winner_no}</td>
							<td class="td_list" data-wno="${winnerVo.winner_no}"><a
								href="/admin/admin_winner_read?winner_no=${winnerVo.winner_no}"
								style="color: black;">${winnerVo.winner_title}</a></td>
							<td>${winnerVo.winner_sysdate}</td>
							<td>${winnerVo.winner_count}</td>
							<td>
							<form action="/admin/winner_delete" method="get">
								<input type="hidden" name="winner_no" value="${winnerVo.winner_no}">
								<button type="submit" id="btnDelete" class="site-btn"
								style="padding-top: 7px; padding-left: 14px; padding-bottom: 7px; padding-right: 14px; border-radius: 5px;">
								삭제</button>
							</form>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<!-- 테이블 끝 -->
			<br>
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
							href="/admin/event_winner_list?page=${pagingDto.startPage-1}">이전</a>
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
						<a class="page-link" href="/admin/event_winner_list?page=${i}">${i}</a>
					</li>
				</c:forEach>
				<c:if test="${pagingDto.endPage!=pagingDto.totalPage}">
					<li class="page-item">
						<a class="page-link" 
							href="/admin/event_winner_list?page=${pagingDto.endPage + 1}">다음</a>
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