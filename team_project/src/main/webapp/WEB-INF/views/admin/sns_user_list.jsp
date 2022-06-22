<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
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
<!-- 샘플 레이아웃 데이터 -->
<script>
	$(document).ready(function(){
		// 검색 버튼 눌렀을 떄
		$("#search_btn").click(function(){
			var keyword = $("#keyword").val();
			var searchType = $("#searchType").val();
			location.href = "/admin/sns_user_list?page=${param.page}&searchType=" + searchType + "&keyword=" + keyword;
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
			<br><h2>회원 목록</h2>
		    <!-- 유저 목록을 보여주는 부분 -->
		    <section class="login spad">
		       	<!-- nav 부분 -->
				<nav class="row mb-4" >
					<div class="col-md-4">
						<h3>간편로그인 회원</h3>
					</div>
					<div class="col-md-2"></div>
					<div class="col-md-1" style="display:flex;justify-content: flex-end;">
						<select name="searchType" id="searchType" style="color:black;">
							<option value="i" 
								<c:if test="${param.searchType == '' or param.searchType == 'i'}">selected</c:if>
							>아이디</option>
							<option value="u" 
								<c:if test="${param.searchType == 'u'}">selected</c:if>
							>이름</option>
							<option value="p" 
								<c:if test="${param.searchType == 'p'}">selected</c:if>
							>연동 페이지</option>
							<option value="d" 
								<c:if test="${param.searchType == 'd'}">selected</c:if>
							>연동일</option>
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
		        <div class="container">
		            <div class="row">
		                <div class="col-lg-12 ">
					    	<div>
					    		<!-- 간편로그인(sns) 회원 테이블 부분 -->
						    	<table class="table" >
						    		<thead>
						    			<tr>
											<th>#</th>    				
											<th>아이디</th>    								
											<th>이름</th>    				
											<th>닉네임</th>    				
											<th>휴대폰번호</th>    				
											<th>연동페이지</th>    				
											<th>포인트</th>    				
											<th>연동일</th>    				
						    			</tr>
						    		</thead>
						    		<tbody>
										<c:forEach var="snsUserVo" items="${snsUserList}">
											<tr>
												<td>${snsUserVo.userno}</td>
												<td>${snsUserVo.sns_id}</td>
												<td>${snsUserVo.username}</td>
												<td>${snsUserVo.nickname}</td>
												<td>${snsUserVo.cellphone}</td>
												<td>${snsUserVo.sns_type}</td>
												<td>${snsUserVo.point}</td>
												<td>${snsUserVo.sns_connect_date}</td>
											</tr>
										</c:forEach>
									</tbody>
						    	</table>
						    	<!-- 간편로그인(sns) 회원 테이블 부분 끝-->
						    </div>
							<!-- 글 목록 페이징 부분-->
							<div class="row mb-3">
								<div class="col-md-12">
									<nav>
										<ul class="pagination justify-content-center" id="pagination">
											<c:if test="${pagingDto.startPage > 1}">
												<li class="page-item"><a class="page-link move_page"
													href="/admin/sns_user_list?page=1&searchType=${param.searchType}&keyword=${param.keyword}">처음으로</a></li>
												<li class="page-item"><a class="page-link move_page"
													href="/admin/sns_user_list?page=${pagigDto.startPage-1}&searchType=${param.searchType}&keyword=${param.keyword}">이전</a></li>
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
													href="/admin/sns_user_list?&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">${i}</a>
												</li>
											</c:forEach>
											<c:if test="${pagingDto.endPage != pagingDto.totalPage}">
												<li class="page-item"><a class="page-link move_page"
													href="/admin/sns_user_list?page=${pagigDto.endPage+1}&searchType=${param.searchType}&keyword=${param.keyword}">다음</a></li>
												<li class="page-item"><a class="page-link move_page"
													href="/admin/sns_user_list?page=${pagigDto.totalPage}&searchType=${param.searchType}&keyword=${param.keyword}">마지막으로</a></li>
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
		    <!-- 유저 목록을 보여주는 부분 끝 -->
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-1"></div>
	</div>
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>