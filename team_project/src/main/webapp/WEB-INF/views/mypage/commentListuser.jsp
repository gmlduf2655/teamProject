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
 
    <!-- 댓글 내역을 보여주는 부분 -->
    <section>
    	<div class="row">
        	<div class="col-md-2" style="color:white;margin-left: 80px;">
        		<jsp:include page="/WEB-INF/views/mypage/mypage_menu.jsp" />
        	</div>
        	<div class="col-md-8">
        		<!-- nav 부분 -->
				<nav class="row mb-4" >
					<div class="col-md-4">
						<h3>댓글 내역</h3>
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
				<!-- 댓글 내역 테이블 부분 -->
	    		<div class="row">
	               	<div class="col-lg-12 ">
				    	<table class="table" style="color:white;">
					    	<thead>
					    		<tr>
									<th>번호</th>
									<th>영화</th>
									<th>댓글</th>
									<th>작성일</th>
					   			</tr>
					   		</thead>
					   		<tbody>
								<c:forEach var="commentVo" items="${commentlistuser}" varStatus="status">
									<c:if test="${status.index < 5}">
										<tr>
											<td>${status.count}</td>
											<td><a style="color:white"
												href="/movie/movieInfo?movie_code=${commentVo.movie_code}">${commentVo.movie_name}</a></td>
											<td>${commentVo.movie_comment}</td>
											<td>${commentVo.regdate}</td>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
					    </table>
	    	    	</div>
	            </div>
	            <!-- 댓글 내역 테이블 부분 끝-->
	            
				
		        <div style="text-align:center;">
			        <a onClick="history.go(-1)" style="cursor: pointer; color: white;" class="site-btn">마이페이지로</a>
		        </div>
        	</div>
        	<div class="col-md-2"></div>
        </div>
    </section>
    <!-- 포인트 내역을 보여주는 부분 끝 -->
	
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>