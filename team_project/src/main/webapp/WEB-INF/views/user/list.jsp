<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<style>
		
	</style>
    <script>
		$(document).ready(function(){
			console.log("${pointList}");
		});
    </script>
    
    
    <!-- 제목 부분 -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>유저 정보</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 제목 부분 끝 -->

    <!-- 유저 목록을 보여주는 부분 -->
    <section class="login spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                	<h3 class="mb-4" style="color:white;">기존 회원</h3>
			    	<table class="table" style="color:white;">
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
			    	<hr style="background-color:white;">
			    	<h3 class="mb-4" style="color:white;">간편로그인 회원</h3>
			    	<table class="table" style="color:white;">
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
    	    	</div>
            </div>
        </div>
        <div style="text-align:center;">
	        <a href="/user/mypage?userno=${param.userno}" class="site-btn">마이페이지로</a>
        </div>
    </section>
    <!-- 유저 목록을 보여주는 부분 끝 -->
	
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>