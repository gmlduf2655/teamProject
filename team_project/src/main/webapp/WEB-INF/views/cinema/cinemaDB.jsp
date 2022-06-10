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
		
		var btnEdit = "<a class='btn btn-sm btn-info' id='modal-339736' href='#modal-container-339736' role='button' class='btn' data-toggle='modal'>수정</a>";
		
		/* 영화관 도시명 select선택 시 이벤트 */
		$("select[name=cinema_address]").change(function(){
			var btnNewCreate = "<li><a class='btn btn-primary'>등록</a></li>";
			$(".cinemaListViewer").text("");
			$(".cinemaRoomListViewer").text("");
			$(".roomTimelineListViewer").text("");
			$(".cinemaListViewer").prepend(btnNewCreate);
			var cinema_address = $(this).val();
			var url = "/mkcinema/getCinemaList";
			var sData = {
					"cinema_address" : cinema_address
			};
			$.get(url, sData, function(rData){
				$.each(rData, function(){
					var insertHtml = "<li><a class='btn btn-sm btn-light' data-cinema_no=" + this.cinema_no + ">" + this.cinema_name + "</a>" + btnEdit + "</li>";
					$(".cinemaListViewer").prepend(insertHtml);
					useData = null;
				})
			})
		});
		
		/* 조회된 영화관 목록 선택 시 */
		$(".cinemaListViewer").on("click", "*[data-cinema_no]", function(){
			var btnNewCreate = "<li><a class='btn btn-primary'>등록</a></li>";
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
					var insertHtml = "<li><a class='btn btn-sm btn-light' data-cinema_room_no=" + this.room_no + ">" + this.room_name + "</a class='btn btn-info'>" + btnEdit + "</li>";
					$(".cinemaRoomListViewer").prepend(insertHtml);
				});
			});
		});
		
		/* 조회된 상영관 리스트 선택 시 */
		$(".cinemaRoomListViewer").on("click", "*[data-cinema_room_no]", function(){
			var btnNewCreate = "<li><a class='btn btn-primary'>등록</a></li>";
			$(".roomTimelineListViewer").text("");
			$(".roomTimelineListViewer").prepend(btnNewCreate);
			var room_no = $(this).attr("data-cinema_room_no");
			var url = "/mkcinema/getRoomTimelineList";
			var sData = {
					"room_no" : room_no
			};
			
			$.get(url, sData, function(rData){
				console.log(rData);
				$.each(rData, function(){
					var date = this.movie_begin_date.substr(11,5);
					var insertHtml = "<li><a class='btn btn-sm btn-light' data-timeline_no=" + this.timeline_no + ">" + date + " - " + this.movie_name + "</a class='btn btn-info'>" + btnEdit + "</li>";
					$(".roomTimelineListViewer").prepend(insertHtml);
				});
			});
		});
		
		/* 수정 버튼 클릭 시 모달창 띄우기 */
		$(".cinemaNavTavble").on("click", "*", function(){
			var btnText = $(this).text();
			var getClickNo = $(this).prev();
			var cinema_no = getClickNo.attr("data-cinema_no");
			var room_no = getClickNo.attr("data-cinema_room_no");
			var timeline_no = getClickNo.attr("data-timeline_no");
			
			$(".modal-body").text("");
			
			switch (true) {
			
			// 영화관 목록 리스트 수정 버튼 클릭 시
			case cinema_no != null:
				var url = "/mkcinema/getCinema";
				var sData = {
						"cinema_no" : cinema_no
				};
				$.get(url, sData, function(rData){
					console.log(rData);
					$(".modal-title").text(rData.cinema_name + " 정보 " + btnText);
					$(".modal-body").append("<div><label>영화관 이름 : <input type='text' name='cinema_name' value='" + rData.cinema_name + "' /></label></div>");
					$(".modal-body").append("<div><label>영화관 주소 : <input type='text' name='cinema_address' value='" + rData.cinema_address + "' /></label></div>");
					
					var cinemaStatus = "영업 상태";
					cinemaStatus += "<div>";
					cinemaStatus += "	<label><input type='radio' name='cinema_status' ";
					if (rData.cinema_status == null){
						cinemaStatus += "checked";
					}
					
					cinemaStatus += "> 영업준비중</label><br><label><input type='radio' name='cinema_status' value='1'";
					if (rData.cinema_status == 1){
						cinemaStatus +=  "checked";
					}
					
					cinemaStatus += "> 영업중</label></div>";
					
					$(".modal-body").append(cinemaStatus);
				});
				break;
				
			// 상영관 목록 리스트 수정 버튼 클릭 시
			case room_no != null:
				var url = "/mkcinema/getCinemaRoom";
				var sData = {
						"room_no" : room_no
				};
				$.get(url, sData, function(rData){
					console.log(rData);
					$(".modal-title").text(rData.room_name + " 정보 " + btnText);
				});
				break;
				
			// 상영 스케줄 목록 수정 버튼 클릭 시
			case timeline_no != null:
				var url = "";
				var sData = {
						"timeline_no" : timeline_no
				};
				$.get(url, sData, function(rData){
					
				});
				$(".modal-title").text(timeline_no);
				break;
			};
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
							<option selected disabled>지역 선택</option>
							<c:forEach items="${cinemaCityList}" var="cityName">
								<option value="${cityName}">${cityName}</option>
							</c:forEach>
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
				<tr class="cinemaNavTavble">
					<td>
						<ul class="cinemaListViewer">
							<li><a class="btn btn-primary" href="#">등록</a></li>
						</ul>
					</td>
					<td>
						<ul class="cinemaRoomListViewer">
						</ul>
					</td>
					<td>
						<ul class="roomTimelineListViewer">
						</ul>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="col-lg-2"></div>
</div>



<!-- 모달 -->
<div class="row">
		<div class="col-md-12">
			<form>
				<div class="modal fade" id="modal-container-339736" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
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
								 
								<button type="button" class="btn btn-primary">
									완료 버튼
								</button> 
								<button type="button" class="btn btn-secondary" data-dismiss="modal">
									취소 버튼
								</button>
							</div>
						</div>
						
					</div>
					
				</div>
			</form>
		</div>
	</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>