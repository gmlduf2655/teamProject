<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/views/include/header.jsp" %>

<link rel="stylesheet" href="/resources/css/ticketing.css" type="text/css">

<script type="text/javascript" src="/resources/js/ticketing.js"></script>

<style>
.viewCount{
	float: left;
	margin-top: 30px;
	margin-left: 20px;
}
</style>
<div class="ticketing">
	<div class="container">
		<div class="row justify-content-md-center">
			<div class="col-lg-12">
				<div class="row no-gutters ticketTable">
					<div class="col-1 stepGuideContainer">
						<div class="closeStep">
							<div>
								01<br>
								상영시간
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
					
					<div class="col choiseMovieContainer" style="background-color: black;">
						<div class="sectionTitle">인원/좌석 선택</div>
						
							<div class="row" style="background-color: white; height: 100px;">
								<!-- 영화 보이기, 인원 드롭다운 -->
							<div class="col-md-4" style="float: left;">
								<%-- <img alt="" src="/movie/displayImage?filename=${movieVo.movie_image_name}"> --%>
								<img alt="" src="/movie/displayImage?filename=//192.168.0.67/moverattach/54cc7b7a-9861-4b52-a011-2e3137b3c569_범죄도시2.jpg"
									style="width: 50px; margin-left: 40px; margin-top: 15px;">
								<span>범죄도시</span>
								<span></span>
							</div>
							<!-- 드롭다운 -->
							<div class="col-md-8" >
							<div class="dropdown viewCount" align="center">
								<button class="btn dropdown-toggle" type="button"
									id="dropdownMenuButton" data-toggle="dropdown">성인
								</button>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item disabled" href="#">인원</a> <a
										class="dropdown-item" href="#">1</a> <a
										class="dropdown-item" href="#">2</a>
								</div>
							</div>
							<div class="dropdown viewCount" align="center" >
								<button class="btn dropdown-toggle" type="button"
									id="dropdownMenuButton" data-toggle="dropdown">청소년
								</button>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item disabled" href="#">인원</a> <a
										class="dropdown-item" href="#">1</a> <a
										class="dropdown-item" href="#">2</a>
								</div>
							</div>
							<div class="dropdown viewCount" align="center" >
								<button class="btn dropdown-toggle" type="button"
									id="dropdownMenuButton" data-toggle="dropdown">시니어
								</button>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item disabled" href="#">인원</a> <a
										class="dropdown-item" href="#">1</a> <a
										class="dropdown-item" href="#">2</a>
								</div>
							</div>
							<div class="dropdown viewCount" align="center">
								<button class="btn dropdown-toggle" type="button"
									id="dropdownMenuButton" data-toggle="dropdown">장애인
								</button>
								<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
									<a class="dropdown-item disabled" href="#">인원</a> <a
										class="dropdown-item" href="#">1</a> <a
										class="dropdown-item" href="#">2</a>
								</div>
							</div>
							</div>
							<!-- 드롭다운 -->
						</div><br>
							<!-- 스크린 좌석 선택 -->
							<div align="center" style="color: white;"> 인원을 선택하세요
								<div style="height: 25px; background-color: gray; margin-top: 10px; width: 95%;">
									S C R E E N
								</div>
								<div>
									<!-- 좌석 안내도 -->
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