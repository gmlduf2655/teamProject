<%@page import="com.kh.team.dao.TicketDaoImpl"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<style>
	.synopsis{
		width: 700px;
	    overflow: hidden;
	    text-overflow: ellipsis;
		white-space: nowrap;
		margin-bottom: 20px;
	}
	#top_button {
		position: fixed; 
		right: 2%; 
		bottom: 50px; 
		z-index: 999;
		background-color:transparent;
		width : 100px;
		height : 100px;
	}

</style>

<script>
	$(document).ready(function(){
		// 임희열 : 회원 탈퇴시 회원 탈퇴 성공여부 확인
		var unregister_result = "${unregister_result}";
		if (unregister_result == "true"){
			alert("회원 탈퇴 성공");
		}else if(unregister_result == "false"){
			alert("회원 탈퇴 실패");
		}else {}
		
		//유수연 : 박스오피스 정보 우리 서버 없을시 알림
		var movieInfoByMovieCodeExist = "${movieInfoByMovieCodeExist}";
		if (movieInfoByMovieCodeExist == "false"){
			alert("정보가 없습니다\n 빠른시일내에 준비하도록 하겠습니다");
			}
	});
</script>

<div class="container">
	<div class="row">
	<!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="hero__slider owl-carousel">
	            <c:forEach items="${movieList}" var="movieVo" varStatus="status">
	            	<c:if test="${status.index < 3}">
		                <div class="hero__items set-bg" data-setbg="/movie/displayImage?filename=${movieVo.movie_image_name}"
		                	style="background-position: center center; ">
		                    
		                    <div class="row">
		                        <div class="col-lg-6">
		                            <div class="hero__text" >
		                                <div class="label" style="border-radius: 5px;">${movieVo.movie_genre}</div>
		                                <h2 style="color: black;">${movieVo.movie_name}</h2>
		                                <p class="synopsis" style="color: black;">${movieVo.movie_synopsis}</p>
		                                <a href="#" style="opacity:1;">
		                                	<span style="">예매하기</span> <i class="fa fa-angle-right"></i>
		                                </a>
		                            </div>
		                        </div>
		                    </div>
		                </div>
	                </c:if>
	            </c:forEach>
                
            </div>
        </div>
    </section>
    <!-- Hero Section End -->
    
	
	<br><br>
	<main class="col-lg-8">
		<%@ include file="/WEB-INF/views/include/main.jsp" %>
	</main>
		<%@ include file="/WEB-INF/views/include/aside.jsp" %>
	</div>
</div>

<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>