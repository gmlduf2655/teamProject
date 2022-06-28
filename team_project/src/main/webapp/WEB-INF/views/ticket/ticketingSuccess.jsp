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
						<div class="closeStep">  <!-- 테스트용 (선택이 완료된 스탭은 .closeStep 클래스 넣어줘서 표시하는 용) -->
							<div>
								02<br>
								인원/좌석
							</div>
						</div>
						<div class="nowStep">
							<div>
								03<br>
								결제완료
							</div>
						</div>
					</div>
					<div class="col successContainer">
						<div class="sectionTitle">예매 완료</div>
						<div class="row no-gutters">
							<div class="col">
								<div class="ticketCard">
									<div class="ticketHeader">
										<div class="movieName">[${ticketInfo.room_type_name}] ${ticketInfo.movie_name}</div>
										<div class="ticketAddress">${ticketInfo.cinema_name} - ${ticketInfo.room_name} (${ticketInfo.room_floor})</div>
										<div class="ticketSeat">${ticketInfo.seat_y}${ticketInfo.seat_x}</div>
									</div>
									<div class="ticketBody">
										<div class="ticketDate">${fn:substring(ticketInfo.movie_begin_date, 5, 10)}</div>
										<div class="ticketTime"><strong id="movieStartTime">${fn:substring(ticketInfo.movie_begin_date, 11, 16)}</strong> ~ ${fn:substring(ticketInfo.movie_finish_date, 11, 16)}</div>
										<ul> 
											<li>
												극장 이용 시 마스크 착용은 필수입니다. (미착용 시 입장 제한)
												입장 지연에 따른 관람 불편을 최소화하기 위해 본 영화는 10분 후 상영이 시작됩니다.
											</li>
											<li>
												영화 상영시작시간 15분 전까지 취소가 가능하며, 캡처화면은 입장이 데한될 수 있습니다.
											</li>
										</ul>
									</div>
									<div class="ticketFooter">
										<div class="ticketBarCode">
											<img alt="ticketBarcode" src="http://bwipjs-api.metafloor.com/?bcid=code128&includetext&text=${ticketInfo.ticket_no}">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp" %>