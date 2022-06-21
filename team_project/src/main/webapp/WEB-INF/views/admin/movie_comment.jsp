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
	.trlist:hover {
	background-color: aliceblue;
	}
</style>
<script>
$(function(){
	//댓글 상세보기 모달
	$(".tdcomment").click(function(){
		console.log("tdcomment");
		$("#modal-872076").trigger("click");
		var comment = $(this).next().text().trim();
		$("#modalContent").val(comment);
	});
	
var frmPaging = $("#frmPaging");
	
	
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
<!-- 샘플 레이아웃 데이터 -->
${pagingDto}
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
			<a class="btn btn-outline-primary" id="commentlist" href="/admin/movie_commentlistHole?page=1"
				style="margin-bottom: 100px;">전체댓글리스트</a>
			<!-- 검색 -->
			<div class="row">
			<select id="searchType">
				<option value="">선택</option>
				<option value="">--------------------</option>
				<option value="t"
					<c:if test="${pagingDto.searchType == 't'}">
						selected
					</c:if>
				>영화</option>
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
				>영화 + 내용</option>
				<option value="tcw"
					<c:if test="${pagingDto.searchType == 'tcw'}">
						selected
					</c:if>
				>영화 + 내용 + 작성자</option>
			</select>
			<form id="frmPaging" action="/admin/movie_commentlistHole" method="get">
			<input type="text" id="keyword">
				<input type="hidden" name="cno" value="">
				<input type="hidden" name="page" value="${pagingDto.page}">
				<input type="hidden" name="searchType" value="${pagingDto.searchType}">
				<input type="hidden" name="keyword" value="${pagingDto.keyword}">
			<button type="button" class="btn btn-sm btn-success" id="btnSearch">검색</button>
			</form>
			</div>
			<!-- 검색 -->
				
				
			<div class="row">
				<div class="col-md-12">
					<table class="table">
						<thead>
							<tr>
								<th>#</th>
								<th>영화제목</th>
								<th>코멘트</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>블럭</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${commentlistHole}" var="list" varStatus="status">
								<tr class="trlist">
									<td>${status.count}</td>
									<td>${list.movie_name}</td>
									<td style="cursor: pointer;" class="tdcomment">
										<c:set var="comment" value="${list.movie_comment}"/>
										${fn:substring(comment,0,15)}
									</td>
									<td style="display: none;">${list.movie_comment}</td>
									<td>${list.userid}</td>
									<td>${list.regdate}</td>
									<td><button class="btn btn-sm btn-warning commentAdminUpdate">블럭</button> </td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<!-- 유수연 각 페이지의 내용이 여기 뜨도록 해주세요 -->
			<!-- 페이징 -->
			<div class="row">
		<div class="col-md-12">
			<nav>
				<ul class="pagination justify-content-center">
				<c:if test="${pagingDto.startPage!=1}">
					<li class="page-item">
						<a class="page-link" 
							href="/admin/movie_commentlistHole?page=${pagingDto.startPage-1}">이전</a>
					</li>
				</c:if>
				<c:forEach begin="${pagingDto.startPage}" end="${pagingDto.endPage}" var="i">
					<li 
					<c:choose>
						<c:when test="${i==pagingDto.page}">
							class="page-item active"
						</c:when>
						<c:otherwise>
							class="page-item"
						</c:otherwise>
					</c:choose>
					>
						<a class="page-link" href="/admin/movie_commentlistHole?page=${i}">${i}</a>
					</li>
				</c:forEach>
				<c:if test="${pagingDto.endPage!=pagingDto.totalPage}">
					<li class="page-item">
						<a class="page-link" 
							href="/admin/movie_commentlistHole?page=${pagingDto.endPage + 1}">다음</a>
					</li>
				</c:if>
				</ul>
			</nav>
		</div>
	</div>
			<!-- 페이징 -->
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-1"></div>
	</div>
	<!-- 모달 -->
	<div class="row">
		<div class="col-md-12">
			<a id="modal-872076" href="#modal-container-872076" role="button"
				class="btn" data-toggle="modal" style="display: none;">Launch demo modal</a>

			<div class="modal fade" id="modal-container-872076" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="myModalLabel">댓글 상세보기</h5>
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body">
							<textarea id="modalContent" disabled class="form-control"></textarea> 
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal" id="btnModalClose">닫기</button>
						</div>
					</div>

				</div>

			</div>

		</div>
	</div>
	<!-- 모달 -->
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>