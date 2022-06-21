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
		console.log("1");
		$.ajax({
			type : "get",
			async : "true",
			url : "/admin/get_movie_genre_count",
			success : function(rData){
				var movieGenreCount = JSON.parse(rData);
				console.log("3");
				$.each(movieGenreCount, function(i, v){
					movie_genre_count.push(v.count);
					movie_genre.push(v.movie_genre);
				});
				console.log(movie_genre);
				console.log(movie_genre_count);
				openBarChart(movie_genre, movie_genre_count)
			}
		});
		console.log("2");

		function openBarChart(movie_genre, movie_genre_count){
			var myBarChart = new Chart(barChart, {
				type: 'bar',
				data: {
					labels: movie_genre,
					datasets : [{
						label: "Sales",
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
			<h2>관리자 페이지 접속</h2>
			<!-- /.card -->
			<!-- DONUT CHART -->
			<div class="card card-danger" style="width:40%">
				<div class="card-header">
					<h3 class="card-title"><i class="bi bi-person mr-3"></i>총 유저 수 : ${totalUserCount}</h3>
				</div>
				<div class="card-body">
					<canvas id="doughnutChart"
						style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;">
					</canvas>
				</div>
				<!-- /.card-body -->
			</div>
			<!-- /.card -->
			<!-- BAR CHART -->
			<div class="card card-success">
				<div class="card-header">
					<h3 class="card-title">총 영화수 : ${totalMovieCount}</h3>
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
			<!-- 유수연 각 페이지의 내용이 여기 뜨도록 해주세요 -->
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-1"></div>
	</div>
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>