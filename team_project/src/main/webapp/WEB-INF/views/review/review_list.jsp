<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<!-- 별 아이콘 -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
/* 평점 별 시작*/
.checked {
  color: orange;
}
 tr.tr_list {
 	cursor: pointer;
 }
/* 평점 별 끝*/

/* 게시글 테이블 시작*/
 tr.tr_list:hover {
 	background-color: rgba(255, 255, 255, 0.1);
 }
 
 .review_content {
 	display: none;
 }
 
 .table {
 color: white;
 }
 /* 게시글 테이블 끝*/
 
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

/*영화 제목 말줄임표 시작*/
.movieName{
	
  overflow: hidden;
  text-overflow: ellipsis;
}
/*영화 제목 말줄임표 끝*/
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
	
	// 유저 정보 보기
	$(document).on("click", ".move_mypage", function(e){
		e.preventDefault();
		var userid = $(".move_mypage").attr("data-writer");
		userid = userid.trim();
		// 새로운 탭으로 다른 유저 마이페이지로 이동함
		$.ajax({
			type : "post",
			async : "true",
			url : "/user/get_userno_by_userid",
			data : {
				userid : userid
			},
			success : function(rData){
				var openNewWindow = window.open("about:blank");
				openNewWindow.location.href = "/mypage/main?userno=" + rData;
			}
		});
	});

	// 유저에게 글쓰기
	$(document).on("click", ".write_msg", function(e){
		e.preventDefault();
		var userid = $(".move_mypage").attr("data-writer");
		userid = userid.trim();
		var openNewWindow = window.open("about:blank");
		openNewWindow.location.href = "/message/write_form?page=1&receiver=" + userid;
	});

	// 유저 신고
	$(document).on("click", ".report_btn", function(e){
		e.preventDefault();
		var userid = $(".move_mypage").attr("data-writer");
		userid = userid.trim();
		var open = window.open("/report/report_user_form?reported_user=" + userid, "신고 하기", "width=600, height=800");
	});
	
});
</script>
<!-- 상단 타이틀 -->
    <section class="normal-breadcrumb set-bg" style="height: 100px">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>평점/리뷰</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- 상단 타이틀 끝 -->
    
    
    <div class="container-fluid">
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
			<input type="text" id="keyword"  class="form-control" 
				style="width: 300px;display: inline-block;margin-bottom: 2px;margin-top: 2px;margin-left: 4px;">
				<input type="hidden" name="review_no" value="">
				<input type="hidden" name="page" value="${pagingDto.page}">
				<input type="hidden" name="searchType" value="${pagingDto.searchType}">
				<input type="hidden" name="keyword" value="${pagingDto.keyword}">
			<button type="button" class="site-btn fa fa-search" style="border-radius: 5px;" id="btnSearch">검색</button>
			</form>
			
			<!-- 글 쓰기 버튼 -->
			<c:if test="${not empty loginUserVo.userid}"> <!-- 로그인 안했으면 게시글 쓰기 버튼 안보이게 하기 -->
			<div class="float-right">
			<p>
				<a class="site-btn fa fa-pencil" style="border-radius: 5px;" href="/review/review_form">게시글 쓰기</a>
			</p>
				</div>
			</c:if>
			<br>
			<br>
			</div> 



			<table class="table">
				<thead>
					<tr style="background-color: rgba(255, 255, 255, 0.4);">
						<th>번호</th>
						<th>작성자</th>
<!-- 						<th>영화</th> -->
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
						<tr>
						<td style="background-color: rgba(255, 255, 255, 0.1);">${reviewVo.review_no}</td>
						<td colspan="6" align="center" style="background-color: rgba(255, 255, 255, 0.1);">관리자가 삭제한 게시글 입니다.</td>
						</tr>
					</c:when>
					
					<c:otherwise>
					
					<tr class="tr_list">
							<td class="td_list" data-rno="${reviewVo.review_no}">${reviewVo.review_no}</td>
							<th>
							<div class="dropdown" style="color:white"> ${reviewVo.review_writer}
							<button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" 
							data-toggle="dropdown" style="color:white;padding-left:3px;">
							</button>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="z-index:10">
								<a class="dropdown-item move_mypage" data-writer="${reviewVo.review_writer}" href="#" >정보보기</a> 
								<a class="dropdown-item write_msg" href="/message/write_form?page=${param.page}&receiver=${messageVo.receiver}">쪽지쓰기</a>
								<a class="dropdown-item report_btn" href="#">신고하기</a> 
							</div>
						</div>
							</th>
							
<%-- 							<td><a href="/movie/movieInfo?movie_code=${reviewVo.movie_code}" class="movieName" --%>
<%-- 								style="color: white;">${reviewVo.movie_name}</a></td> --%>
							<td><a
								href="/review/review_read?review_no=${reviewVo.review_no}"
								style="color: white;" >${reviewVo.review_title}</a></td>
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