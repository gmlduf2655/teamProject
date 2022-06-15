<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

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


    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>전체 이벤트</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

<div class="container-fluid" style="padding: 50px">
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
				<option value="tc"
					<c:if test="${pagingDto.searchType == 'tc'}">
						selected
					</c:if>
				>제목 + 내용</option>
			</select>
			<form id="frmSearch" action="/event/event_list" method="get">
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
							>
								
								<div class="view">
									<i class="fa fa-eye"></i> ${eventVo.event_count}
								</div>
							</div>
							<div class="product__item__text">
								<h5>
									<a href="/event/event_read?event_no=${eventVo.event_no}">${eventVo.event_title}</a>
								</h5>
									<label style="color:white">${eventVo.event_start_date}~${eventVo.event_end_date}</label>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
		<div class="float-right">
			<p>
				<a class="btn btn-primary btn-large" href="/event/write_form">게시글 쓰기</a>
			</p>
		</div>
</div>


<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>