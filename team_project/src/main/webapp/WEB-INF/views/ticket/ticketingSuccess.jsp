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
						<div class="sectionTitle">인원/좌석 선택</div>
						<div class="row no-gutters">
							<div class="col">
								<div>
									예약이 완료되었습니다.<br>
									예약 번호 : ${ticketInfo.ticket_no}<br>
									영화 시작 시간 : ${ticketInfo.movie_begin_date}<br>
									영화 종료 시간 : ${ticketInfo.movie_finish_date}<br>
									영화 이름 : ${ticketInfo}<br>
								</div>
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

<%@ include file="/WEB-INF/views/include/footer.jsp" %>