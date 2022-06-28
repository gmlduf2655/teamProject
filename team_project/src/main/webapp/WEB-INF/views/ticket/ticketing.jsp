<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

<link rel="stylesheet" href="/resources/css/ticketing.css" type="text/css">

<script type="text/javascript" src="/resources/js/ticketing.js"></script>

<div class="ticketing">
	<div class="container">
		<div class="row justify-content-md-center">
			<div class="col-lg-12">
				<div class="row no-gutters ticketTable">
					<div class="col-1 stepGuideContainer">
						<div class="nowStep">
							<div>
								01<br>
								상영시간
							</div>
						</div>
						<div>  <!-- 테스트용 (선택이 완료된 스탭은 .closeStep 클래스 넣어줘서 표시하는 용) -->
							<div>
								02<br>
								인원/좌석
							</div>
						</div>
						<div>
							<div>
								03<br>
								결제완료
							</div>
						</div>
					</div>
					
					<!-- 상영시간 step -->
					<div class="col choiseCinemaContainer">
						<div class="sectionTitle">영화관</div>
						<div class="row no-gutters cinemaSection">
							<ul class="col-4 choiseLocal">
								<c:forEach items="${cinemaCityList}" var="citys">
									<li>${citys}<i class="bi bi-check-lg choise"></i></li>
								</c:forEach>
							</ul>
							<ul class="col cinemaList">
								<li style="pointer-events: none;">지역을 선택해주세요.<i class="bi bi-check-lg choise"></i></li>
							</ul>
						</div>
					</div>
					<div class="col choiseMovieContainer">
						<div class="sectionTitle">영화 선택</div>
						<div class="row no-gutters searchNav">
							<div class="col searchSelect">
								<select class="selectpicker movieOrderColumn">
									<option selected>예매순</option>
									<option>영화이름순</option>
								</select>
							</div>
							<div class="col-3 viewType">
								<ul class="row no-gutters">
									<li class="col xyCenterContainer btnStackView choise">
										<a class="centerContent">
											<i class="bi bi-list"></i>
										</a>
									</li>
									<li class="col xyCenterContainer btnGridView">
										<a class="centerContent">
											<i class="bi bi-grid"></i>
										</a>
									</li>
								
								</ul>
							</div>
						</div>
						<div class="movieList">
							<ul class="stackViewer"> <!-- 클래스명을 stackViewer / gridViewer 로 바꾸면 리스트 형태 변경 -->
								<c:forEach items="${movieList}" var="movieVo">
									<li data-movie_code="${movieVo.movie_code}">
										<div class="moviePoster">
											<img alt="${movieVo.movie_name}" src="/movie/displayImage?filename=${movieVo.movie_image_name}" onerror="this.src='/resources/images/no_image.jpg'" data-movie_code="${movieVo.movie_code}">
										</div>
										<h5>
											<c:choose>
												<c:when test="${fn:substring(movieVo.movie_audits, 0, 2) == '전체'}">
													<strong class="yearUseMark ym00"></strong>
												</c:when>
												<c:when test="${fn:substring(movieVo.movie_audits, 0, 2) == '12'}">
													<strong class="yearUseMark ym12"></strong>
												</c:when>
												<c:when test="${fn:substring(movieVo.movie_audits, 0, 2) == '15'}">
													<strong class="yearUseMark ym15"></strong>
												</c:when>
												<c:when test="${movieVo.movie_audits == '청소년관람불가'}">
													<strong class="yearUseMark ym19"></strong>
												</c:when>
											</c:choose>
											<span class="movieName">${movieVo.movie_name}</span>
											<i class="bi bi-check-lg choise"></i>
										</h5>
										<div class="movieInfo">
											<ul>
												<li><strong>장르 : </strong>${movieVo.movie_genre}</li>
												<li><strong>러닝타임 : </strong>${movieVo.runningtime} 분</li>
											</ul>
										</div>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<div class="col-4 choiseDateContainer">
						<div class="sectionTitle">${fn:substring(serverTime, 0, 10)} (오늘)</div>
						<div class="dateNav">
							<div class="choiseDate" data-ride="carousel">
								<div class="input-group">
									<input type="number" class="form-control dateYYYY" min="${fn:substring(serverTime,0,4)}" value="${fn:substring(serverTime,0,4)}">
									<input type="number" class="form-control dateMM" value="${fn:substring(serverTime,5,7)}" min="1" max="12" onchange="if(parseInt(this.value,10)<10)this.value='0' + this.value;">
									<input type="number" class="form-control dateDD" value="${fn:substring(serverTime,8,10)}" min="1" max="31" onchange="if(parseInt(this.value,10)<10)this.value='0' + this.value;">
								</div>
							</div>
							<div class="roomTypeNav">
								<ul class="row no-gutters">
										<li data-room_type_code="00" class="col choise">전체</li>
									<c:forEach items="${roomTypeList}" var="roomTypes">
										<li data-room_type_code="${roomTypes.room_type_code}" class="col">${roomTypes.room_type_name}</li>
									</c:forEach>
								</ul>
							</div>
						</div>
						<div class="timelineList">
							<div class="notListInfo">
								<div class="display-4 text-center"><i class="bi bi-film"></i></div>
								<div class="text-center">조회 가능한 상영시간이 없습니다.<br>조건을 변경해주세요.</div>
							</div>
							<ul>
							
							
<%--
 								<c:forEach begin="0" step="1" end="10">
									<li class="roomListWrapper">
										<ul class="typeList">
											<li class="typeContainer">
												<h6 class="room_type_name">[상영관 타입] 영화 제목</h6>
												<ul class="cinemaRoomList">
												
												
												
													<c:forEach begin="0" step="1" end="6">
														<li class="roomInfo">
															<strong class="movie_begin_date">00:00</strong>
															<div>73/100</div>
															<div class="room_name">현대 1관</div>
														<li>
													</c:forEach>
													
													
													
												</ul>
											</li>
										</ul>
									</li>
 								</c:forEach>
 --%>
								
								
								
								
							</ul>
						</div>	
					</div>
					<!-- 상영시간 step 끝 -->
					
				</div>
			</div>
		</div>
	</div>
	
	
	
	
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>