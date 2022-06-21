<%@page import="com.fasterxml.jackson.annotation.JsonInclude.Include"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<style>
	body {
		background:#eeeeee;
		background-color: #eeeeee;
	}section.product {
		padding : 0;
	}
	
	.ma {
		border-top: 50px solid #eeeeee;
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
	
	
	
	function getSeatTable(room_no) {
		var flag = true;
		var url = "/mkcinema/getSeatList";
		var sData = {
				"room_no" : room_no
		}
		$.get(url, sData, function(rData){
			console.log("rData", rData);
			var seatXList = new Array();
			var seatYList = new Array();
			
			$.each(rData, function(){
				seatXList.push(this.seat_x);
				seatYList.push(this.seat_y.charCodeAt());
			});
			
			var xMax = Math.max.apply(null, seatXList);
			var yMin = Math.min.apply(null, seatYList);
			var yMax = Math.max.apply(null, seatYList);
			console.log("xMax", xMax);
			var yCnt = (yMax - yMin) + 1;
			console.log("yCnt", yCnt);
			console.log(seatXList);
			console.log(seatYList);
			
			var seatTableHtml = `
				<table>
					<thead>
						<tr>
							<th colspan="` + (xMax + 1) + `"> 스크린 </th>
						</tr>
					</thead>
					<tbody>`;
						
			var seatInfo = "";
			for (var i = 0; i < rData.length; i++) {
				if (rData[i].seat_y != seatInfo.substr(0,1)) {
					seatInfo = rData[i].seat_y + rData[i].seat_x;
					if (i != 0){
						seatTableHtml += `</tr>`;
					}
					
					seatTableHtml += `
						<tr>
							<th>` + rData[i].seat_y + `</th>
					`;
					
				}
				seatTableHtml += `
					<td>
						<a class="btn btn-sm dropdown-toggle `;
					if (rData[i].seat_status == 1){
						seatTableHtml += "btn-info";
					} else if (rData[i].seat_status == 0) {
						seatTableHtml += "btn-link seatUuse";
					}
					seatTableHtml += `" type="button" id="seatInfo-` + (rData[i].seat_y + rData[i].seat_x) + `" data-toggle="dropdown">`
							+ rData[i].seat_x +
							`</a>
							<div class="dropdown-menu" aria-labelledby="seatInfo-` + (rData[i].seat_y + rData[i].seat_x) + `">
								<a class="dropdown-item disabled" href="#">` + (rData[i].seat_y + rData[i].seat_x) + ` 좌석 상태 변경</a>
								<a class="dropdown-item btnSeatUse" data-seat_no="` + rData[i].seat_no + `" data-room_no="` + rData[i].room_no + `">사용</a>
								<a class="dropdown-item btnSeatUuse" data-seat_no="` + rData[i].seat_no + `" data-room_no="` + rData[i].room_no + `">사용안함</a>
							</div>
						</td>
					`;
					if(i == (xMax - 1)) {
						seatTableHtml += `
							<td rowspan='` + yCnt + `'>
								<a class='btn btn-sm btn-outline-info' id='addX' data-room_no=` + room_no + ` > + </a><br>
								<a class='btn btn-sm btn-outline-danger' id='subX' data-room_no=` + room_no + `> - </a>
							</td>`;
					}
					
					
			};
			seatTableHtml += `
				</tr>
				<tr>
					<th colspan="` + (xMax + 1) + `">
						<a class='btn btn-sm btn-outline-info' id='addY' data-room_no=` + room_no + `> + </a>
						<a class='btn btn-sm btn-outline-danger' id='subY' data-room_no=` + room_no + `> - </a>
					</th>
				</tr>
			`;
			$(".card-body").text("");
			$(".card-body").append(seatTableHtml);


		});
	}
	
	
	
	
	function selectChoiseGetCinema(cinema_address){
		var url = "/mkcinema/getCinemaList";
		var sData = {
				"cinema_address" : cinema_address
		}
		$.get(url, sData, function(rData){
			$.each(rData, function(){
				var insertHtml = `
					<li class="btn-group">
						<a class='btn btn-sm ` + ((this.cinema_status == 1) ? `btn-light` : ((this.cinema_status == 0) ? `btn-dark` : `btn-warning`)) + `' data-cinema_no=` + this.cinema_no + `>` + this.cinema_name + `</a>` + btnEdit + `
					</li>`;
				$(".cinemaListViewer").append(insertHtml);
			})
			$(".cinemaListViewer").append(btnNewCreate);
		});
	}
	
	
	
	
	function showTimelineList(cinema_no, room_no, movie_begin_date){
		var url = "/mkcinema/getRoomTimelineList";
		var sData = {
				"room_no" : room_no,
				"movie_begin_date" : movie_begin_date
		};
		
		$.get(url, sData, function(rData){
			$(".roomTimelineListViewer").text("");
			$.each(rData, function(){
				var date = this.movie_begin_date.substr(11,5);
				var insertHtml = `
					<li class="btn-group">
						<a class='btn btn-sm btn-light' data-timeline_no=` + this.timeline_no + `>` + date + ` - ` + this.movie_name + `</a class='btn btn-info'>` + btnEdit + `
					</li>`;
				$(".roomTimelineListViewer").append(insertHtml);
			});
			$(".roomTimelineListViewer").append(btnNewCreate);
			$(".allCinemaViewer tbody").find("td").eq(2).find(".btnNewInsert").attr("data-room_no", room_no);
			$(".allCinemaViewer tbody").find("td").eq(2).find(".btnNewInsert").attr("data-cinema_no", cinema_no);
			$(".allCinemaViewer .movie_begin_date").attr("data-cinema_no", cinema_no);
		});
	}
	
	
	
	
	
	var cinema_address = $("select[name=cinema_address]").val();
	if (cinema_address == null) {
		$(".cinemaListViewer").html("<li>영화관 지역을 선택해주세요</li>");
	} else {
		selectChoiseGetCinema(cinema_address);
	}
	
	
	/* 날짜 조율 체크 */
	$(".modal").on("change", "input[name$=finish_date]", function(){
		var bDate = $(".modal").find("input[name$=begin_date]").val();
		var fDate = $(this).val();
		if (bDate > fDate) {
			alert("종료날짜는 시작날짜보다 클 수 없습니다.");
			$(this).val(bDate);
		}
	});
	
	
	/* 영화관 도시명 select선택 시 이벤트 */
	$("select[name=cinema_address]").change(function(){
			$(".cinemaListViewer").text("");
			$(".cinemaRoomListViewer").text("");
			$(".roomTimelineListViewer").text("");
			var cinema_address = $(this).val();
			
			selectChoiseGetCinema(cinema_address);
			
	});
	
	/* 조회된 영화관 목록 선택 시 */
	$(".cinemaListViewer").on("click", "*[data-cinema_no]", function(){
		$(".cinemaListViewer").find("a").css("background","");
		$(this).css("background","skyblue").css("boarder","skyblue");
		$(".cinemaRoomListViewer").text("");
		$(".roomTimelineListViewer").text("");
		$(".cinemaRoomListViewer").prepend(btnNewCreate);
		var cinema_no = $(this).attr("data-cinema_no");
		$(".allCinemaViewer").children();
		var url = "/mkcinema/getCinemaRoomList"
		var sData = {
				"cinema_no" : cinema_no
		}
		$.get(url, sData, function(rData){
			$.each(rData, function(){
				var insertHtml = `
					<li class='btn-group'>
						<a class='btn btn-sm btn-light' data-cinema_room_no=` + this.room_no + `>` + this.room_name + `</a class='btn btn-info'>` + btnEdit + `
					</li>
				`;
				$(".cinemaRoomListViewer").prepend(insertHtml);
			});
			$(".allCinemaViewer tbody").find("td").eq(1).find(".btnNewInsert").attr("data-cinema_no", cinema_no);
		});
		$(".cinemaLine").hide();
		$(".roomLine").show();
	});
	
	/* 조회된 상영관 리스트 선택 시 */
	$(".cinemaRoomListViewer").on("click", "*[data-cinema_room_no]", function(){
		var room_no = $(this).attr("data-cinema_room_no");
		var cinema_no = $(this).parent("li").nextAll().last().find(".btnNewInsert").attr("data-cinema_no");
		var movie_begin_date = $(".movie_begin_date").val();
		$(".cinemaRoomListViewer").find("a").css("background","");
		$(this).css("background","skyblue").css("boarder","skyblue");
		
		$(".movie_begin_date").attr("data-room_no", room_no);
		console.log(cinema_no);
		console.log(cinema_no, movie_begin_date);
		
		showTimelineList(cinema_no, room_no, movie_begin_date);
		$(".roomTimelineListViewer").prepend(btnNewCreate);
		$(".roomLine").hide();
		$(".timeLine").show();
	});
	
	$(".movie_begin_date").change(function(){
		var cinema_no = $(this).attr("data-cinema_no");
		var room_no = $(this).attr("data-room_no");
		var movie_begin_date = $(this).val();
		
		showTimelineList(cinema_no, room_no, movie_begin_date);
	});
	
	/* 영화관 정보 테이블 버튼 모두 */
	$(".cinemaNavTable").on("click", "button, a", function(){
		
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
							<option value=''`;
				if (rData.cinema_status == null){
					insertHtml += "selected";
				}
					insertHtml += `
							>영업 준비중</option>
							<option value='0'`;
				if (rData.cinema_status == 0){
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
				
				getSeatTable(room_no);
				
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
				$(".modal-body").append("<div><label>상영 영화 : <input type='text' name='movie_code' value='" + rData.movie_code + "' readonly /><input type='text' id='movie_name' class='form-control' list='datalistOptions' value='" + rData.movie_name + "' /><button type='button' class='btn btn-sm btn-success' id='btnMovieSearch'>검색</button></label></div>");
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
// createForm.submit();
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
				var cinema_no = $(this).attr("data-cinema_no");
				
				var inputHtml = `
					<input type='hidden' name='cinema_no' value='` + cinema_no + `' />
					<input type='hidden' name='room_no' value='` + room_no + `' />
					<div>
						<label>
							상영 영화 : 
							<input type='text' name='movie_code' readonly />
							<input type='text' id='movie_name' class='form-control' list='datalistOptions' value='' />
							<button type='button' id='btnMovieSearch'>검색</button>
							<datalist id='datalistOptions'></datalist>	
						</label>
					</div>
					<div>
						<label>
							영화 타입 : 
							<select name='room_type_code'></select>
						</label>
					</div>
					<div>
						<label>
							영화 시작일 : 
							<input type='datetime-local' name='movie_begin_date' value='${serverTime}' min='${serverTime}' />
						</label>
					</div>
					<div>
						<label>
							영화 종료일 : 
							<input type='datetime-local' name='movie_finish_date' value='${serverTime}' />
						</label>
					</div>
				`;
				
				$(".modal-body").append(inputHtml);

				$.get("/mkcinema/getRoomTypeCodeList",function(rData){
					console.log(rData);
					$.each(rData, function(){
						$("select[name=room_type_code]").append("<option value='" + this.room_type_code + "'" + ">" + this.room_type_name + "</option>");
					});
				});
				
				/* 영화이름 검색 시 자동 검색 */
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
	            oncomplete: function(data) { // 선택시 입력값 세팅
	            	var cAddress = data.address + " ";
	                $("*[name=cinema_address]").val(cAddress + " "); // 주소
																		// 넣기
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
			var createSeat = $(this).attr("data-createSeat");
			var createTimeline = $(this).attr("data-createTimeline");
			switch (true) {
			case createCinema != null:
				form.attr("method", "get");
				form.attr("action", "/mkcinema/createCinema");
				form.submit();
				break;
			case createRoom != null:
				$("#btnModalCancel").attr("data-rollbackCreateRoom", "true");
				$("#btnModalSuccess").removeAttr("data-createroom");
				$("#btnModalSuccess").attr("data-createSeat", "true");
				var url = "/mkcinema/createRoom";
				var sData = $(this).parents("form");
				$.get(url, sData.serialize(), function(rData){
					var room_no = parseInt(rData);
					if (rData != null){
						$(".modal-header").html(sData.find("input[name=room_name]").val() + " 내부 좌석 생성");
						$(".modal-body").text("");
						
			
						var insertHtml = `
							<div id="btnRoomSeat">
								<div class="card">
									<div class="card-header">
										 <a class="card-link" data-toggle="collapse" data-parent="#btnRoomSeat" href="#seatViewer">상영관 좌석 보기</a>
										<input type="hidden" name="room_no" value="` + room_no + `"/>
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
						
						getSeatTable(room_no);
						
	 				
						
					}
				});
				break;
			case createSeat != null:
				form.attr("method", "get");
				form.attr("action", "/mkcinema/createSeat");
				form.submit();
				break;
			case createTimeline != null:
				form.attr("method", "get");
				form.attr("action", "/mkcinema/createTimeline");
				form.submit();
				break;
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
			

			}
			break;
			
		case "btnModalCancel":
			if ($(this).attr("data-rollbackCreateRoom") != null){
				var form = $(this).parents("form");
				form.attr("method", "get");
				form.attr("action", "/mkcinema/deleteRoom");
				form.submit();
			}
			break;
			
		case "addX":
			var room_no = $(this).attr("data-room_no");
			var seat_x = parseInt($(this).parent("td").prev().find("a").text()) + 1;
			var yNum = new Array();
			var arryChar = $(this).parents("tbody").find("tr").children("th").not("th[colspan]");
			console.log("attyChar", arryChar);
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
					getSeatTable(room_no);
				}
			});
			break;
			
		case "addY":
			var room_no = $(this).attr("data-room_no");
			var temp_y = $(this).parent().parent().prev().find("th").text().substr(0,1);
			var seat_y = String.fromCharCode(temp_y.charCodeAt() + 1);
			var arrayChar = $(this).parent().parent().prev().find("td").not("td[rowspan]").find(".dropdown-toggle");
			var xNum = new Array();
			
			if (arrayChar.text() == ""){
				seat_y = "A";
				xNum.push("1");
			}
			
			$.each(arrayChar, function(){
				xNum.push($(this).text().trim());
			});
			console.log(xNum);
			console.log(seat_y);
			if (seat_y.charCodeAt() > "Z".charCodeAt()) {
				alert("Z열 이상 만들 수 없습니다.");
			} else {
				var url = "/mkcinema/roomSeatAddY";
				var sData = {
						"room_no" : room_no,
						"xNum" : JSON.stringify(xNum),
						"seat_y" : seat_y
				}
				$.get(url, sData, function(rData){
					if (rData == true){
						getSeatTable(room_no);
					}
				});
			}
			break;
			
		case "subX":
			var room_no = $(this).attr("data-room_no");
			var seat_x = parseInt($(this).parent("td").prev().find("a").text());
			var yNum = new Array();
			var arryChar = $(this).parents("tbody").find("tr").children("th").not("th[colspan]");
			$.each(arryChar, function(){
				yNum.push($(this).text().substr(0,1));
			});
			var url = "/mkcinema/roomSeatSubX";
			var sData = {
					"room_no" : room_no,
					"seat_x" : seat_x,
					"yNum" : JSON.stringify(yNum)
			}
			$.get(url, sData, function(rData){
				if (rData == true){
					getSeatTable(room_no);
				}
			});
			break;
			
		case "subY":
			var room_no = $(this).attr("data-room_no");
			var seat_y = $(this).parent().parent().prev().find("th").text().substr(0,1);
			var arrayChar = $(this).parent().parent().prev().find("td").not("td[rowspan]").find(".dropdown-toggle");
			var xNum = new Array();
			
			if (arrayChar.text() == ""){
				seat_y = "A";
				xNum.push("1");
			}
			
			$.each(arrayChar, function(){
				xNum.push($(this).text().trim());
			});
			var url = "/mkcinema/roomSeatSubY";
			var sData = {
					"room_no" : room_no,
					"xNum" : JSON.stringify(xNum),
					"seat_y" : seat_y
			}
			$.get(url, sData, function(rData){
				if (rData == true){
					getSeatTable(room_no);
				}
			});
			break;
		}
	});
	
	// 좌석 상태 변경 중(드롭다운) "사용" 버튼 클릭 시
	$(".modal-body").on("click", ".btnSeatUse", function(){
		var room_no = $(this).attr("data-room_no");
		var seat_no = $(this).attr("data-seat_no");
		var url = "/mkcinema/cinemaSeatUse";
		var sData = {
				"seat_no" : seat_no
		}
		$.get(url, sData, function(){
			getSeatTable(room_no);
		})
	});
	
	// 좌석 상태 변경 중(드롭다운) "사용 안함" 버튼 클릭 시
	$(".modal-body").on("click", ".btnSeatUuse", function(){
		var room_no = $(this).attr("data-room_no");
		var seat_no = $(this).attr("data-seat_no");
		var url = "/mkcinema/cinemaSeatUuse";
		var sData = {
				"seat_no" : seat_no
		}
		$.get(url, sData, function(rData){
			getSeatTable(room_no);
		})
	});
	
});


