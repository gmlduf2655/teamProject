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
		background:#eeeeee;
		background-color: #eeeeee;
	}
	section.product {
		padding : 0;
	}
	.ma {
		border-top: 50px solid #eeeeee;
	}
</style>
<script>
	$(document).ready(function(){
		// FAQ 생성 성공 여부 확인 메세지
		var add_result = "${add_result}";
		if(add_result == "true"){
			alert("FAQ 생성 성공");
		} else if(add_result == "false"){
			alert("FAQ 생성 실패");
		} else {}
		
		// FAQ 수정 성공 여부 확인 메세지
		var modify_result = "${modify_result}";
		if(modify_result == "true"){
			alert("FAQ 수정 성공");
		} else if(modify_result == "false"){
			alert("FAQ 수정 실패");
		} else {}
		
		// FAQ 수정 성공 여부 확인 메세지
		var delete_result = "${delete_result}";
		if(delete_result == "true"){
			alert("FAQ 삭제 성공");
		} else if(delete_result == "false"){
			alert("FAQ 삭제 실패");
		} else {}
		
		// FAQ 수정 성공 여부 확인 메세지
		var close_result = "${close_result}";
		if(close_result == "true"){
			alert("FAQ 비공개 성공");
		} else if(close_result == "false"){
			alert("FAQ 비공개 실패");
		} else {}
		
		// 전체 선택하는 체크 박스 클릭시
		$("#check_all").click(function(){
			// 체크 박스가  클릭된 상태면 전체 선택을 하고 클릭이 되지 않았을 때는 전체 선택을 취소함
			if($(this).is(":checked")){
				$(".check_one").prop("checked", true);
			}else {
				$(".check_one").prop("checked", false);
			}
		});
		
		// 메세지 다중 삭제 버튼
		$("#multi_delete_btn").click(function(){
			var sData = []
			var check_one = $(".check_one");
			$.each(check_one, function(i,v){
				if($(this).is(":checked")){
					sData.push($(this).val());
					$("#multi_delete_form").append("<input type='hidden' name='sData' value='"+ $(this).val() +"'>")
				}
			});
			console.log(sData);
			if(sData.length > 0){
				$("#multi_delete_form").submit();
			}
		});
		
		// 메세지 다중 비공개 버튼
		$("#multi_close_btn").click(function(){
			var sData = []
			var check_one = $(".check_one");
			$.each(check_one, function(i,v){
				if($(this).is(":checked")){
					sData.push($(this).val());
					$("#multi_close_form").append("<input type='hidden' name='sData' value='"+ $(this).val() +"'>")
				}
			});
			console.log(sData);
			if(sData.length > 0){
				$("#multi_close_form").submit();
			}
		});
			
		// 검색 버튼 클릭
		$("#search_btn").click(function(){
			var keyword = $("#keyword").val();
			var searchType = $("#searchType").val();
			location.href = "/admin/manage_faq?page=${param.page}&searchType=" + searchType + "&keyword=" + keyword;
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
			<div class="container-fluid">
				<div class="row mb-5">
					<div class="col-md-4">
						<h2 class="mb-4">FAQ 생성</h2>
						<form role="form" method="post" action="/admin/add_faq">
							<input type="hidden" name="page" value="${param.page}">
							<div class="form-group">
								<input type="text" class="form-control" name="question" id="question" placeholder="질문" required/>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="answer" id="answer" placeholder="응답" required/>
							</div>
							<button type="submit" class="btn btn-primary">FAQ 생성</button>
						</form>
					</div>
					<div class="col-md-4">
						<h2 class="mb-4">FAQ 수정</h2>
						<form role="form" method="post" action="/admin/modify_faq">
							<input type="hidden" name="page" value="${param.page}">
							<div class="form-group">
								<input type="number" class="form-control" name="faqno" id="faqno" placeholder="FAQ번호" required/>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="question" id="question" placeholder="질문" required/>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="answer" id="answer" placeholder="응답" required/>
							</div>
							<button type="submit" class="btn btn-primary">FAQ 수정</button>
						</form>
					</div>
					<div class="col-md-4">
						<h2 class="mb-4">FAQ 삭제</h2>
						<form role="form" method="post" action="/admin/delete_faq">
							<input type="hidden" name="page" value="${param.page}">
							<div class="form-group">
								<input type="number" class="form-control" name="faqno" id="faqno" placeholder="FAQ번호" required/>
							</div>
							<button type="submit" class="btn btn-primary">FAQ 삭제</button>
						</form>					
					</div>
				</div>				
				<div class="row">
					<div class="col-md-12">
						<div class="row">
							<div class="col-md-2">
								<h3 class="mb-4">FAQ 목록</h3>
							</div>
							<div class="col-md-4">
								<div class="row">
									<form class="mr-4" method="post" action="/admin/multi_delete_faq" id="multi_delete_form">
										<input type="hidden" name="page" value="${param.page}">
										<button type="button" class="btn btn-primary" id="multi_delete_btn">선택 내용 삭제</button>
									</form>
									<form method="post" action="/admin/multi_close_faq" id="multi_close_form">
										<input type="hidden" name="page" value="${param.page}">
										<button type="button" class="btn btn-primary" id="multi_close_btn">선택 내용 비공개</button>
									</form>
								</div>
							</div>
							<div class="col-md-1"></div>
							<div class="col-md-1" style="display:flex;justify-content: flex-end;padding-right:0px;">
								<select name="searchType" id="searchType" style="color:black;">
									<option value="q" 
										<c:if test="${param.searchType == '' or param.searchType == 'q'}">selected</c:if>
									>질문</option>
									<option value="a" 
										<c:if test="${param.searchType == 'a'}">selected</c:if>
									>응답</option>
								</select>
							</div>
							<div class="col-md-3">
								<input type="text" class="form-control" name="keyword" id="keyword" value="${param.keyword}">
							</div>
							<div class="col-md-1" style="padding-left:0px;">
								<button type="button" class="btn btn-primary" id="search_btn">검색</button>
							</div>
						</div>
						<table class="table">
							<thead>
								<tr>
									<th><input type="checkbox" id="check_all" ></th>
									<th>FAQ 번호</th>
									<th>질문</th>
									<th>응답</th>
									<th width="150px;">등록일</th>
									<th width="80px;">상태</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="faqVo" items="${faqList}">
									<tr>
										<td><input type="checkbox" class="check_one" value="${faqVo.faqno}"></td>
										<td>${faqVo.faqno}</td>
										<td>${faqVo.question}</td>
										<td>${faqVo.answer}</td>
										<td>${faqVo.reg_date}</td>
										<td>
											<c:choose>
												<c:when test="${faqVo.faq_status == 'T'}">
													공개
												</c:when>
												<c:otherwise>
													비공개
												</c:otherwise>
											</c:choose>
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
										href="/admin/manage_point_code?page=1&searchType=${param.searchType}&keyword=${param.keyword}">처음으로</a></li>
									<li class="page-item"><a class="page-link move_page"
										href="/admin/manage_point_code?page=${pagigDto.startPage-1}&searchType=${param.searchType}&keyword=${param.keyword}">이전</a></li>
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
										href="/admin/manage_point_code?&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">${i}</a>
									</li>
								</c:forEach>
								<c:if test="${pagingDto.endPage != pagingDto.totalPage}">
									<li class="page-item"><a class="page-link move_page"
										href="/admin/manage_point_code?page=${pagigDto.endPage+1}&searchType=${param.searchType}&keyword=${param.keyword}">다음</a></li>
									<li class="page-item"><a class="page-link move_page"
										href="/admin/manage_point_code?page=${pagigDto.totalPage}&searchType=${param.searchType}&keyword=${param.keyword}">마지막으로</a></li>
								</c:if>
							</ul>
						</nav>
					</div>
				</div>
				<!-- 글 목록 페이징 부분 끝 -->
			</div>			
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-1"></div>
	</div>
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>