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
	// 당첨 버튼
	$("#btnWinning").click(function(){
		console.log("클릭됨");
		var chkArr = new Array();
		
		$("#chkBox:checked").each(function(){
		    chkArr.push($(this).attr("data-pno"));
		   });
		
		
		var url = "/admin/winnerUpdate";
		var sData = {
				"chBox" : chkArr
		}
		console.log("sData:", sData);
		$.post(url, sData, function(rData){
			console.log("rData:", rData);
			if (rData == "true"){
				location.reload();
			};
		});
		
	});
	
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
			<!-- 유수연 각 페이지의 내용이 여기 뜨도록 해주세요 -->
			<br><h2>이벤트 참가자 리스트</h2>
			<br>
			<br>
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
				<option value="p"
					<c:if test="${pagingDto.searchType == 'p'}">
						selected
					</c:if>
				>참여자</option>
				<option value="tp"
					<c:if test="${pagingDto.searchType == 'tp'}">
						selected
					</c:if>
				>제목 + 참여자</option>
			</select>
			<form id="frmSearch" action="/admin//event_participate_list" method="get">
			<input type="text" id="keyword"  class="form-control"
			style="width: 300px;display: inline-block;margin-bottom: 2px;margin-top: 2px;margin-left: 4px;">
				<input type="hidden" name="searchType" value="${pagingDto.searchType}">
				<input type="hidden" name="keyword" value="${pagingDto.keyword}">
			<button type="button" class="site-btn fa fa-search" style="border-radius: 5px;" id="btnSearch">검색</button>
			</form>
			<br>
			</div> 
			
			<br>
			<div>
			<table class="table">
				    		<thead>
				    			<tr>		
				    						
									<th>no</th>    	
									<th>이벤트 제목</th>    	
									<th>이벤트 참여자</th>			
									<th>이벤트 시작일</th>    				
									<th>이벤트 종료일</th>
									<th>당첨여부</th>
									<th><button class="site-btn" style="border-radius: 5px;padding-bottom: 
										7px;padding-top: 7px;padding-right: 15px;padding-left: 15px;" id="btnWinning">이벤트 당첨</button></th>	
				    			</tr>
				    		</thead>
				    		<tbody>
				    		
								<c:forEach var="eventVo" items="${adminList}" varStatus="status">
										
								
									<tr>
										<th>${eventVo.event_no}</th>
										<td><a href="/event/event_read?event_no=${eventVo.event_no}" data-pno="${eventVo.participate_no}">${eventVo.event_title}</a></td>
										<td>${eventVo.userid}</td>
										<td>${eventVo.event_start_date}</td>
										<td>${eventVo.event_end_date}</td>
										
										<c:choose>
										<c:when test = "${eventVo.event_win == 'y'}">
										<td>당첨</td>
										</c:when>
										<c:otherwise>
										<td>미당첨</td>
										</c:otherwise>
										</c:choose>
										
										<th><input type="checkBox" id="chkBox" data-pno="${eventVo.participate_no}"></th>
									</tr>
									
									
								
								</c:forEach>
							
							</tbody>
				    	</table>
			</div>
			
			<!-- 페이지 -->
	
	<div class="row">
		<div class="col-md-12">
			<nav>
				<ul class="pagination justify-content-center">
				<c:if test="${pagingDto.startPage!=1}">
					<li class="page-item">
						<a class="page-link" 
							href="/admin/event_participate_list?page=${pagingDto.startPage-1}">이전</a>
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
						<a class="page-link" href="/admin/event_participate_list?page=${i}">${i}</a>
					</li>
				</c:forEach>
				<c:if test="${pagingDto.endPage!=pagingDto.totalPage}">
					<li class="page-item">
						<a class="page-link" 
							href="/admin/event_participate_list?page=${pagingDto.endPage + 1}">다음</a>
					</li>
				</c:if>
				</ul>
			</nav>
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