<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<style>
		h4{
			color:white;
			margin-bottom:20px;
		}
		h3{
			color:white;
		}
		hr{
			background-color:white;
		}
		ul{
			list-style:none;
		}
		li{
			font-size:20px;
		}
		li>a{
			color:white;
		}
		.page-item.active .page-link{
		    z-index: 3;
			color:white;
			border-color:#e53637;
			background-color:#e53637;
		}
		.page-link {
		    position: relative;
		    display: block;
		    padding: 0.5rem 0.75rem;
		    margin-left: -1px;
		    line-height: 1.25;
		    color: #e53637;
		    background-color: #fff;
		    border: 1px solid #dee2e6;
		}
		
	</style>
    <script>
		$(document).ready(function(){
			// 검색 버튼을 눌렀을 때
			$("#search_btn").click(function(){
				var keyword = $("#keyword").val(); // 검색어
				var searchType = $("#searchType").val(); // 검색유형
				// 검색 버튼을 눌렀을 때 검색 유형과 검색어에 따른 포인트 목록을 다시보여줌
				location.href = "/point/point_list?userno=${param.userno}&page=${param.page}&searchType=" + searchType + "&keyword=" + keyword;
			});
		});
    </script>
    
    <!-- 포인트 내역을 보여주는 부분 -->
    <section>
    	<div class="row">
        	<div class="col-md-2" style="color:white;margin-left: 80px;">
        		<jsp:include page="/WEB-INF/views/mypage/mypage_menu.jsp" />
        	</div>
        	<div class="col-md-8">
        		<!-- nav 부분 -->
				<nav class="row mb-4" >
					<div class="col-md-4">
						<h3>포인트 내역</h3>
					</div>
					<div class="col-md-2"></div>
					<div class="col-md-2" style="display:flex;justify-content: flex-end;">
						<select name="searchType" id="searchType" style="color:black;">
							<option value="p"
								<c:if test="${pagingDto.searchType == 'p'}">selected</c:if>
							>포인트</option>
							<option value="n"
								<c:if test="${pagingDto.searchType == 'u'}">selected</c:if>
							>이름</option>
							<option value="d"
								<c:if test="${pagingDto.searchType == 'd'}">selected</c:if>
							>날짜</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" class="form-control" name="keyword" id="keyword" value="${param.keyword}">
					</div>
					<div class="col-md-1" style="padding-left:0px;">
						<button type="button" class="site-btn" id="search_btn">검색</button>
					</div>
				</nav>
				<!-- nav 부분 끝-->
	    		<div class="row">
	               	<div class="col-lg-12 ">
				    	<table class="table" style="color:white;">
				    		<thead>
				    			<tr>
									<th>#</th>    				
									<th>포인트</th>    				
									<th>포인트 이름</th>    				
									<th>포인트 적립일</th>    				
				    			</tr>
				    		</thead>
				    		<tbody>
								<c:forEach var="pointVo" items="${pointList}">
									<tr>
										<td>${pointVo.pointno}</td>
										<td>${pointVo.point}</td>
										<td>${pointVo.point_name}</td>
										<td>
											<fmt:formatDate value="${pointVo.point_date}" pattern="yyyy/MM/dd"/>
										</td>
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
								<c:forEach var="i" begin="${pagingDto.startPage}" end="${pagingDto.endPage}">
									<li
										<c:choose>
											<c:when test="${i == pagingDto.page}">
												class="page-item active"
											</c:when>
											<c:otherwise>
												class="page-item"		
											</c:otherwise>
										</c:choose>>
										<a class="page-link move_page" href="/point/point_list?userno=${param.userno}&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">${i}</a>
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
        	<div class="col-md-2"></div>
        </div>
    </section>
    <!-- 포인트 내역을 보여주는 부분 끝 -->
	
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>