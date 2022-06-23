<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/include/header.jsp" %>
<style>



.ticketing * {
	/* 드래그 방지 */
	user-select: none;
}

.ticketing > * {
/* 	box-sizing: content-box; */
}

input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}

.ticketing .ticketTable li:not(.choise),
.ticketing .ticketTable li.roomInfo,
.ticketing .roomTypeNav .col {
 	opacity: 0.5; 
	cursor: pointer;
}

.ticketing .ticketTable .timelineList li {
	opacity: 1;
}

.ticketing .ticketTable .timelineList li li li {
	opacity: 0.5;
}

.ticketing .ticketTable .timelineList li li li.choise {
	opacity: 1;
}

.ticketing li {
	cursor: pointer;
}

.ticketing li.choise {
	cursor: default !important;
}

.ticketing .ticketTable .choise {
	opacity: 1;
	font-weight: bold;
	color: black;
}

.ticketing .choise * {
	font-weight: inherit;
}

.ticketing .viewType li,
.ticketing .roomTypeNav li {
	color: #BBB;
}

.ticketing .ticketTable {
	min-width: 930px;
	overflow: hidden;
	height: 50em;
	border-radius: 0.2em;
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
	position: relative;
	overflow: hidden;
}

.ticketing .choiseDate input.dateYYYY {
	min-width: 6.5em;
}

input.form-control.dateMM, input.form-control.dateDD {
	max-width: 5.8em;
}

.ticketing .cinemaSection > ul,
.ticketing .movieList,
.ticketing .dateNav,
.ticketing .notListInfo,
.ticketing .searchNav,
.ticketing .timelineList {
	padding: 0 0.8em;
}

.ticketing .movieList {
	margin-top: -0.6em;
}

.ticketing .searchNav {
	padding-right: 0.6em;
}

.ticketing .nice-select .list {
	width: 100%;
}

.ticketing .notListInfo {
	width: 100%;
	font-size: 0.8em;
	color: gray;
	position: absolute;
	top: 50%;
}

.ticketing .notListInfo > *:first-child {
	padding-bottom: 0.2em;
}

.ticketing .cinemaSection > ul:first-child,
.ticketing .choiseMovieContainer {
	background: #EFEFEF;
}

.ticketing .cinemaSection li,
.ticketing .searchNav,
.ticketing .choiseDate,
.ticketing .dateNav,
.ticketing .movieList li {
	margin: 0.6em 0;
}

.ticketing .movieList .movieName,
.ticketing .movieList .yearUseMark {
	font-size: 1em;
}

.ticketing .movieList .yearUseMark {
	position: relative;
	display: inline-block;
	background: gray;
	border-radius: 50%;
	color: white;
	padding: 0.1em;
	width: 1.5em;
	height: 1.5em;
}


.ticketing .movieList .yearUseMark.ym00 {
	background: green;
}

.ticketing .movieList .yearUseMark.ym00::after {
	content: "전체";
	position: absolute;
	left: 50%;
	top: 50%;
	width: 100%;
	text-align: center;
	transform: translate(-50%, -50%);
	font-size: 0.6em;
}

.ticketing .movieList .yearUseMark.ym12 {
	background: skyblue;
}

.ticketing .movieList .yearUseMark.ym12::after {
	content: "12";
	position: absolute;
	left: 50%;
	top: 50%;
	width: 100%;
	text-align: center;
	transform: translate(-50%, -50%);
	font-size: 0.8em;
}

.ticketing .movieList .yearUseMark.ym15 {
	background: orange;
}

.ticketing .movieList .yearUseMark.ym15::after {
	content: "15";
	position: absolute;
	left: 50%;
	top: 50%;
	width: 100%;
	text-align: center;
	transform: translate(-50%, -50%);
	font-size: 0.8em;
}

.ticketing .movieList .yearUseMark.ym19 {
	background: #FF243E;
}

