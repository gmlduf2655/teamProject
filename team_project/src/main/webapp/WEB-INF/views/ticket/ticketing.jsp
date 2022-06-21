<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%@ include file="/WEB-INF/views/include/header.jsp" %>
<style>



.ticketing {
	
}

.ticketing .ticketTable {
	height: 50em;
}

.ticketing .sectionTitle {
	height: 3em;
	line-height: 3;
	font-weight: bold;
}

.ticketing * {
/* 	border: 0.1px solid yellow; */
}

.ticketing ul {
	list-style: none;
}

.ticketing .ticketTable {
	background: #fff;
	margin: 0 auto;
	width: 100%;
}

.ticketing .stepGuideContainer,
.ticketing .choiseCinemaContainer,
.ticketing .choiseMovieContainer,
.ticketing .choiseDateContainer {
	overflow: hidden;
}

.movieOrderColumn {
	width: 100%;
}

.ticketing .stepGuideContainer .nowStep {
	background: #FF243E;
}

.ticketing .stepGuideContainer > div {
	height: 25%;
	table-layout: auto;
	position: relative;
}

.ticketing .stepGuideContainer > div > div {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	font-weight: bold;
}

.ticketing .stepGuideContainer * {
 	text-align: center;
}


.ticketing .choiseMovieContainer .searchNav > div,
.ticketing .choiseMovieContainer .searchNav .viewType li {
	display: inline-block;
}

.ticketing .cinemaSection {
	height: 100%;
}

.ticketing .cinemaSection > * {
	display: inline-block;
}

.ticketing .cinemaSection > .choiseLocal,
.ticketing .cinemaSection > .cinemaList {
	height: 100%;
	overflow-y: auto;
}

.ticketing .sectionTitle {
	background: black;
	color: white;
	text-align: center;
}
.ticketing .sectionTitle * {
	color: inherit;
}

.ticketing input,
.ticketing select,
.ticketing .timelineNav * {
	text-align: center;
}

.ticketing .searchNav .viewType {
	font-size: 1.3em;
}

.ticketing .searchNav .viewType .row {
	width: 100%;
	height: 100%;
	padding-right: 0.5em;
}

.xyCenterContainer {
	width: 100%;
	height: 100%;
	position: relative;
}

.xyCenterContainer > .centerContent {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

</style>

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
						<div>
							<div>
								02<br>
								인원/좌석
							</div>
						</div>
						<div>
							<div>
								03<br>
								결제
							</div>
						</div>
						<div>
							<div>
								04<br>
								결제완료
							</div>
						</div>
					</div>
					<div class="col choiseCinemaContainer">
						<div class="sectionTitle">영화관</div>
						<div class="row no-gutters cinemaSection">
							<ul class="col choiseLocal">
								<li>내 지역 영화관<i class="bi bi-check-lg"></i></li>
								<li>서울</li>
								<li>울산</li>
							</ul>
							<ul class="col cinemaList">
								<li>울산 삼산점<i class="bi bi-check-lg"></i></li>
								<li>울산 성남점</li>
								<li>울산 중구점</li>
							</ul>
						</div>
					</div>
					<div class="col choiseMovieContainer">
						<div class="sectionTitle">영화 선택</div>
						<div class="row no-gutters searchNav">
							<div class="col-8 searchSelect">
								<select class="selectpicker movieOrderColumn">
									<option>예매순</option>
									<option>평점순</option>
								</select>
							</div>
							<div class="col-4 viewType">
								<ul class="row no-gutters">
									<li class="col xyCenterContainer">
										<a class="centerContent">
											<i class="bi bi-list"></i>
										</a>
									</li>
									<li class="col xyCenterContainer">
										<a class="centerContent">
											<i class="bi bi-grid-fill"></i>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="movieList">
							<ul>
								<li>
									<h5>
										<strong class="yearUseMark">15</strong>
										<span>영화이름</span>
										<i class="bi bi-check-lg"></i>
									</h5>
								</li>
							</ul>
						</div>
					</div>
					<div class="col choiseDateContainer">
						<div class="sectionTitle">${fn:substring(serverTime, 0, 10)} (오늘)</div>
						<div class="dateNav">
							<div class="choiseDate" data-ride="carousel">
								<div class="input-group">
									<input type="number" class="form-control dateMI" min="${fn:substring(serverTime,0,4)}" value="${fn:substring(serverTime,0,4)}">
									<input type="number" class="form-control dateDD" value="${fn:substring(serverTime,5,7)}" min="1" max="12">
									<input type="number" class="form-control dateWeekDay" value="${fn:substring(serverTime,8,10)}" min="1" max="31">
								</div>
								<span class="carousel-control-prev btnDatePrev" role="button" data-slide="prev">
									<i class="bi bi-chevron-left"></i>
								</span>
								<span class="carousel-control-next btnDateNext" role="button" data-slide="next">
									<i class="bi bi-chevron-right"></i>
								</span>
							</div>
							<div class="timelineNav">
								<ul class="row no-gutters">
									<c:forEach items="${roomTypeList}" var="roomTypes">
										<li class="col">${roomTypes.room_type_name}</li>
									</c:forEach>
								</ul>
							</div>
						</div>
						<div>
							<div class="notListInfo">
								<div><i class="bi bi-film"></i></div>
								<div>조회 가능한 상영시간이 없습니다.<br>조건을 변경해주세요.</div>
							</div>
							<ul>
								<li></li>
							</ul>
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