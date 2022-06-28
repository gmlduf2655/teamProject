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
						<div class="closeStep">
							<div>
								<a href="/ticket/ticketing">
								01<br>
								상영시간
								</a>
							</div>
						</div>
						<div class="nowStep">  <!-- 테스트용 (선택이 완료된 스탭은 .closeStep 클래스 넣어줘서 표시하는 용) -->
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
					<div class="col choiseSeatContainer">
						<div class="sectionTitle">인원/좌석 선택</div>
						<div class="row no-gutters">
							<div class="col-4 choiseMovieInfo">
								<div class="movieList">
									<ul class="gridViewer"> <!-- 클래스명을 stackViewer / gridViewer 로 바꾸면 리스트 형태 변경 -->
										<li class="choise">
											<div class="moviePoster">
												<img alt="${timelineMap.movie_name}" src="/movie/displayImage?filename=${timelineMap.movie_image_name}" onerror="this.src='/resources/images/no_image.jpg'" data-movie_code="${movieVo.movie_code}">
											</div>
											<h5>
												<c:choose>
													<c:when test="${fn:substring(timelineMap.movie_audits, 0, 2) == '전체'}">
														<strong class="yearUseMark ym00"></strong>
													</c:when>
													<c:when test="${fn:substring(timelineMap.movie_audits, 0, 2) == '12'}">
														<strong class="yearUseMark ym12"></strong>
													</c:when>
													<c:when test="${fn:substring(timelineMap.movie_audits, 0, 2) == '15'}">
														<strong class="yearUseMark ym15"></strong>
													</c:when>
													<c:when test="${timelineMap.movie_audits == '청소년관람불가'}">
														<strong class="yearUseMark ym19"></strong>
													</c:when>
												</c:choose>
												<span class="movieName">${timelineMap.movie_name}</span>
											</h5>
											<div class="movieInfo">
												<ul>
													<li><strong>장르 : </strong>${timelineMap.movie_genre}</li>
													<li><strong>러닝타임 : </strong>${timelineMap.runningtime} 분</li>
												</ul>
											</div>
										</li>
									</ul>
								</div>
							</div>
							<div class="col chosiePersonCount">
								<form class="form-inline">
									<label for="room_name">상영관</label>
									<div class="form-control" id="room_name">
										<div>[${timelineMap.room_type_name}] ${timelineMap.room_name}</div>
									</div>
									<label for="pcnt">인원</label>
									<div class="input-group">
										<div class="input-group-prepend">
									    	<button class="btn btn-outline-secondary btnPCntSub" type="button">-</button>
									  	</div>
										<input id="pcnt" class="form-control" type="number" value="1" min="1" max="4">
										<div class="input-group-append">
									    	<button class="btn btn-outline-secondary btnPCntAdd" type="button">+</button>
									  	</div>
									</div>
								</form>
							</div>
						</div>
						<div class="seatTable">
							
							<div class="info">좌석 선택 후 아래의 결제하기 버튼을 눌러주세요</div>
							
							<div class="screen">S C R E E N</div>
							<table>
								<tbody>
									<c:forEach items="${seatList}" var="list" varStatus="status">
										<c:choose>
											<c:when test="${list.seat_y != prevY}">
												<tr>
													<th>${list.seat_y}</th>
														<c:choose>
															<c:when test="${list.seat_status == true}">
																<td><a data-seat_no="${list.seat_no}">${list.seat_x}</a></td>
															</c:when>
															<c:when test="${list.seat_status == false}">
																<td><a data-seat_no="${list.seat_no}" class="none">${list.seat_x}</a></td>
															</c:when>
														</c:choose>
											<c:set var="prevY" value="${list.seat_y}"></c:set>
											</c:when>
											<c:when test="${list.seat_y == prevY}">
														<c:choose>
															<c:when test="${list.seat_status == true}">
																<td><a data-seat_no="${list.seat_no}">${list.seat_x}</a></td>
															</c:when>
															<c:when test="${list.seat_status == false}">
																<td><a data-seat_no="${list.seat_no}" class="none">${list.seat_x}</a></td>
															</c:when>
														</c:choose>
														<%-- <a class="none" data-seat_no="${list.seat_no}" data-seat_status="${list.seat_status}" href="#modal-container-339736" role="button" data-toggle="modal">${list.seat_x}</a> --%>
											<c:set var="prevY" value="${list.seat_y}"></c:set>
											</c:when>
										</c:choose>
									</c:forEach>
								</tbody>
							</table>
							
						</div>
						
						<div class="pamentContainer">
							<div class="row no-gutters">
								<div class="col totalPoint">
									<div>
										총 합계 : <strong data-room_price="${timelineMap.room_price}">0</strong>원
									</div>
								</div>
								<div class="col-3 btnPament" data-userno="${loginUserVo.userno}" data-timeline_no="${timelineMap.timeline_no}">
									<div>
										포인트로 결제하기<br>
										<c:if test="${not empty loginUserVo.point}">
											(잔여 : <strong id="userPoint">${loginUserVo.point}</strong>)
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
	
	<!-- 모달 -->
	<div class="row">
		<div class="col-md-12">
			<form>
				<div class="modal fade" id="modal-container-339736" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-xl" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="myModalLabel">
									모달 제목
								</h5>
								<button type="button" class="close" data-dismiss="modal">
									<span aria-hidden="true">×</span>
								</button>
							</div>
							<div class="modal-body">
								모달창 내용
							</div>
							<div class="modal-footer">
								 
								<button type="button" id="btnModalSuccess" class="btn btn-primary">
									완료
								</button> 
								<button type="button" id="btnModalCancel" class="btn btn-secondary" data-dismiss="modal">
									취소
								</button>
							</div>
						</div>
						
					</div>
					
				</div>
			</form>
		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>