.ticketing .movieList .yearUseMark.ym19::after {
	content: "청불";
	position: absolute;
	left: 50%;
	top: 50%;
	width: 100%;
	text-align: center;
	transform: translate(-50%, -50%);
	font-size: 0.6em;
}

.ticketing .movieList li {
 	padding-top: 0.5em;
	position: relative;
}

.ticketing .movieList .stackViewer li {
 	padding-top: 0;
}

.ticketing .movieList .stackViewer .movieName {
	top: 0.65em;
}

.ticketing .movieList li:first-child {
/* 	margin-top: -0.5em; */
}

.ticketing .movieList .gridViewer li {
	margin-bottom: 1em;
}

.ticketing .movieList .movieName {
	font-size: 0.9em;
	position: absolute;
	top: 1.2em;
	padding-left: 0.5em;
    white-space: nowrap;
}

.ticketing .movieList .stackViewer,
.ticketing .movieList .gridViewer {
	overflow-y: auto;
	overflow-x: hidden;
	height: 42.8em;
}

.ticketing .roomTypeNav li {
	white-space: nowrap;
}

.ticketing .timelineList {
	margin-top: -0.5em;
	padding-top: 1em;
	overflow-y: auto;
	height: 41em;
}

.ticketing .movieList .stackViewer .movieName {
	text-overflow: ellipsis;
	overflow: hidden;
	width: 80%;
}

.ticketing .movieList .gridViewer .movieName {
	text-overflow: ellipsis;
	overflow: hidden;
	width: 55%;
}

.ticketing .movieList h5 {
	padding-top: 0.4em;
}

.ticketing .movieList .movieInfo ul li {
	line-height: 0.7;
	display: block;
}

.ticketing .movieList .movieInfo ul li:before {
	content: "- ";
}

.ticketing .cinemaSection li {
	position: relative;
}

.ticketing .cinemaSection li > i,
.ticketing .movieList i {
	position: absolute;
	right: 0;
	top: 50%;
 	transform: translateY(-50%); 
}

.ticketing .searchNav,
.ticketing .dateNav {
	padding-bottom: 0.6em;
	border-bottom: 0.1px solid #ddd;
}

.ticketing .choise i.choise {
	display: inherit;
}

.ticketing i.choise {
	display: none;
}

.ticketing .ticketTable .stepGuideContainer > div:nth-child(n + 2):nth-child(-n + 4) {
	border-top: 0.1px solid #ddd;
}

.ticketing .ticketTable div:nth-child(n + 2):nth-child(-n + 3) .sectionTitle {
	border-right: 0.1px solid #3f3f3f;
}

.ticketing .ticketTable div .sectionTitle:last-child {
	border-right: 5px solid black;
}


.ticketing .roomTypeNav li {
	font-size: 0.9em;
	margin-right: 0.5em;
}

.ticketing .roomTypeNav li:last-child {
	margin: 0;
}

.ticketing .movieOrderColumn {
	width: 100%;
}

.ticketing .stepGuideContainer {
	padding: 0;
	font-weight: bold;
	font-size: 0.8em;
}

.ticketing .stepGuideContainer .nowStep {
	background: #FF243E;
	color: white;
}

.ticketing .stepGuideContainer > div {
	height: 25%;
	table-layout: auto;
	position: relative;
}

