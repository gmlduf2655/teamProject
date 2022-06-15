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
		});
    </script>
    
    <!-- 제목 부분 -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>마이페이지</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 제목 부분 -->

    <!-- 마이페이지 부분 -->
    <section class="login spad">
    	<div class="row">
	    	<!-- 마이페이지 메뉴 부분 -->
    		<div class="col-md-2" style="color:white;padding-left:50px;">
				<jsp:include page="/WEB-INF/views/mypage/mypage_menu.jsp" />				
    		</div>
    		<!-- 마이페이지 메뉴 부분 끝 -->
	    	<!-- 유저 프로필 부분 -->
    		<div class="col-md-8" >
	            <!-- 유저 영화 예매 내역 부분 -->
	            <div class="row d-flex justify-content-center">
	                <div class="col-lg-12">
						<h3 class="mb-4">내가 참가한 이벤트</h3>
						<div class="row">
						<c:forEach var="eventVo" items="${eventList}" varStatus="status">
							<c:if test="true">
							<div class="col-md-3">
								<div class="product__item">
									<div class="product__item__pic set-bg" 
											<c:choose>
											<c:when test="${empty eventVo.event_image}">
												data-setbg="/resources/images/no_image.jpg" 
											</c:when>
											<c:otherwise>
												data-setbg="/event/displayImage?filename=${eventVo.event_image}"
											</c:otherwise>
											</c:choose>
											style="cursor: pointer;" onclick="location.href='/event/event_read?event_no=${eventVo.event_no}';">								
									</div>
									<div class="product__item__text">
										<ul>
											<li>액션이 죽이는</li>
											<li>영화</li>
										</ul>
										<h5>
											<a href="/event/event_read?event_no=${eventVo.event_no}">${eventVo.event_title}</a>
										</h5>
											<span style="color:white">${eventVo.event_start_date}~${eventVo.event_end_date}</span>
									</div>
								</div>
							</div>
							</c:if>
						</c:forEach>
						</div>
	            	</div>
	            </div>
	            <!-- 유저 영화 예매 내역 부분 끝-->
	            <div style="text-align:center;">
	        		<a href="/mypage/main?userno=${param.userno}" class="site-btn">마이페이지로</a>
        		</div>
    		</div>
    		<div class="col-md-2"></div>
    	</div>
        <div class="container">
        </div>
    </section>
    <!-- 마이페이지 부분 끝-->

<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>