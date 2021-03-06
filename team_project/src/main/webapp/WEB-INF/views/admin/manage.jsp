<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<style>
body {
	background: #eeeeee;
	background-color: #eeeeee;
}

section.product {
	padding: 0;
}

.ma {
	border-top: 50px solid #eeeeee;
}
</style>
<!-- 샘플 레이아웃 데이터 -->
<!-- ChartJS -->
<script src="/resources/js/chart.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		var doughnutChart = document.getElementById('doughnutChart').getContext('2d');

		var myDoughnutChart = new Chart(doughnutChart, {
			type: 'doughnut',
			data: {
				datasets: [{
					data: ["${googleUserCount}", "${naverUserCount}", "${originUserCount}"],
					backgroundColor: ['#f56954', '#00a65a', '#3c8dbc']
				}],

				labels: [
					'구글',
					'네이버',
					'Mover'
				]
			},
			options: {
				responsive: true,
				maintainAspectRatio: false,
				legend : {
					position: 'bottom'
				},
				layout: {
					padding: {
						left: 20,
						right: 20,
						top: 20,
						bottom: 20
					}
				}
			}
		});			

		var barChart = document.getElementById('barChart').getContext('2d');
		var movie_genre = [];
		var movie_genre_count = [];
		$.ajax({
			type : "get",
			async : "true",
			url : "/admin/get_movie_genre_count",
			success : function(rData){
				console.log(rData);
				var movieGenreCount = JSON.parse(rData);
				console.log(movieGenreCount);
				$.each(movieGenreCount, function(i, v){
					movie_genre_count.push(v.count);
					movie_genre.push(v.movie_genre);
				});
				console.log(movie_genre);
				console.log(movie_genre_count);
				openBarChart(movie_genre, movie_genre_count)
			}
		});

		function openBarChart(movie_genre, movie_genre_count){
			var myBarChart = new Chart(barChart, {
				type: 'bar',
				data: {
					labels: movie_genre,
					datasets : [{
						label: "영화 수",
						backgroundColor: 'rgb(23, 125, 255)',
						borderColor: 'rgb(23, 125, 255)',
						data: movie_genre_count,
					}],
				},
				options: {
					responsive: true,
					maintainAspectRatio: false,
					scales: {
						yAxes: [{
							ticks: {
								beginAtZero:true
							}
						}]
					},
				}
			});
		}
	});
</script>

<div class="ma">

	<div class="row" style="background-color: #eeeeee">
		<div class="col-md-1"></div>
		<!-- 유수연 메뉴 목록  -->
		<div class="col-md-2">
			<div class="menu">
				<%-- <c:if test="">
								로그인 계정이 관리자 계정일때 관리자 메뉴 보이도록
	    			</c:if> --%>
				<jsp:include page="/WEB-INF/views/admin/manage_menu.jsp" />
			</div>
		</div>
		<!-- 유수연 상세내용  -->
		<div class="col-md-7">
			<!-- 유수연 각 페이지의 내용이 여기 뜨도록 해주세요 -->
			<br>
			<h2>관리자 페이지 메인</h2>
			<br>
			<div class="row">
				<!-- 총 유저수 차트 -->
				<div class="col-md-6">
					<div class="card card-danger  mb-4" style="width:80%">
						<div class="card-header">
							<h3 class="card-title"><i class="bi bi-person mr-3"></i>가입한 유저 수: ${totalUserCount}</h3>
						</div>
						<div class="card-body">
							<canvas id="doughnutChart"
								style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;">
							</canvas>
						</div>
					</div>
				</div>
				<!-- 총 유저수 차트 끝 -->
				
				<!-- 방문자 수 부분 -->
				<div class="col-md-6">
					<h3 class="mb-5">
						<i class="bi bi-people br-3 bg-warning" style="font-size:40px;padding:8px 15px;border-radius:10px;"></i>
						이번 달 방문자 수 : ${monthVisitorCount}
					</h3>
					<h3 class="mb-5">
						<i class="bi bi-people br-3 bg-warning" style="font-size:40px;padding:8px 15px;border-radius:10px;"></i>
						 오늘 방문자 수 : ${dailyVisitorCount}
					</h3>
					<h3 class="mb-5">
						<i class="bi bi-cart br-3 bg-info" style="font-size:40px;padding:8px 15px;border-radius:10px;"></i>
						총 매출 : ${totalTicketPrice}P
					</h3>
				</div>
				<!-- 방문자 수 부분 끝-->
			</div>
			
			<!-- 등록된 영화 수 차트 -->
			<div class="card card-success mb-4">
				<div class="card-header">
					<h3 class="card-title"><i class="bi bi-film mr-3"></i>등록된 영화 수 : ${totalMovieCount}</h3>
					<div class="card-tools">
					</div>
				</div>
				<div class="card-body">
					<div class="chart">
						<canvas id="barChart"
							style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
					</div>
				</div>
				<!-- /.card-body -->
				
			</div>
			<!-- 등록된 영화 수 차트 끝-->
			<!-- 유수연 각 페이지의 내용이 여기 뜨도록 해주세요 -->
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-1"></div>
	</div>
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>