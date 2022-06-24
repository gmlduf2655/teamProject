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
		// 테스트 유저 생성 여부 확인
		var create_result = "${create_result}";
		if(create_result == "true"){
			alert("테스트 유저 생성 성공");
		}else if(create_result == "false"){
			alert("테스트 유저 생성 실패");
		}else {}
		
		// 유저 다중 정지 확인
		var suspend_result = "${suspend_result}";
		if(suspend_result == "true"){
			alert("유저 정지 완료");
		}else if(suspend_result == "false"){
			alert("유저 정지 실패");
		}else {}
		
		// 유저 다중 복구 확인
		var recover_result = "${recover_result}";
		if(recover_result == "true"){
			alert("유저 복구 완료");
		}else if(recover_result == "false"){
			alert("유저 복구 실패");
		}else {}
		
		// 한 페이지에 있는 모든 메세지를 선택할 때 사용
		$("#select_all").click(function() {
			if ($(this).is(":checked")) {
				$(".usernos").prop("checked", true);
			} else {
				$(".usernos").prop("checked", false);
			}
		});
		
		// 다중 회원 정지시킬 때 사용
		$("#multi_delete_btn").click(function(){
			var usernos = $(".usernos");
			var userno_arr = [];
			// 삭제할 메세지를 messagenos변수에 담음
			$.each(usernos , function(i,v){
				if($(this).is(":checked")){
					userno_arr.push($(this).val());
					$("#multi_delete_form").append("<input type='hidden' name='sData' value='"+ $(this).val() +"'>");
				}
			});
			if(userno_arr.length > 0){
				console.log(userno_arr);
				$("#multi_delete_form").append("<input type='hidden' name='uri' value='/admin/origin_user_list'>");
				$("#multi_delete_form").submit();
			}
		});
		
		// 다중 회원 복구시킬 때 사용
		$("#multi_recover_btn").click(function(){
			var usernos = $(".usernos");
			var userno_arr = [];
			// 삭제할 메세지를 messagenos변수에 담음
			$.each(usernos , function(i,v){
				if($(this).is(":checked")){
					userno_arr.push($(this).val());
					$("#multi_recover_form").append("<input type='hidden' name='sData' value='"+ $(this).val() +"'>");
				}
			});
			if(userno_arr.length > 0){
				console.log(userno_arr);
				$("#multi_recover_form").append("<input type='hidden' name='uri' value='/admin/origin_user_list'>");
				$("#multi_recover_form").submit();
			}
		});
		
		// 검색 버튼 눌렀을 떄
		$("#search_btn").click(function(){
			var keyword = $("#keyword").val();
			var searchType = $("#searchType").val();
			location.href = "/admin/origin_user_list?page=${param.page}&searchType=" + searchType + "&keyword=" + keyword;
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
			<div class="row mb-4 ml-2">
				<div class="col-md-4">
					<h2 class="mb-4">테스트 유저 생성기</h2>
					<form role="form" method="post" action="/user/create_test_user">
						<div class="form-group">
							<input type="text" class="form-control" name="userid" id="userid" placeholder="아이디" required/>
						</div>
						<div class="form-group">
							<input type="password" class="form-control" name="userpw" id="userpw" placeholder="비밀번호" required/>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="username" id="username" placeholder="이름" required/>
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="nickname" id="nickname" placeholder="닉네임" required/>
						</div>
						<div class="form-group">
							<input type="email" class="form-control" name="email" id="email" placeholder="이메일(필수  x)" />
						</div>
						<div class="form-group">
							<input type="number" class="form-control" name="point" id="point" placeholder="포인트" />
						</div>
						<button type="submit" class="btn btn-primary">유저 생성</button>
					</form>
				</div>
			</div>
			<!-- 유저 목록을 보여주는 부분 -->
		    <section class="login spad" style="padding-top:20px;">
		        <div class="container">
		        	<!-- nav 부분 -->
					<nav class="row mb-4" >
						<div class="col-md-2">
							<h3>기존회원</h3>
						</div>
						<div class="col-md-5">
							<div class="row">
							<form class="mr-4" method="post" action="/admin/multi_user_suspend" id="multi_delete_form">
								<input type="hidden" name="page" value="${param.page}">
								<button type="button" class="btn btn-primary" id="multi_delete_btn">선택 유저 정지</button>
							</form>						
							<form method="post" action="/admin/multi_user_recover" id="multi_recover_form">
								<input type="hidden" name="page" value="${param.page}">
								<button type="button" class="btn btn-primary" id="multi_recover_btn">선택 유저 복구</button>
							</form>						
							</div>
						</div>
						<div class="col-md-1" style="display:flex;justify-content: flex-end;">
							<select name="searchType" id="searchType" style="color:black;">
								<option value="i" 
									<c:if test="${param.searchType == '' or param.searchType == 'i'}">selected</c:if>
								>아이디</option>
								<option value="u" 
									<c:if test="${param.searchType == 'u'}">selected</c:if>
								>이름</option>
								<option value="n" 
									<c:if test="${param.searchType == 'n'}">selected</c:if>
								>닉네임</option>
								<option value="d" 
									<c:if test="${param.searchType == 'd'}">selected</c:if>
								>생성일</option>
							</select>
						</div>
						<div class="col-md-3">
							<input type="text" class="form-control" name="keyword" id="keyword" value="${param.keyword}">
						</div>
						<div class="col-md-1" style="padding-left:0px;">
							<button type="button" class="btn btn-primary" id="search_btn">검색</button>
						</div>
					</nav>
					<!-- nav 부분 끝-->
		            <div class="row">
		                <div class="col-lg-12 ">
		                	<div class="mb-4" style="overflow-x:scroll">
		                		<!-- 기존 회원 테이블 부분 -->
						    	<table class="table" style="width:1600px;">
						    		<thead>
						    			<tr>
						    				<th><input type="checkbox" id="select_all"></th>
											<th>#</th>    				
											<th>아이디</th>    				
											<th>비밀번호</th>    				
											<th>이름</th>    				
											<th>닉네임</th>    				
											<th>이메일</th>    				
											<th>주소</th>    				
											<th>휴대폰번호</th>    				
											<th>포인트</th>    				
											<th>생성일</th>    	
											<th>유저 상태</th>			
						    			</tr>
						    		</thead>
						    		<tbody>
										<c:forEach var="originUserVo" items="${originUserList}">
											<tr>
												<td><input type="checkbox" class="usernos" name="usernos" value="${originUserVo.userno}"></td>
												<td>${originUserVo.userno}</td>
												<td>${originUserVo.userid}</td>
												<td>${originUserVo.userpw}</td>
												<td>${originUserVo.username}</td>
												<td>${originUserVo.nickname}</td>
												<td>
													<c:choose>
														<c:when test="${empty originUserVo.email}">
															없음
														</c:when>
														<c:otherwise>
															${originUserVo.email}
														</c:otherwise>
													</c:choose>
												</td>
												<td>
													<c:choose>
														<c:when test="${empty originUserVo.address}">
															없음
														</c:when>
														<c:otherwise>
															${originUserVo.address}
														</c:otherwise>
													</c:choose>
												</td>
												<td>
													<c:choose>
														<c:when test="${empty originUserVo.cellphone}">
															없음
														</c:when>
														<c:otherwise>
															${originUserVo.cellphone}
														</c:otherwise>
													</c:choose>
												</td>
												<td>${originUserVo.point}</td>
												<td>${originUserVo.reg_date}</td>
												<td>
													<c:choose>
														<c:when test="${originUserVo.user_status == 2}">정지</c:when>
														<c:when test="${originUserVo.user_status == 1}">활동중</c:when>
														<c:otherwise>삭제</c:otherwise>
													</c:choose>
												</td>
											</tr>
										</c:forEach>
									</tbody>
						    	</table>
						    	<!-- 기존 회원 테이블 부분 끝 -->
					    	</div>
							<!-- 글 목록 페이징 부분-->
							<div class="row mb-3">
								<div class="col-md-12">
									<nav>
										<ul class="pagination justify-content-center" id="pagination">
											<c:if test="${pagingDto.startPage > 1}">
												<li class="page-item"><a class="page-link move_page"
													href="/admin/origin_user_list?page=1&searchType=${param.searchType}&keyword=${param.keyword}">처음으로</a></li>
												<li class="page-item"><a class="page-link move_page"
													href="/admin/origin_user_list?page=${pagigDto.startPage-1}&searchType=${param.searchType}&keyword=${param.keyword}">이전</a></li>
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
													href="/admin/origin_user_list?&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">${i}</a>
												</li>
											</c:forEach>
											<c:if test="${pagingDto.endPage != pagingDto.totalPage}">
												<li class="page-item"><a class="page-link move_page"
													href="/admin/origin_user_list?page=${pagigDto.endPage+1}&searchType=${param.searchType}&keyword=${param.keyword}">다음</a></li>
												<li class="page-item"><a class="page-link move_page"
													href="/admin/origin_user_list?page=${pagigDto.totalPage}&searchType=${param.searchType}&keyword=${param.keyword}">마지막으로</a></li>
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