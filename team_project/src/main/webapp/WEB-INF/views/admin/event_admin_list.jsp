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
			<br><h2>이벤트 목록</h2>
			
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
				<option value="tc"
					<c:if test="${pagingDto.searchType == 'tc'}">
						selected
					</c:if>
				>제목 + 내용</option>
			</select>
			<form id="frmSearch" action="/admin/event_admin_list" method="get">
			<input type="text" id="keyword">
				<input type="hidden" name="searchType" value="${pagingDto.searchType}">
				<input type="hidden" name="keyword" value="${pagingDto.keyword}">
			<button type="button" class="btn btn-sm btn-success" id="btnSearch">검색</button>
			</form>
			</div> 
		
		
		
		
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
								style="cursor: pointer;" onclick="location.href='/event/event_read?event_no=${eventVo.event_no}';"
							>
								
								<div class="view">
									<i class="fa fa-eye"></i> ${eventVo.event_count}
								</div>
							</div>
							<div class="product__item__text">
								<h5>
									<a href="/event/event_read?event_no=${eventVo.event_no}" style="color: black;">${eventVo.event_title}</a>
								</h5>
									<label>${eventVo.event_start_date}~${eventVo.event_end_date}</label>
							</div>
						</div>
					</div>
				</c:forEach>

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