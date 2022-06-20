<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
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
		var create_result = "${create_result}";
		if(create_result == "true"){
			alert("테스트 유저 생성 성공");
		}else if(create_result == "false"){
			alert("테스트 유저 생성 실패");
		}else {}
		
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
						<div class="col-md-4">
							<h3>기존회원</h3>
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
						<div class="col-md-2" style="padding-left:0px;">
							<button type="button" class="btn btn-primary" id="search_btn">검색</button>
						</div>
					</nav>
					<!-- nav 부분 끝-->
		            <div class="row">
		                <div class="col-lg-12 ">
		                	<div class="mb-3" style="overflow-x:scroll">
		                		<!-- 기존 회원 테이블 부분 -->
						    	<table class="table" style="width:1600px;">
						    		<thead>
						    			<tr>
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
						    			</tr>
						    		</thead>
						    		<tbody>
										<c:forEach var="originUserVo" items="${originUserList}">
											<tr>
												<td>${originUserVo.userno}</td>
												<td>${originUserVo.userid}</td>
												<td>${originUserVo.userpw}</td>
												<td>${originUserVo.username}</td>
												<td>${originUserVo.nickname}</td>
												<td>${originUserVo.email}</td>
												<td>${originUserVo.address}</td>
												<td>${originUserVo.cellphone}</td>
												<td>${originUserVo.point}</td>
												<td>${originUserVo.reg_date}</td>
											</tr>
										</c:forEach>
									</tbody>
						    	</table>
						    	<!-- 기존 회원 테이블 부분 끝 -->
					    	</div>
					    	<!-- 기존 회원 글 목록 페이징 부분 -->
						    <jsp:include page="/WEB-INF/views/include/list_paging.jsp" />
					    	<!-- 기존 회원 글 목록 페이징 부분 끝-->
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