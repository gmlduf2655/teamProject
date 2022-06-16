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
    
    <!-- 제목 부분 -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>이벤트 참여 내역</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 제목 부분 -->

    <!-- 포인트 내역을 보여주는 부분 -->
    <section class="login spad">
    	<div class="row">
        	<div class="col-md-2" style="color:white;padding-left:50px;">
        		<jsp:include page="/WEB-INF/views/mypage/mypage_menu.jsp" />
        	</div>
        	<div class="col-md-8">
        		<!-- nav 부분 -->
				<nav class="row mb-4" >
					<div class="col-md-4">
						<h3>이벤트 참여 내역</h3>
					</div>
					<div class="col-md-3"></div>
					<div class="col-md-1" style="text-align:right;">
						<select name="searchType" id="searchType" style="color:black;">
							<option value="t">제목</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" class="form-control" name="keyword" id="keyword" value="${param.keyword}">
					</div>
					<div class="col-md-1" style="padding-left:0px;">
					<form id="frmSearch" action="/mypage/participate_event_list" method="get">
					<input type="hidden" name="userno" value="${param.userno}">
					<input type="hidden" name="page" value="${pagingDto.page}">
					<input type="hidden" name="searchType" value="${pagingDto.searchType}">
					<input type="hidden" name="keyword" value="${pagingDto.keyword}">
						<button type="submit" class="btn btn-primary" id="btnSearch">검색</button>
					</form>
					</div>
				</nav>
				<!-- nav 부분 끝-->
	    		<div class="row">
	               	<div class="col-lg-12 ">
				    	<table class="table" style="color:white;">
				    		<thead>
				    			<tr>				
									<th>이벤트 제목</th>    				
									<th>이벤트 시작일</th>    				
									<th>이벤트 종료일</th>		
									<th>참여 취소</th>		
				    			</tr>
				    		</thead>
				    		<tbody>
								<c:forEach var="eventVo" items="${eventList}" varStatus="status">
										<tr>
											<td><a href="/event/event_read?event_no=${eventVo.event_no}">${eventVo.event_title}</a></td>
											<td>${eventVo.event_start_date}~</td>
											<td>${eventVo.event_end_date}</td>
											<td></td>
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
							<ul class="pagination justify-content-center">
				<c:if test="${pagingDto.startPage!=1}">
					<li class="page-item">
						<a class="page-link"  
							href="/mypage/participate_event_list?page=${pagingDto.startPage-1}">이전</a>
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
						<a class="page-link" href="/mypage/participate_event_list?page=${i}">${i}</a>
					</li>
				</c:forEach>
				<c:if test="${pagingDto.endPage!=pagingDto.totalPage}">
					<li class="page-item">
						<a class="page-link" 
							href="/mypage/participate_event_list?page=${pagingDto.endPage + 1}">다음</a>
					</li>
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