<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

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
		.move_page{
			color:#e53637;
		}
		.checked {
		  color: orange;
		}
	</style>
    <script>
    $(document).ready(function(){
		
		$("#btnSearch").on("click", function(){
			var searchType = $("#searchType").val();
			var keyword = $("#keyword").val();
			var frmSearch = $("#frmSearch");
			
			 if(!keyword){
			        alert("검색어를 입력하세요.");
			        return false;
			    }   
			 
			 frmSearch.find("input[name=searchType]").val(searchType);
			 frmSearch.find("input[name=keyword]").val(keyword);
			 frmSearch.find("input[name=page]").val(1);
			 frmSearch.submit();
			
		});
    });
    </script>

    <!-- 리뷰 내역을 보여주는 부분 -->
    <section>
    	<div class="row">
        	<div class="col-md-2" style="color:white;margin-left: 80px;">
        		<jsp:include page="/WEB-INF/views/mypage/mypage_menu.jsp" />
        	</div>
        	<div class="col-md-8">
        		<!-- nav 부분 -->
				<nav class="row mb-4" >
					<div class="col-md-4">
						<h3>리뷰 내역</h3>
					</div>
					<div class="col-md-3"></div>
					<div class="col-md-1" style="display:flex;justify-content: flex-end;">
						<select name="searchType" id="searchType" style="color:black;">
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
							<option value="tc"
								<c:if test="${pagingDto.searchType == 'tc'}">
									selected
								</c:if>
							>제목 + 내용</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" class="form-control" name="keyword" id="keyword" value="${param.keyword}">
					</div>
					<div class="col-md-1" style="padding-left:0px;">
					<form id="frmSearch" action="/mypage/write_review_list" method="get">
						<input type="hidden" name="userno" value="${param.userno}">
						<input type="hidden" name="page" value="${pagingDto.page}">
						<input type="hidden" name="searchType" value="${pagingDto.searchType}">
						<input type="hidden" name="keyword" value="${pagingDto.keyword}">
						<button type="submit" class="btn btn-primary" id="btnSearch">검색</button>
					</form>
					</div>
				</nav>
				<!-- nav 부분 끝-->
				<!-- 리뷰 내역 테이블 부분 -->
	    		<div class="row">
	               	<div class="col-lg-12 ">
				    	<table class="table" style="color:white;">
				    		<thead>
				    			<tr>
									<th>번호</th>
									<th>작성자</th>
									<th>제목</th>
									<th>평점</th>
									<th>작성일</th>
									<th>조회수</th>	   				
				    			</tr>
				    		</thead>
				    		<tbody>
								<c:forEach var="reviewVo" items="${reviewList}">
									<tr>
										<td class="td_list" data-rno="${reviewVo.review_no}">${reviewVo.review_no}</td>
										<td>${reviewVo.review_writer}</td>
										<td><a style="color:white"
											href="/review/review_read?review_no=${reviewVo.review_no}">${reviewVo.review_title}</a></td>
										<td>
											<span class="fa fa-star
												<c:if test="${reviewVo.review_star >= 1}">checked</c:if>
											"></span>
											<span class="fa fa-star
												<c:if test="${reviewVo.review_star >= 2}">checked</c:if>
											"></span>
											<span class="fa fa-star
												<c:if test="${reviewVo.review_star >= 3}">checked</c:if>
											"></span>
											<span class="fa fa-star
												<c:if test="${reviewVo.review_star >= 4}">checked</c:if>
											"></span>
											<span class="fa fa-star
												<c:if test="${reviewVo.review_star >= 5}">checked</c:if>
											"></span>
										</td>
										
										<td>${reviewVo.review_reg_date}</td>
										<td>${reviewVo.review_viewcnt}</td>
									</tr>
								</c:forEach>
							</tbody>
				    	</table>
	    	    	</div>
	            </div>
	            <!-- 리뷰 내역 테이블 부분 끝-->
	            
				<!-- 글 목록 페이징 부분-->
				<div class="row mb-3">
					<div class="col-md-12">
						<nav>
							<ul class="pagination justify-content-center" id="pagination">
								<c:if test="${pagingDto.startPage > 1}">
									<li class="page-item"><a class="page-link move_page"
										href="/mypage/write_review_list?userno=${param.userno}page=1&searchType=${param.searchType}&keyword=${param.keyword}">처음으로</a></li>
									<li class="page-item"><a class="page-link move_page"
										href="/mypage/write_review_list?userno=${param.userno}page=${pagigDto.startPage-1}&searchType=${param.searchType}&keyword=${param.keyword}">이전</a></li>
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
										<a class="page-link move_page" href="/mypage/write_review_list?userno=${param.userno}&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">${i}</a>
									</li>
								</c:forEach>
								<c:if test="${pagingDto.endPage != pagingDto.totalPage}">
									<li class="page-item"><a class="page-link move_page"
										href="/mypage/write_review_list?userno=${param.userno}page=${pagigDto.endPage+1}&searchType=${param.searchType}&keyword=${param.keyword}">다음</a></li>
									<li class="page-item"><a class="page-link move_page"
										href="/mypage/write_review_list?userno=${param.userno}page=${pagigDto.totalPage}&searchType=${param.searchType}&keyword=${param.keyword}">마지막으로</a></li>
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