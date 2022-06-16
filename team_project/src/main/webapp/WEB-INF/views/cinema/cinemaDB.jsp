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
	
	table li {
		margin: 1em 0 1.5em 0;
	}
	
	.modal-content table {
		margin: 0 auto 0 2em;
		width: 95%;
	}
	
</style>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	$(function(){
		
		var btnEdit = "<a class='btn btn-sm btn-info' href='#modal-container-339736' role='button' class='btn' data-toggle='modal'>수정</a>";
		var btnNewCreate = "<li><a class='btn btn-primary btnNewInsert' href='#modal-container-339736' role='button' class='btn' data-toggle='modal'>등록</a></li>";
		
		var cinemaListViewer = $(".cinemaListViewer");
		var cinemaRoomListViewer = $(".cinemaRoomListViewer");
		var roomTimelineListViewer = $(".roomTimelineListViewer");
		
		/* 영화관 도시명 select선택 시 이벤트 */
		$("select[name=cinema_address]").change(function(){
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
			$(".cinemaListViewer").find("a").css("background","");
			$(this).css("background","skyblue").css("boarder","skyblue");
			$(".cinemaRoomListViewer").text("");
			$(".roomTimelineListViewer").text("");
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
				$("tbody").find("td").eq(1).find(".btnNewInsert").attr("data-cinema_no", cinema_no);
			});
		});
		
		/* 조회된 상영관 리스트 선택 시 */
		$(".cinemaRoomListViewer").on("click", "*[data-cinema_room_no]", function(){
			$(".cinemaRoomListViewer").find("a").css("background","");
			$(this).css("background","skyblue").css("boarder","skyblue");
			$(".roomTimelineListViewer").text("");
			$(".roomTimelineListViewer").prepend(btnNewCreate);
			var room_no = $(this).attr("data-cinema_room_no");
			var cinema_no = $(this).parent("li").nextAll().last().find(".btnNewInsert").attr("data-cinema_no");
			console.log(cinema_no);
			var url = "/mkcinema/getRoomTimelineList";
			var sData = {
					"room_no" : room_no
			};
			
			$.get(url, sData, function(rData){
				$.each(rData, function(){
					var date = this.movie_begin_date.substr(11,5);
					var insertHtml = "<li><a class='btn btn-sm btn-light' data-timeline_no=" + this.timeline_no + ">" + date + " - " + this.movie_name + "</a class='btn btn-info'>" + btnEdit + "</li>";
					$(".roomTimelineListViewer").prepend(insertHtml);
					
				});
				$("tbody").find("td").eq(2).find(".btnNewInsert").attr("data-room_no", room_no);
				$("tbody").find("td").eq(2).find(".btnNewInsert").attr("data-cinema_no", cinema_no);
				
			});
		});
		
		/* 수정 버튼 클릭 시 모달창 띄우기 */
		$(".cinemaNavTable").on("click", "button, a", function(e){
			console.log("who:", $(this));
			
			var btnText = $(this).text();
			var getClickNo = $(this).prev();
			var cinema_no = getClickNo.attr("data-cinema_no");
			var room_no = getClickNo.attr("data-cinema_room_no");
			var timeline_no = getClickNo.attr("data-timeline_no");
			
			$(".modal-body").text("");
			
			switch (true) {
			
			// 영화관 목록 리스트 수정 버튼 클릭 시
			case cinema_no != null:
				$("#btnModalSuccess").removeAttr("data-cinema_no");
				$("#btnModalSuccess").attr("data-cinema_no", cinema_no);
				var url = "/mkcinema/getCinema";
				var sData = {
						"cinema_no" : cinema_no
				};
				$.get(url, sData, function(rData){
					$(".modal-title").text(rData.cinema_name + " 정보 " + btnText);
					
					var insertHtml = `
						<input type='hidden' name='cinema_no' value='` + rData.cinema_no + `' />
						<div><label>영화관 이름 : <input type='text' name='cinema_name' value='` + rData.cinema_name + `' /></label></div>
						<div><label>영화관 주소 [나머지 주소] : <input type='text' name='cinema_address' value='` + rData.cinema_address + `' /></label><button class='btn btn-sm btn-success' id='btnCinemaAddressSearch' type='button'>검색</button></div>
						<div>
							영업 상태 
							<select name='cinema_status'>
								<option value='1'`;
					if (rData.cinema_status == 1) {
						insertHtml += "selected";
					}
						insertHtml += `
								>영업중</option>
								<option value='0'`;
					if (rData.cinema_status == 0){
						insertHtml += "selected";
					}
						insertHtml += `
								>영업 준비중</option>
								<option value=''`;
					if (rData.cinema_status == null){
						insertHtml += "selected";
					}
								
						insertHtml += `>폐점</option>
							</select>
						</div>
					`;
					
					$(".modal-body").append(insertHtml);
				});
				break;
				
			// 상영관 목록 리스트 수정 버튼 클릭 시
			case room_no != null:
				$("#btnModalSuccess").removeAttr("data-cinema_no").removeAttr("data-room_no");
				$("#btnModalSuccess").attr("data-room_no", room_no);
				var url = "/mkcinema/getCinemaRoom";
				var sData = {
						"room_no" : room_no
				};
				$.get(url, sData, function(rData){
					console.log(rData.room_no);
					$(".modal-title").text(rData.room_name + " 정보 " + btnText);
					var roomBeginTime = rData.room_begin_time.substr(11,5);
					var roomFinishTime = rData.room_finish_time.substr(11,5);

					var insertHtml = `
						<input type='hidden' name='room_no' value='` + rData.room_no + `' />
						<div><label>상영관 이름 : <input type='text' name='room_name' value='` + rData.room_name + `' /></label></div>
						<div><label>상영관 위치 : <input type='text' name='room_floor' value='` + rData.room_floor + `' /></label></div>
						<div><label>운영 시작 시간 : <input type='time' name='room_begin_time' value='` + roomBeginTime + `' /></label></div>
						<div><label>운영 종료 시간 : <input type='time' name='room_finish_time' value='` + roomFinishTime + `' /></label></div>
						<div id="btnRoomSeat">
							<div class="card">
								<div class="card-header">
									 <a class="card-link" data-toggle="collapse" data-parent="#btnRoomSeat" href="#seatViewer">상영관 좌석 보기</a>
								</div>
								<div id="seatViewer" class="collapse show">
									<div class="card-body">
										Anim pariatur cliche...
									</div>
								</div>
							</div>
						</div>
					`;
					$(".modal-body").append(insertHtml);
					
					var url = "/mkcinema/getSeatList";
					var sData = {
							"room_no" : room_no
					}
					$.get(url, sData, function(rData){
						var arry = [];
						var attrx = [];
						console.log(attrx);
						$.each(rData, function(){
							arry.push(this.seat_y.charCodeAt());
							attrx.push(this.seat_x);
							console.log("seat_y",this.seat_y);
							console.log("seat_x",this.seat_x);
						});
						
						$(".card-body").text("");
						var startCodeNum = Math.min.apply(null, arry);
						var endCodeNum = Math.max.apply(null, arry);
						var spanCount = Math.max.apply(null, attrx);
						
						var seatTableHtml = `
							<table>
								<thead>
									<tr>
										<th colspan=` + (spanCount + 1) + `>스크린</th>
									</tr>`;
								
						for (var j = startCodeNum; j <= endCodeNum; j++) {
							var inputString = String.fromCharCode(j);
							seatTableHtml += "<tr><th>" + inputString + " - </th>";
							for (var i = 1; i <= spanCount; i++) {
								if (i == spanCount && j == startCodeNum){
									seatTableHtml += "<td><a href='#'>" + i + "</a></td>";
									seatTableHtml += "<td rowspan='" + (endCodeNum - startCodeNum + 1) + "'><a class='btn btn-sm btn-outline-info' id='addX' data-room_no=" + room_no + " > + </a></td>";
								} else {
									seatTableHtml += "<td><a href='#'>" + i + "</a></td>";
								}
							}
							seatTableHtml += "</tr>";
						}
							seatTableHtml += `
									<tr>
										<th colspan=` + (spanCount + 1) + `><a class='btn btn-sm btn-outline-info' id='addY' data-room_no=` + room_no + `> + </a></th>
									</tr>
								</thead>
							</table>
						`;
						$(".card-body").append(seatTableHtml);


					});
					
				});
				break;
				
			// 상영 스케줄 목록 수정 버튼 클릭 시
			case timeline_no != null:
				$("#btnModalSuccess").removeAttr("data-cinema_no").removeAttr("data-room_no").removeAttr("data-timeline_no");
				$("#btnModalSuccess").attr("data-timeline_no", timeline_no);
				var url = "/mkcinema/getTimeline";
				var sData = {
						"timeline_no" : timeline_no
				};
				$.get(url, sData, function(rData){
					console.log(rData);
					var roomTypeCode = rData.room_type_code;
					var roomBeginDate = rData.movie_begin_date.substr(0,10);
					var roomFinishDate = rData.movie_finish_date.substr(0,10);
					var roomBeginTime = rData.movie_begin_date.substr(11,5);
					var roomFinishTime = rData.movie_finish_date.substr(11,5);
					$(".modal-title").text(rData.room_name + " - " + roomBeginTime + " 스케줄 정보 " + btnText);
					$(".modal-body").append("<input type='hidden' name='timeline_no' value='" + rData.timeline_no + "' />");
					$(".modal-body").append("<input type='hidden' name='room_no' value='" + rData.room_no + "' />");
					$(".modal-body").append("<div><label>상영 영화 : <input type='text' name='movie_code' value='" + rData.movie_code + "' readonly /><input type='text' id='movie_name' class='form-control' list='datalistOptions' value='" + rData.movie_name + "' /><button type='button' id='btnMovieSearch'>검색</button></label></div>");
					$(".modal-body").append("<datalist id='datalistOptions'></datalist>");
					$("#movie_name").keydown(function(){
						var searchData = $(this).val();
						$.get("/mkcinema/searchMovie", {"movie_name" : searchData}, function(rData){
							$("#datalistOptions").text("");
							$.each(rData, function(){
								console.log(this.movie_name);
								$("#datalistOptions").append("<option value='" + this.movie_name + "'>");
							});
						});
						
					});
					$(".modal-body").append("<div><label>영화 타입 : <select name='room_type_code'></select></label></div>");
					$.get("/mkcinema/getRoomTypeCodeList",function(rData){
						console.log(rData);
						$.each(rData, function(){
							console.log(this.room_type_code);
							if(this.room_type_code == roomTypeCode){
								$("select[name=room_type_code]").append("<option value='" + this.room_type_code + "'" + " selected >" + this.room_type_name + "</option>");
							} else {
								$("select[name=room_type_code]").append("<option value='" + this.room_type_code + "'" + ">" + this.room_type_name + "</option>");
							}
						});
					});
					$(".modal-body").append("<div><label>영화 시작일 : <input type='date' name='movie_begin_date' value='" + roomBeginDate + "' /><input type='time' min='00:00' max='23:59' name='movie_begin_time' value='" + roomBeginTime + "' /></label></div>");
					$(".modal-body").append("<div><label>영화 종료일 : <input type='date' name='movie_finish_date' value='" + roomFinishDate + "' /><input type='time' min='00:00' max='23:59' name='movie_finish_time' value='" + roomFinishTime + "' /></label></div>");
				});
				$(".modal-title").text(timeline_no);
				break;
				
			case $(this).text() == '등록':
				var pindex = $(this).parents("td").index();
				var columnTitle = $(this).parents("tbody").prev("thead").find("th").eq(pindex).find("h5").text();
				
				$(".modal-title").text(columnTitle + " " + btnText + "하기");
				var createForm = $(".modal-body").parents("form");
				switch (columnTitle) {
				case "영화관":
					console.log("영화관");
					var inputHtml = `
						<div><label>영화관 이름 : <input type='text' name='cinema_name' /></label></div>
						<div><label>영화관 주소 : <input type='text' name='cinema_address' /><button class='btn btn-sm btn-success' id='btnCinemaAddressSearch' type='button'>검색</button></label></div>
						<div>
							<label>
							영업 상태 : 
								<select name='cinema_status'>
									<option value='1' selected >영업중</option>
									<option value=''>영업 준비중</option>
								</select>
							</label>
						</div>
					`;
					$(".modal-body").append(inputHtml);
					$("#btnModalSuccess").removeAttr("data-cinema_no").removeAttr("data-room_no").removeAttr("data-timeline_no");
					$("#btnModalSuccess").attr("data-createCinema", "true");
// 					createForm.submit();
					break;
				case "상영관":
					var cinema_no = $(this).attr("data-cinema_no");
					var inputHtml = `
						<div><label>상영관 이름 : <input type='text' name='room_name' /></label></div>
						<div><label>상영관 위치 : <input type='text' name='room_floor' /></label></div>
						<div><label>운영 시작 시간 : <input type='time' name='room_begin_time' /></label></div>
						<div><label>운영 종료 시간 : <input type='time' name='room_finish_time' /></label></div>
						<input type='hidden' name='room_status' value='1' />
						<input type='hidden' name='cinema_no' value='` + cinema_no + `' />
					`;
					$(".modal-body").append(inputHtml);
					$("#btnModalSuccess").removeAttr("data-cinema_no").removeAttr("data-room_no").removeAttr("data-timeline_no");
					$("#btnModalSuccess").attr("data-createRoom", "true");
					break;
				case "상영 스케줄":
					var room_no = $(this).attr("data-room_no");
					$(".modal-body").append("<input type='hidden' name='cinema_no' value='" + room_no + "' />");
					$(".modal-body").append("<input type='hidden' name='room_no' value='" + room_no + "' />");
					$(".modal-body").append("<div><label>상영 영화 : <input type='text' name='movie_code' readonly /><input type='text' id='movie_name' class='form-control' list='datalistOptions' value='' /><button type='button' id='btnMovieSearch'>검색</button></label></div>");
					$(".modal-body").append("<datalist id='datalistOptions'></datalist>");
					$("#movie_name").keyup(function(){
						var searchData = $(this).val();
						$.get("/mkcinema/searchMovie", {"movie_name" : searchData}, function(rData){
							$("#datalistOptions").text("");
							$.each(rData, function(){
								console.log(this.movie_name);
								$("#datalistOptions").append("<option value='" + this.movie_name + "'>");
							});
						});
						
					});
					$(".modal-body").append("<div><label>영화 타입 : <select name='room_type_code'></select></label></div>");
					$.get("/mkcinema/getRoomTypeCodeList",function(rData){
						console.log(rData);
						$.each(rData, function(){
							$("select[name=room_type_code]").append("<option value='" + this.room_type_code + "'" + ">" + this.room_type_name + "</option>");
						});
					});
					$(".modal-body").append("<div><label>영화 시작일 : <input type='datetime-local' name='movie_begin_date' /></label></div>");
					$(".modal-body").append("<div><label>영화 종료일 : <input type='datetime-local' name='movie_finish_date' /></label></div>");
					$("#btnModalSuccess").removeAttr("data-cinema_no").removeAttr("data-room_no").removeAttr("data-timeline_no");
					$("#btnModalSuccess").attr("data-createTimeline", "true");
					break;
				}
				break;
			};
			
		});
			
		/* 모달창 안에 버튼 */
		$(".modal").on("click", "button, a", function(){
			var btnId = $(this).attr("id");
			switch (btnId) {
			// 주소 검색버튼을 누르면
			case "btnCinemaAddressSearch":
				/* https://postcode.map.daum.net/guide#sample */
				new daum.Postcode({
		            oncomplete: function(data) { //선택시 입력값 세팅
		            	var cAddress = data.address + " ";
		                $("*[name=cinema_address]").val(cAddress + " "); // 주소 넣기
		                $("*[name=cinema_address]").focus();
		            }
		        }).open();
				break;
				
			case "btnMovieSearch":
				var movie_name = $(this).prev("input#movie_name").val();
				console.log("inputdata",movie_name);
				var url = "/mkcinema/searchMovie";
				var sData = {
						"movie_name" : movie_name
				}
				$.get(url, sData, function(rData){
					$.each(rData,function(){
						$(".modal input[name=movie_code]").val(this.movie_code);
						$(".modal input#movie_name").val(this.movie_name);
					});
				});
				break;
			case "btnModalSuccess":
				var form = $(this).parents("form");
				var cinema_no = $(this).attr("data-cinema_no");
				var room_no = $(this).attr("data-room_no");
				var timeline_no = $(this).attr("data-timeline_no");
				var createCinema = $(this).attr("data-createCinema");
				var createRoom = $(this).attr("data-createRoom");
				var createTimeline = $(this).attr("data-createTimeline");
				switch (true) {
				case cinema_no != null:
					form.attr("method", "get");
					form.attr("action", "/mkcinema/modifyCinema");
					form.submit();
					break;
				case room_no != null:
					form.attr("method", "get");
					form.attr("action", "/mkcinema/modifyCinemaRoom");
					form.submit();
					break;
				case timeline_no != null:
					form.attr("method", "get");
					form.attr("action", "/mkcinema/modifyTimeline");
					form.submit();
					break;
				case createCinema != null:
					form.attr("method", "get");
					form.attr("action", "/mkcinema/createCinema");
					form.submit();
					break;
				case createRoom != null:
					form.attr("method", "get");
					form.attr("action", "/mkcinema/createRoom");
					form.submit();
					break;
				case createTimeline != null:
					form.attr("method", "get");
					form.attr("action", "/mkcinema/createTimeline");
					form.submit();
					break;

				}
				break;
				
			case "addX":
				var room_no = $(this).attr("data-room_no");
				var seat_x = parseInt($(this).parent("td").prev().find("a").text()) + 1;
				var yNum = new Array();
				var arryChar = $(this).parent().parent().prev().nextAll("tr").children("th").not("th[colspan]");
				$.each(arryChar, function(){
					yNum.push($(this).text().substr(0,1));
				});
				console.log(yNum);
				var url = "/mkcinema/roomSeatAddX";
				var sData = {
					"room_no" : room_no,
					"seat_x" : seat_x,
					"yNum" : JSON.stringify(yNum)
				}
				$.get(url, sData, function(rData){
					if (rData == true){
						var targetColumn = $(".card-body > table").find("tr").not("tr:first-child").not("tr:last-child");
						console.log(targetColumn);
						$.each(targetColumn, function(){
							$(this).find("td").not("td[rowspan]").last().after("<td><a href='#'>" + seat_x + "</a></td>");
						});
					}
				});
				break;
				
			case "addY":
				var room_no = $(this).attr("data-room_no");
				var temp_y = $(this).parent().parent().prev().find("th").text().substr(0,1);
				var seat_y = String.fromCharCode(temp_y.charCodeAt() + 1);
				var arrayChar = $(this).parent().parent().prev().find("td").not("td[rowspan]");
				var xNum = new Array();
				
				if (arrayChar.text() == ""){
					seat_y = "A";
					xNum.push("1");
				}
				
				$.each(arrayChar, function(){
					xNum.push($(this).text());
				});
				console.log(xNum);
				console.log(seat_y);
				var url = "/mkcinema/roomSeatAddY";
				var sData = {
						"room_no" : room_no,
						"xNum" : JSON.stringify(xNum),
						"seat_y" : seat_y
				}
				$.get(url, sData, function(rData){
					if (rData == true){
						var targetColumn = $(".card-body > table").find("tr").not("tr:first-child").not("tr:last-child").last();
						console.log(targetColumn);
						var insertHtml = `
							<tr>
								<th>` + seat_y + ` - </th>`;
						for (var i = 0; i < xNum.length; i++) {
							insertHtml += `
								<td><a href='#'>` + xNum[i] + `</a></td>`;
						};
						insertHtml += `</tr>`;
						targetColumn.after(insertHtml);
					}
				});
				break;
			}
		});
		
		
	});
	
	
	var modifyCinemaResult = "${modifyCinemaResult}";
	var modifyCinemaRoomResult = "${modifyCinemaRoomResult}";
	var modifyTimelineResult = "${modifyTimelineResult}";
	
	if (modifyCinemaResult == "true"){
		alert("영화관 정보 수정이 완료되었습니다.");
	}
	
	if (modifyCinemaRoomResult == "true"){
		alert("상영관 정보 수정이 완료되었습니다.");
	}
	
	if (modifyTimelineResult == "true"){
		alert("상영 스케줄 정보 수정이 완료되었습니다.");
	}
	
	
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
				<tr class="cinemaNavTable">
					<td>
						<ul class="cinemaListViewer">
							<li style="color: white;">영화관 지역을 선택해주세요</li>
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
								 
								<button type="button" id="btnModalSuccess" class="btn btn-primary">
									완료
								</button> 
								<button type="button" class="btn btn-secondary" data-dismiss="modal">
									취소
								</button>
							</div>
						</div>
						
					</div>
					
				</div>
			</form>
		</div>
	</div>

<%@ include file="/WEB-INF/views/include/footer.jsp"%>