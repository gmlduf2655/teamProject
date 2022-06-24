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
	div{
		-webkit-overflow-scrolling:touch;	
	}
</style>
<script>
	$(document).ready(function(){
		// 메세지 제목 부분을 클릭했을 때 메세지 상세 정보 확인
		$(".td_link").click(function() {
			var messageno = $(this).attr("data-messageno");
			location.href = "/message/read?page=${param.page}&type=${param.type}&messageno="+ messageno;
		});

		// 한 페이지에 있는 모든 메세지를 선택할 때 사용
		$("#select_all").click(function() {
			if ($(this).is(":checked")) {
				$(".messages").prop("checked", true);
			} else {
				$(".messages").prop("checked", false);
			}
		});

		// 삭제 버튼 눌렀을 때
		$("#form_btn").click(function(){
			var messages = $(".messages");
			var messagenos = [];
			// 삭제할 메세지를 messagenos변수에 담음
			$.each(messages , function(i,v){
				if($(this).is(":checked")){
					messagenos.push($(this).val());
					$("#multi_delete_form").append("<input type='hidden' name='sData' value='"+ $(this).val() +"'>");
				}
			});
			if(messagenos.length > 0){
				$("#multi_delete_form").submit();
			}
		});
		
		// 검색 버튼 눌렀을 때
		$("#search_btn").click(function(){
			var searchType = $("#searchType").val();
			var keyword = $("#keyword").val();
			location.href = "/admin/total_message_list?page=1&type=${param.type}&searchType=" + searchType + "&keyword=" + keyword;
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
			<br><h2>모든 메세지 관리</h2>
			<!-- 포인트 내역을 보여주는 부분 -->
		    <section class="login spad">
		    	<div class="row">
		        	<div class="col-md-12">
		        		<!-- nav 부분 -->
						<nav class="row mb-4" >
							<div class="col-md-4">
								<h3>모든 메세지</h3>
							</div>
							<div class="col-md-2"></div>
							<div class="col-md-1" style="display:flex;justify-content: flex-end;">
								<select name="searchType" id="searchType" style="color:black;">
									<option value="t" 
										<c:if test="${param.searchType == '' or param.searchType == 't'}">selected</c:if>
									>제목</option>
									<option value="c" 
										<c:if test="${param.searchType == 'c'}">selected</c:if>
									>내용</option>
									<option value="u" 
										<c:if test="${param.searchType == 'u'}">selected</c:if>
									>유저</option>
									<option value="tcu" 
										<c:if test="${param.searchType == 'tcu'}">selected</c:if>
									>모두포함</option>
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
						<!-- 모든 유저 포인트 내역 테이블 부분 -->
			    		<div class="row" >
			               	<div class="col-lg-12">
			               		<div style="overflow-x:scroll;">
						    	<table class="table" style="width:1600px;">
						    		<thead>
						    			<tr>
											<th><input type="checkbox" id="select_all"></th>
											<th>#</th>
											<th>메세지 제목</th>
											<th>보낸이</th>
											<th>받는이</th>
											<th>작성일</th>
											<th>읽은 날짜</th>	
											<th>보낸이 삭제</th>		
											<th>받는이 삭제 </th>		
						    			</tr>
						    		</thead>
						    		<tbody>
										<c:forEach var="messageVo" items="${totalMessageList}">
											<tr>
												<td><input type="checkbox" class="messages" name="messages" value="${messageVo.messageno}"></td>
												<td>${messageVo.messageno}</td>
												<td>${messageVo.message_title}</td>
												<td>${messageVo.sender}</td>
												<td>${messageVo.receiver}</td>
												<td>${messageVo.message_date}</td>
												<c:choose>
													<c:when test="${empty messageVo.read_date}">
														<td>읽지 않음</td>
													</c:when>
													<c:otherwise>
														<td>${messageVo.read_date}</td>
													</c:otherwise>
												</c:choose>
												<td>
													<c:choose>
														<c:when test="${messageVo.sender_delete == 'T'}">삭제됨</c:when>
														<c:otherwise>삭제 안됨</c:otherwise>
													</c:choose>
												</td>
												<td>
													<c:choose>
														<c:when test="${messageVo.receiver_delete == 'T'}">삭제됨</c:when>
														<c:otherwise>삭제 안됨</c:otherwise>
													</c:choose>
												</td>
											</tr>
										</c:forEach>
									</tbody>
						    	</table>
						    	</div>
			    	    	</div>
			            </div>
			            <!-- 모든 유저 포인트 내역 테이블 부분 끝-->
						<!-- 글 목록 페이징 부분-->
						<div class="row mb-3">
							<div class="col-md-12">
								<nav>
									<ul class="pagination justify-content-center" id="pagination">
										<c:if test="${pagingDto.startPage > 1}">
											<li class="page-item"><a class="page-link move_page"
												href="/admin/total_message_list?page=1&searchType=${param.searchType}&keyword=${param.keyword}">처음으로</a></li>
											<li class="page-item"><a class="page-link move_page"
												href="/admin/total_message_list?page=${pagigDto.startPage-1}&searchType=${param.searchType}&keyword=${param.keyword}">이전</a></li>
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
												href="/admin/total_message_list?&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">${i}</a>
											</li>
										</c:forEach>
										<c:if test="${pagingDto.endPage != pagingDto.totalPage}">
											<li class="page-item"><a class="page-link move_page"
												href="/admin/total_message_list?page=${pagigDto.endPage+1}&searchType=${param.searchType}&keyword=${param.keyword}">다음</a></li>
											<li class="page-item"><a class="page-link move_page"
												href="/admin/total_message_list?page=${pagigDto.totalPage}&searchType=${param.searchType}&keyword=${param.keyword}">마지막으로</a></li>
										</c:if>
									</ul>
								</nav>
							</div>
						</div>
						<!-- 글 목록 페이징 부분 끝 -->
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