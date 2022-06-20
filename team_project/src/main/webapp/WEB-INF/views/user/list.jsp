<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- 유저 목록을 보여주는 부분 -->
    <section class="login spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 ">
                	<h3 class="mb-4">기존 회원</h3>
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
			    	<h3 class="mb-4">간편로그인 회원</h3>
			    	<div>
			    		<!-- 간편로그인(sns) 회원 테이블 부분 -->
				    	<table class="table" >
				    		<thead>
				    			<tr>
									<th>#</th>    				
									<th>아이디</th>    								
									<th>이름</th>    				
									<th>닉네임</th>    				
									<th>휴대폰번호</th>    				
									<th>연동페이지</th>    				
									<th>포인트</th>    				
									<th>연동일</th>    				
				    			</tr>
				    		</thead>
				    		<tbody>
								<c:forEach var="snsUserVo" items="${snsUserList}">
									<tr>
										<td>${snsUserVo.userno}</td>
										<td>${snsUserVo.sns_id}</td>
										<td>${snsUserVo.username}</td>
										<td>${snsUserVo.nickname}</td>
										<td>${snsUserVo.cellphone}</td>
										<td>${snsUserVo.sns_type}</td>
										<td>${snsUserVo.point}</td>
										<td>${snsUserVo.sns_connect_date}</td>
									</tr>
								</c:forEach>
							</tbody>
				    	</table>
				    	<!-- 간편로그인(sns) 회원 테이블 부분 끝-->
				    </div>
				    <!-- 간편로그인(sns) 회원 글 목록 페이징 부분 -->
					<jsp:include page="/WEB-INF/views/include/list_paging.jsp" />
				    <!-- 간편로그인(sns) 회원 글 목록 페이징 부분 끝 -->
				</div>
    		</div>
    	</div>
    </section>
    <!-- 유저 목록을 보여주는 부분 끝 -->
	