var modifyResult = "${modifyResult}";
var createResult = "${createResult}";
var cancelResult = "${cancelResult}";
var workName = "${workName}";

if (modifyResult == "true"){
	alert(workName + " 정보 수정이 완료되었습니다.");
}

if (createResult == "true"){
	alert(workName + " 등록이 완료되었습니다.");
}

if (cancelResult == "true"){
	alert(workName + "이 취소 되었습니다.");
}
</script>
<!-- 샘플 레이아웃 데이터 -->
<div class="ma">

	<div class="row" style="background-color: #eeeeee">
		<div class="col-md-1"></div>
		<!-- 유수연 메뉴 목록  -->
		<div class="col-md-2">
		<div class="menu">
	    			<%-- <c:if test="">
								로그인 계정이 관리자 계정일때 관리자 메뉴 보이도록
	    			</c:if> --%>
	    				<jsp:include page="/WEB-INF/views/admin/manage_menu.jsp"/>	
    			</div> 
		</div>
		<!-- 유수연 상세내용  -->
		<div class="col-md-7">
			<div class="mkcinema">
				<div class="container">
					<div class="row">
						<div class="col-lg-12">
							<table class="table table-striped allCinemaViewer">
								<thead>
									<tr>
										<th class="cinemaLine">
											<h5>영화관</h5>
											<select class="form-select justify-center cinema_address" name="cinema_address">
												<option selected disabled>지역 선택</option>
												<c:forEach items="${cinemaCityList}" var="cityName">
													<option value="${cityName}"
														<c:if test="${fn:substring(sessionScope.loginUserVo.address, '0', '2') == cityName}">
															selected
														</c:if>
													>${cityName}</option>
												</c:forEach>
											</select>
										</th>
										<th class="roomLine hide">
											<h5>상영관</h5>
										</th>
										<th class="timeLine hide">
											<h5>상영 스케줄</h5>
											<input class="movie_begin_date form-control" type="datetime-local" value="${fn:replace(serverTime,' ', 'T')}"/>
										</th>
									</tr>
								</thead>
								<tbody>
									<tr class="cinemaNavTable">
										<td class="cinemaLine">
											<ul class="cinemaListViewer">
												
											</ul>
										</td>
										<td class="roomLine hide">
											<ul class="cinemaRoomListViewer">
											
											</ul>
										</td>
										<td class="timeLine hide">
											<ul class="roomTimelineListViewer">
											</ul>
										</td>
									</tr>
								</tbody>
							</table>
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
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-1"></div>
	</div>
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>