.ticketing .stepGuideContainer > div > div {
	position: absolute;
	width: 100%;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
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

.ticketing .cinemaSection .choiseLocal,
.ticketing .cinemaSection .cinemaList {
	height: 47em;
	overflow-y: auto;
	overflow-x: hidden;
}

.ticketing .sectionTitle {
	height: 3em;
	line-height: 3;
	font-weight: bold;
	font-size: 1.1em;
	background: black;
	color: white;
	text-align: center;
}

.ticketing .sectionTitle * {
	color: inherit;
}

.ticketing input,
.ticketing select,
.ticketing .roomTypeNav *,
.ticketing .stepGuideContainer * {
	text-align: center;
}

.ticketing .searchNav .viewType {
	font-size: 1.3em;
}

.ticketing .searchNav .viewType .row {
	width: 100%;
	height: 100%;
}

.ticketing .movieList img {
	height: 6em;
	width: 4.5em;
	border-radius: 0.3em;
	float: left;
	margin-right: 0.8em;
}

.ticketing .movieInfo {
	pointer-events: none;
	margin-top: 0.8em;
	font-size: 0.7em;
}

.ticketing .movieList .stackViewer .moviePoster,
.ticketing .movieList .stackViewer .movieInfo {
	display: none;
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

.ticketing .roomListWrapper .typeList > li:first-child {
/* 	margin-top: 1em; */
}

.ticketing .roomListWrapper .typeList .room_type_name {
	margin-bottom: 1em;
	clear: both;
}

.ticketing .roomListWrapper .typeList .cinemaRoomList {
	overflow: hidden;
	margin-bottom: 1em;
}

.ticketing .roomListWrapper .typeList .cinemaRoomList > .roomInfo {
	position: relative;
	width: 7em;
	height: 3.4em;
	padding: 0.3em 0.4em;
	display: inline-block;
	border: 1px solid #aaa;
	font-size: 0.9em;
	border-radius: 0.5em;
	float: left;
	margin-right: 0.5em;
	margin-bottom: 0.5em;
	background: #eee;
}

.ticketing .roomListWrapper .typeList .cinemaRoomList > .roomInfo strong {
	display: block;
	margin-top:0.1em;
	font-size: 0.9rem;
	text-align: center;
}

.ticketing .roomListWrapper .typeList .cinemaRoomList > .roomInfo div {
	position: absolute;
	bottom: 0.5em;
	font-size: 0.6em;
	display: inline-block;
}

.ticketing .roomListWrapper .typeList .cinemaRoomList > .roomInfo div:first-of-type {
	left: 1.1em;
}

.ticketing .roomListWrapper .typeList .cinemaRoomList > .roomInfo div:last-of-type {
	right: 1em;
}

.ticketing .roomListWrapper .typeList > .typeContainer {
	height: auto;
	clear: both;
}

.ticketing .roomListWrapper {
	pointer-events: none;
}

.ticketing .roomInfo {
	pointer-events: auto;
}


</style>

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
										<img class="moviePoster" alt="${movieVo.movie_name}" src="/movie/displayImage?filename=${movieVo.movie_image_name}" onerror="this.src='/resources/images/no_image.jpg'" onclick="location.href='http://localhost/movie/movieInfo?movie_code=${movieVo.movie_code}'">
										<h5>
											<strong class="yearUseMark 
											<c:choose>
												<c:when test="${fn:substring(movieVo.movie_audits, 0, 2) == '전체'}">
													ym00
												</c:when>
												<c:when test="${fn:substring(movieVo.movie_audits, 0, 2) == '12'}">
													ym12
												</c:when>
												<c:when test="${fn:substring(movieVo.movie_audits, 0, 2) == '15'}">
													ym15
												</c:when>
												<c:when test="${movieVo.movie_audits == '청소년관람불가'}">
													ym19
												</c:when>
											</c:choose>
											"></strong>
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
										<li class="col choise">전체</li>
									<c:forEach items="${roomTypeList}" var="roomTypes">
										<li data-room_type_code="${roomTypes.room_type_code}" class="col">${roomTypes.room_type_name}</li>
									</c:forEach>
								</ul>
							</div>
						</div>
						<div class="timelineList">
							<div class="notListInfo" style="display: none;">
								<div class="display-4 text-center"><i class="bi bi-film"></i></div>
								<div class="text-center">조회 가능한 상영시간이 없습니다.<br>조건을 변경해주세요.</div>
							</div>
							<ul>
								<c:forEach begin="0" step="1" end="10">
									<li class="roomListWrapper">
										<ul class="typeList">
											<li class="typeContainer">
												<h6 class="room_type_name">상영관 타입</h6>
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