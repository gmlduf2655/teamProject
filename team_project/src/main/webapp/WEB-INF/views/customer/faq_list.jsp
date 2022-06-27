<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<style>
	.movie_page{
		color: #e53637;
	}
	
	.page-item.active .page-link{
		color : white;
		background-color : #e53637;
		border-color : #e53637;
	}
</style>

<script type="text/javascript">
	$(document).ready(function(){
		// 검색 버튼을 눌렀을 때
		$("#search_btn").click(function(){
			var keyword = $("#keyword").val(); // 검색어
			var searchType = $("#searchType").val(); // 검색유형
			// 검색 버튼을 눌렀을 때 검색 유형과 검색어에 따른 포인트 목록을 다시보여줌
			location.href = "/user/faq_list?&page=${param.page}&searchType=" + searchType + "&keyword=" + keyword;
		});		
	});
</script>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-8 mb-4">
					<!-- nav 부분 -->
					<nav class="row mb-4" >
						<div class="col-md-4">
							<h3 class="text-white">FAQ 게시판</h3>
						</div>
						<div class="col-md-2"></div>
						<div class="col-md-2" style="display:flex;justify-content: flex-end;">
							<select name="searchType" id="searchType" style="color:black;">
								<option value="q"
									<c:if test="${pagingDto.searchType == 'q'}">selected</c:if>
								>질문</option>
								<option value="a"
									<c:if test="${pagingDto.searchType == 'a'}">selected</c:if>
								>응답</option>
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
					<!-- FAQ 메뉴 부분 -->
					<div id="card-735056">
						<c:forEach var="faqVo" items="${faqList}">
							<div class="card">
								<div class="card-header">
									 <a class="card-link collapsed text-dark" data-toggle="collapse" 
									 data-parent="#card-735056" href="#card-element-${faqVo.faqno}">
									 	Q. ${faqVo.question}
									 </a>
								</div>
								<div id="card-element-${faqVo.faqno}" class="collapse">
									<div class="card-body">
										A. ${faqVo.answer}
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<!-- FAQ 메뉴 부분 -->
				</div>
				<div class="col-md-2">
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
		</div>
	</div>
</div>

<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>