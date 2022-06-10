<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
	table {
		table-layout: fixed;
	}
	
	table * {
		text-align: center;
	}
	
	table thead tr {
		border: 0;
	}

	table th h5 {
		color: white;
	}
	
	select {
		color: red;
	}
	
	table li {
		list-style: none;
	}
	
	table a {
		color: white;
	}
	
	table li {
		margin: 1em 0 1.5em 0;
	}
	
</style>
<script type="text/javascript">
	$(function(){
		$("select[name=cinema_address]").change(function(){
			var btnNewCreate = "<li><a class='btn btn-primary'>+</a></li>";
			$(".cinemaListViewer").text("");
			$(".cinemaRoomListViewer").text("");
			$(".roomTimelineViewer").text("");
			$(".cinemaListViewer").prepend(btnNewCreate);
			var cinema_address = $(this).val();
			var url = "/mkcinema/getCinemaList";
			var sData = {
					"cinema_address" : cinema_address
			};
			$.get(url, sData, function(rData){
				$.each(rData, function(){
					var insertHtml = "<li><a class='btn btn-sm btn-light' data-cinema_no=" + this.cinema_no + ">" + this.cinema_name + "</a><a class='btn btn-sm btn-info'>수정</a></li>";
					$(".cinemaListViewer").prepend(insertHtml);
				});
			});
		});
		
		$(".cinemaListViewer").on("click", "*[data-cinema_no]", function(){
			var btnNewCreate = "<li><a class='btn btn-primary'>+</a></li>";
			$(".cinemaRoomListViewer").text("");
			$(".roomTimelineViewer").text("");
			$(".cinemaRoomListViewer").prepend(btnNewCreate);
			var cinema_no = $(this).attr("data-cinema_no");
			var url = "/mkcinema/getCinemaRoomList"
			var sData = {
					"cinema_no" : cinema_no
			}
			$.get(url, sData, function(rData){
				$.each(rData, function(){
					var insertHtml = "<li><a class='btn btn-sm btn-light' data-cinema_room_no=" + this.room_no + ">" + this.room_name + "</a class='btn btn-info'><a class='btn btn-sm btn-info'>수정</a></li>";
					$(".cinemaRoomListViewer").prepend(insertHtml);
				});
			});
		});
		
		$(".cinemaRoomListViewer").on("click", "*[data-cinema_room_no]", function(){
			var btnNewCreate = "<li><a class='btn btn-primary'>+</a></li>";
			$(".roomTimelineViewer").text("");
			$(".roomTimelineViewer").prepend(btnNewCreate);
			var room_no = $(this).attr("data-cinema_room_no");
			var url = "/mkcinema/getRoomTimelineList";
			var sData = {
					"room_no" : room_no
			};
			$.get(url, sData, function(rData){
				console.log(rData);
				$.each(rData, function(){
					var insertHtml = "<li><a class='btn btn-sm btn-light' data-timeline_no=" + this.timeline_no + ">" + this.movie_begin_date + " - " + this.movie_name + "</a class='btn btn-info'><a class='btn btn-sm btn-info'>수정</a></li>";
					$(".roomTimelineViewer").prepend(insertHtml);
				});
			});
		});
	});
</script>
<div class="row">
	<div class="col-lg-2"></div>
	<div class="col-lg-8">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>
						<h5>영화관</h5>
						<select name="cinema_address">
							<option>지역 선택</option>
							<option value="울산">울산</option>
							<option value="서울">서울</option>
							<option value="부산">부산</option>
						</select>
					</th>
					<th>
						<h5>상영관</h5>
					</th>
					<th>
						<h5>상영 스케줄</h5>
					</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>
						<ul class="cinemaListViewer">
							<li><a class="btn btn-primary" href="#">+</a></li>
						</ul>
					</td>
					<td>
						<ul class="cinemaRoomListViewer">
							<li><a class="btn btn-primary" href="#">+</a></li>
						</ul>
					</td>
					<td>
						<ul class="roomTimelineViewer">
							<li><a class="btn btn-primary" href="#">+</a></li>
						</ul>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="col-lg-2"></div>
</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>