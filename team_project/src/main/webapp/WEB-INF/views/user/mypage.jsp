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
	</style>
    <script>

    </script>
    
    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>마이페이지</h2>
<!--                         <p>Welcome to the official Anime blog.</p> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Login Section Begin -->
    <section class="login spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>프로필 사진</h3>
                        <c:choose>
                        	<c:when test="${empty loginUserVo.profile_image}">
                        		<img src="/resources/images/no_image.jpg" alt="프로필 사진">
                        	</c:when>
                        	<c:otherwise>
                        		<img src="/user/get_profile_image?filename=${loginUserVo.profile_image}" alt="프로필 사진">
                        	</c:otherwise>
                        </c:choose>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__register">
                        <h3>내 정보</h3>
                        <h4>이름 : ${loginUserVo.username}</h4>
                        <h4>별명 : ${loginUserVo.nickname}</h4>
                        <h4>포인트 : ${loginUserVo.point}</h4>
                    </div>
                </div>
            </div>
            <hr>
            <div>
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-12">
						<h3>이용내역</h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Login Section End -->

<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>