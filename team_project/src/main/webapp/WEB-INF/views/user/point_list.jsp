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
                        <h2>포인트 내역</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 제목 부분 끝 -->

    <!-- 포인트 내역을 보여주는 부분 -->
    <section class="login spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
			    	<table class="table" style="color:white;">
			    		<thead>
			    			<tr>
								<th>#</th>    				
								<th>유저 아이디</th>    				
								<th>포인트</th>    				
								<th>포인트 이름</th>    				
								<th>포인트 적립일</th>    				
			    			</tr>
			    		</thead>
			    		<tbody>
							<c:forEach var="pointVo" items="${pointList}">
								<tr>
									<td>${pointVo.pointno}</td>
									<td>${userid}</td>
									<td>${pointVo.point}</td>
									<td>${pointVo.point_name}</td>
									<td>${pointVo.point_date}</td>
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
    <!-- 포인트 내역을 보여주는 부분 끝 -->
	
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>