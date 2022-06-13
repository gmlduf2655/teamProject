<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<style>
 tr.tr_list {
 	cursor: pointer;
 }
 
 tr.tr_list:hover {
 	background-color: #FFCCCB;
 }
</style>

<script>


$(document).ready(function(){
	var frmPaging = $("#frmPaging");
	
	$(".td_list").click(function() {
		var winner_no = $(this).attr("data-wno");
		frmPaging.find("input[name=winner_no]").val(winner_no);
		frmPaging.attr("action", "/event/winner_read");
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
                        <h2>당첨자 발표</h2>
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
			<input type="text" id="keyword">
				<input type="hidden" name="winner_no" value="">
				<input type="hidden" name="page" value="${pagingDto.page}">
				<input type="hidden" name="searchType" value="${pagingDto.searchType}">
				<input type="hidden" name="keyword" value="${pagingDto.keyword}">
			<button type="button" class="btn btn-sm btn-success" id="btnSearch">검색</button>
			</form>
			</div> 


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
						<tr class="tr_list">
							<td>${winnerVo.winner_no}</td>
							<td class="td_list" data-wno="${winnerVo.winner_no}"><a
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
							href="/event/winner_info?page=${pagingDto.startPage-1}">이전</a>
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
						<a class="page-link" href="/event/winner_info?page=${i}">${i}</a>
					</li>
				</c:forEach>
				<c:if test="${pagingDto.endPage!=pagingDto.totalPage}">
					<li class="page-item">
						<a class="page-link" 
							href="/event/winner_info?page=${pagingDto.endPage + 1}">다음</a>
					</li>
				</c:if>
				</ul>
			</nav>
		</div>
	</div>	
	
	
	
	
</div>
<div class="float-right">
	<p>
		<a class="btn btn-primary btn-large" href="/event/winner_writeForm">게시글 쓰기</a>
	</p>
</div>


<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>