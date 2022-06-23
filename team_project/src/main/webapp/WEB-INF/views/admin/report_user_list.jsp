<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<style>
	input::-webkit-inner-spin-button{
		-webkit-appearance:none;
	}
	body {
		background-color: #eeeeee;
	}section.product {
		padding : 0;
	}
	
	.ma {
		border-top: 50px solid #eeeeee;
	}
</style>
<!-- 샘플 레이아웃 데이터 -->
<script>
	$(document).ready(function(){
		
		// 검색 버튼 눌렀을 떄
		$("#search_btn").click(function(){
			var keyword = $("#keyword").val();
			var searchType = $("#searchType").val();
			location.href = "/admin/report_user_list?page=${param.page}&searchType=" + searchType + "&keyword=" + keyword;
		});
	});
</script>
<div class="ma">

	<div class="row" style="background-color: #eeeeee">
		<div class="col-md-1"></div>
		<!-- 유수연 메뉴 목록  -->
		<div class="col-md-2">
			<div class="menu">
		    	<jsp:include page="/WEB-INF/views/admin/manage_menu.jsp"/>	
	    	</div> 
		</div>
		<!-- 유수연 상세내용  -->
		<div class="col-md-7">
			<!-- 유저 신고 목록을 보여주는 부분 -->
		    <section class="login spad" style="padding-top:20px;">
		        <div class="container">
		        	<!-- nav 부분 -->
					<nav class="row mb-4" >
						<div class="col-md-4">
							<h3>신고 관리</h3>
						</div>
						<div class="col-md-2"></div>
						<div class="col-md-1" style="display:flex;justify-content: flex-end;">
							<select name="searchType" id="searchType" style="color:black;">
								<option value="r" 
									<c:if test="${param.searchType == '' or param.searchType == 'r'}">selected</c:if>
								>신고자</option>
								<option value="u" 
									<c:if test="${param.searchType == 'u'}">selected</c:if>
								>신고대상</option>
								<option value="t" 
									<c:if test="${param.searchType == 't'}">selected</c:if>
								>신고사유</option>
								<option value="d" 
									<c:if test="${param.searchType == 'd'}">selected</c:if>
								>신고날짜</option>
							</select>
						</div>
						<div class="col-md-3">
							<input type="text" class="form-control" name="keyword" id="keyword" value="${param.keyword}">
						</div>
						<div class="col-md-2" style="padding-left:0px;">
							<button type="button" class="btn btn-primary" id="search_btn">검색</button>
						</div>
					</nav>
					<!-- nav 부분 끝-->
		            <div class="row">
		                <div class="col-lg-12 ">
		                	<div class="mb-3" style="overflow-x:scroll">
		                		<!-- 유저 신고 테이블 부분 -->
						    	<table class="table" style="width:1600px;">
						    		<thead>
						    			<tr>
											<th>#</th>    				
											<th>신고자</th>    				
											<th>신고대상</th>    				
											<th>신고사유</th>    				
											<th>신고한 날짜</th>    				
											<th>신고 접수 날짜</th>    				
											<th>신고 처리 유무</th>    				
						    			</tr>
						    		</thead>
						    		<tbody>
										<c:forEach var="reportUserVo" items="${reportUserList}">
											<tr>
												<td>${reportUserVo.reportno}</td>
												<td>${reportUserVo.reporter}</td>
												<td>${reportUserVo.reported_user}</td>
												<td>${reportUserVo.report_type}</td>
												<td>
													<fmt:formatDate value="${reportUserVo.report_date}" pattern="yyyy.MM.dd HH:mm:ss" />
												</td>
												<td>
													<fmt:formatDate value="${reportUserVo.report_accept_date}" pattern="yyyy.MM.dd HH:mm:ss" />
												</td>
												<td>
													<c:choose>
														<c:when test="${reportUserVo.report_resolved == 'T'}">
															처리완료
														</c:when>
														<c:otherwise>
															처리 X
														</c:otherwise>
													</c:choose>
												</td>
											</tr>
										</c:forEach>
									</tbody>
						    	</table>
						    	<!-- 유저 신고 테이블 부분 끝 -->
					    	</div>
							<!-- 글 목록 페이징 부분-->
							<div class="row mb-3">
								<div class="col-md-12">
									<nav>
										<ul class="pagination justify-content-center" id="pagination">
											<c:if test="${pagingDto.startPage > 1}">
												<li class="page-item"><a class="page-link move_page"
													href="/admin/report_user_list?page=1&searchType=${param.searchType}&keyword=${param.keyword}">처음으로</a></li>
												<li class="page-item"><a class="page-link move_page"
													href="/admin/report_user_list?page=${pagigDto.startPage-1}&searchType=${param.searchType}&keyword=${param.keyword}">이전</a></li>
											</c:if>
											<c:forEach var="i" begin="${pagingDto.startPage}"
												end="${pagingDto.endPage}">
												<li
													<c:choose>
														<c:when test="${i == pagingDto.page}">
															class="page-item active"
														</c:when>
														<c:otherwise>
															class="page-item"		
														</c:otherwise>
													</c:choose>>
													<a class="page-link move_page"
													href="/admin/report_user_list?&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">${i}</a>
												</li>
											</c:forEach>
											<c:if test="${pagingDto.endPage != pagingDto.totalPage}">
												<li class="page-item"><a class="page-link move_page"
													href="/admin/report_user_list?page=${pagigDto.endPage+1}&searchType=${param.searchType}&keyword=${param.keyword}">다음</a></li>
												<li class="page-item"><a class="page-link move_page"
													href="/admin/report_user_list?page=${pagigDto.totalPage}&searchType=${param.searchType}&keyword=${param.keyword}">마지막으로</a></li>
											</c:if>
										</ul>
									</nav>
								</div>
							</div>
							<!-- 글 목록 페이징 부분 끝 -->
						</div>
		    		</div>
		    	</div>
		    </section>
		    <!-- 유저 신고 목록을 보여주는 부분 끝 -->
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-1"></div>
	</div>
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>