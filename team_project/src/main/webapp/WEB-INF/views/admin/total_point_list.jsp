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
		$("#search_btn").click(function(){
			var keyword = $("#keyword").val();
			var searchType = $("#searchType").val();
			location.href = "/admin/total_point_list?userno=${param.userno}&page=${param.page}&searchType=" + searchType + "&keyword=" + keyword;
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
		    	<jsp:include page="/WEB-INF/views/admin/manage_menu.jsp"/>	
	    	</div> 
		</div>
		<!-- 유수연 상세내용  -->
		<div class="col-md-7">
			<br><h2>전체회원 포인트 내역</h2>
			<!-- 포인트 내역을 보여주는 부분 -->
		    <section class="login spad">
		    	<div class="row">
		        	<div class="col-md-12">
		        		<!-- nav 부분 -->
						<nav class="row mb-4" >
							<div class="col-md-4">
								<h3>포인트 내역</h3>
							</div>
							<div class="col-md-2"></div>
							<div class="col-md-1" style="text-align:right;">
								<select name="searchType" id="searchType" style="color:black;">
									<option value="p" 
										<c:if test="${param.searchType == '' or param.searchType == 'p'}">selected</c:if>
									>포인트</option>
									<option value="n" <c:if test="${param.searchType == 'n'}">selected</c:if>>이름</option>
									<option value="u" <c:if test="${param.searchType == 'u'}">selected</c:if>>유저 번호</option>
									<option value="d" <c:if test="${param.searchType == 'd'}">selected</c:if>>날짜</option>
								</select>
							</div>
							<div class="col-md-3">
								<input type="text" class="form-control" name="keyword" id="keyword" value="${param.keyword}">
							</div>
							<div class="col-md-2" style="padding-left:0px;">
								<button type="button" class="site-btn" id="search_btn">검색</button>
							</div>
						</nav>
						<!-- nav 부분 끝-->
			    		<div class="row">
			               	<div class="col-lg-12 ">
						    	<table class="table" >
						    		<thead>
						    			<tr>
											<th>#</th>    			
											<th>유저번호</th>	
											<th>아이디</th>
											<th>포인트</th>    				
											<th>포인트 이름</th>    				
											<th>포인트 적립일</th>    				
						    			</tr>
						    		</thead>
						    		<tbody>
										<c:forEach var="pointVo" items="${pointList}">
											<tr>
												<td>${pointVo.pointno}</td>
												<td>${pointVo.userno}</td>
												<td>${pointVo.userid}</td>
												<td>${pointVo.point}</td>
												<td>${pointVo.point_name}</td>
												<td>${pointVo.point_date}</td>
											</tr>
										</c:forEach>
									</tbody>
						    	</table>
			    	    	</div>
			            </div>
						<!-- 글 목록 페이징 부분-->
						<div class="row mb-3">
							<div class="col-md-12">
								<nav>
									<ul class="pagination justify-content-center" id="pagination">
										<c:if test="${pagingDto.startPage > 1}">
											<li class="page-item"><a class="page-link move_page"
												href="/point/point_list?userno=1&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">처음으로</a></li>
											<li class="page-item"><a class="page-link move_page"
												href="/point/point_list?userno=${pagigDto.startPage-1}&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">이전</a></li>
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
												<a class="page-link move_page" href="/point/point_list?userno=${param.page}&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">${i}</a>
											</li>
										</c:forEach>
										<c:if test="${pagingDto.endPage != pagingDto.totalPage}">
											<li class="page-item"><a class="page-link move_page"
												href="/point/point_list?userno=${pagigDto.endPage+1}&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">다음</a></li>
											<li class="page-item"><a class="page-link move_page"
												href="/point/point_list?userno=${pagigDto.totalPage}&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">마지막으로</a></li>
										</c:if>
									</ul>
								</nav>
							</div>
						</div>
						<!-- 글 목록 페이징 부분 끝 -->
				        <div style="text-align:center;">
					        <a href="/mypage/main?userno=${param.userno}" class="site-btn">마이페이지로</a>
				        </div>
		        	</div>
		        </div>
		    </section>
		    <!-- 포인트 내역을 보여주는 부분 끝 -->
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-1"></div>
	</div>
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>