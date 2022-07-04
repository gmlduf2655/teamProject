<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
		.product__item {
		    margin-bottom: 30px;
		    padding-left: 30px;
		    padding-right: 30px;
		}
		.ticketCard > div {
		    background: #fff;
		    border-radius: 1em;
		    padding: 1em 2em;
		    overflow: hidden;
		    position: relative;
		    border: 1px solid #fff;
		    margin-bottom: -1px;
		}
		
		.ticketBody > .ticketSeat {
		    display: inline-block;
		    padding: 0.2em 0.7em;
		    background: cyan;
		    font-weight: bold;
		    margin-top: 1em;
		    position: absolute;
		    top: 0;
		    right: 0;
		}

		.ticketHeader > .movieName {
		    font-size: 1.5em;
		    font-weight: bold;
		}
		
		.ticketBody .ticketDate {
		    font-weight: bold;
		    font-size: 1.2em;
		}
		
		.ticketBody .ticketTime {
		    font-size: 2em;
		}
		
		.ticketFooter {
		    border-top: 1px dashed #ddd;
		    font-size: 0.8em;
		}
		
		.ticketFooter li {
		    position: relative;
		    display: block;
		    margin-bottom: 0.5em;
		    color: gray;
		    cursor: default;
		    pointer-events: none;
		    padding-left: 1em;
		    font-size: 1em;
		}
	</style>

	<!-- 티켓 이미지 파일로 저장하기 위한 script -->
	<script src="https://cdn.rawgit.com/eligrey/FileSaver.js/5ed507ef8aa53d8ecfea96d96bc7214cd2476fd2/FileSaver.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.5.0-beta4/html2canvas.js"></script>
	
	<script>
		$(function(){
		   $(".ticketCard").click(function() { 
		        html2canvas($(this), {
		            onrendered: function(canvas) {
		                canvas.toBlob(function(blob) {
		                    saveAs(blob, 'image.png');
		                });
		            }
		        });
		    });
		});		
	</script>

    <!-- 마이페이지 부분 -->
    <section>
    	<div class="row">
	    	<!-- 마이페이지 메뉴 부분 -->
    		<div class="col-md-2" style="color:white;margin-left: 80px;">
				<jsp:include page="/WEB-INF/views/mypage/mypage_menu.jsp" />				
    		</div>
    		<!-- 마이페이지 메뉴 부분 끝 -->
	    	<!-- 유저 프로필 부분 -->
    		<div class="col-md-8" >
	            <!-- 유저 영화 예매 정보 부분 -->
	            <div class="row d-flex justify-content-center">
	                <div class="col-lg-12">
						<h3 class="mb-4" style="padding-left:30px;">예매한 영화 정보</h3>
						<div class="row">
							<div class="col-md-3">
								<div class="product__item">
									<!-- 영화 포스터 -->
									<div class="product__item__pic set-bg" 
										<c:choose>
											<c:when test="${empty ticketUserVo.movie_image_name}">
												data-setbg="/resources/images/no_image.jpg" 
											</c:when>
											<c:otherwise>
												data-setbg="/movie/displayImage?filename=${ticketUserVo.movie_image_name}"
											</c:otherwise>
										</c:choose>
										style="cursor: pointer;">									
									</div>
									<!-- 영화 포스터 끝 -->
									<!-- 영화 키워드 -->
									<div class="product__item__text">
										<ul>
											<li>
												<a style="color: white;" href="/movie/movieListHashTag?sType=movie_genre&keyword=${ticketUserVo.movie_genre}">#${ticketUserVo.movie_genre}</a>
											</li>
											<c:set var="actorsArr" value="${fn:split(ticketUserVo.movie_actors,',')}"/>
											<c:forEach var="actors" items="${actorsArr}">
												<li>
													<a style="color: white;" href="/movie/movieListHashTag?sType=movie_actors&keyword=${actors}">#${actors}</a>
												</li>
											</c:forEach>
										</ul>
									</div>
									<!-- 영화 키워드 끝 -->
								</div>
							</div>
							<!-- 영화 예매 정보 -->
							<div class="col-md-6">
<%-- 								<h4>영화 코드 번호 : ${ticketUserVo.ticket_no}</h4> --%>
<%-- 								<h4>영화 이름 : ${ticketUserVo.movie_name}</h4> --%>
<%-- 								<h4>상영 장소 : ${ticketUserVo.cinema_name}  ${ticketUserVo.room_floor}  ${ticketUserVo.room_name}  --%>
<%-- 								${ticketUserVo.seat_x}${ticketUserVo.seat_y} ${ticketUserVo.room_type_name}</h4> --%>
<%-- 								<h4>상영 시간 : ${ticketUserVo.movie_begin_date} ~ ${ticketUserVo.movie_finish_date}</h4> --%>
<%-- 								<h4>사용 포인트 : ${ticketUserVo.room_price}</h4> --%>

								<div class="ticketCard">
									<div class="ticketHeader" style="border-radius:1em;">
										<div class="movieName">[${ticketUserVo.room_type_name}] ${ticketUserVo.movie_name}</div>
										<div class="ticketAddress" style="color: #999;">${ticketUserVo.cinema_name} - ${ticketUserVo.room_name} (${ticketUserVo.room_floor})</div>
									</div>
									<div class="ticketBody">
										<div class="ticketSeat">좌석 : ${ticketUserVo.seat_y}${ticketUserVo.seat_x}</div>
										<div class="ticketDate">${fn:substring(ticketUserVo.movie_begin_date, 0, 10)}</div>
										<div class="ticketTime"><strong class="movieStartTime">${fn:substring(ticketUserVo.movie_begin_date, 11, 16)}</strong> ~ ${fn:substring(ticketUserVo.movie_finish_date, 11, 16)}</div>
										<div class="ticketBarCode">
											<img alt="ticketBarcode" src="http://bwipjs-api.metafloor.com/?bcid=code128&includetext&text=${ticketUserVo.ticket_no}">
										</div>
									</div>
									<div class="ticketFooter">
										<ul> 
											<li>
												극장 이용 시 마스크 착용은 필수입니다.<br>
												(미착용 시 입장 제한)<br>
												입장 지연에 따른 관람 불편을 최소화하기 위해<br>
												본 영화는 10분 후 상영이 시작됩니다.
											</li>
											<li>
												영화 상영시작시간 15분 전까지 취소가 가능하며,<br>
												캡처화면은 입장이 제한될 수 있습니다.
											</li>
										</ul>
									</div>
								</div>
							</div>
							<!-- 영화 예매 정보 끝 -->
						</div>
	            	</div>
	            </div>
	            <!-- 유저 영화 예매 정보 부분 끝-->
	            <div class="mt-5" style="text-align:center;">
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