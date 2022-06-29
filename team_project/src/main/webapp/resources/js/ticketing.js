$(function(){ /* 준비 핸들러 */
	
	var changeFullDate = "";
	
	/* 상영 스케줄 검색 시 년,월, 일 변경 시 */
	$(".dateYYYY, .dateMM, .dateDD").change(function(){
		var changeTarget = $(".ticketTable").find(".sectionTitle").eq(2);
		
		var inputDateY = $(".dateYYYY").val();
		var inputDateM = $(".dateMM").val();
		var inputDateD = $(".dateDD").val();
		
		var mLastdate = new Date(inputDateY, inputDateM, 0).getDate();
		
		// 일자 입력란에 해당 년, 월 마지막일  max값 지정 
		$(".dateDD").attr("max", mLastdate);
		
		// 일자 입력란에 해당 년, 월 마지막일  자동 입력
		var targetVal = $(".dateDD").val();
		if (targetVal > mLastdate) {
			$(".dateDD").val(mLastdate);
		}
		
		// 상영 스케줄 제목 란에 값이 변경될때마다 자동 입력
		changeFullDate = inputDateY + "-" + inputDateM + "-" + inputDateD;
		console.log(changeFullDate);
		changeTarget.text(changeFullDate);
		
		// 변경된 값이 오늘 날짜와 일치하면 끝에 " (오늘)"문자열 자동 추가
		var inputText = " (오늘)";
		
		$.get("/getServerTime", function(rData) {
			if (rData.substring(0, 10) == changeFullDate && !changeTarget.text().includes(inputText)) {
				changeTarget.append(inputText);
			}
		});
	}); /* 상영 스케줄 검색 시 년,월, 일 변경 시 끝 */
	
	/* 클릭한 대상 표시 */
	$(".ticketTable").on("click", "li", function(e){
		e.stopPropagation();
		
		/* this를 제외한 나머지에 .choise를 지움 */
		$(this).parents("ul").find("li").not(this).removeClass("choise");
		
		/* 클릭하면 클릭한 대상에 .choise 추가 */
		$(this).addClass("choise");
		
	}); /* 클릭한 대상 표시 끝 */
	
	/* 영화 목록 간단히 보기 클릭시 리스트의 클래스 추가/제거 */
	$(".ticketTable").on("click", ".btnStackView", function(){
		var tempSave = $(".gridViewer");
		tempSave.removeClass("gridViewer");
		tempSave.addClass("stackViewer");
	}); /* 영화 목록 간단히 보기 클릭시 리스트의 클래스 추가/제거  끝*/
	
	/* 영화 목록 자세히 보기 클릭시 리스트의 클래스 추가/제거 */
	$(".ticketTable").on("click", ".btnGridView", function(){
		var tempSave = $(".stackViewer");
		tempSave.removeClass("stackViewer");
		tempSave.addClass("gridViewer");
	}); /* 영화 목록 자세히 보기 클릭시 리스트의 클래스 추가/제거 끝 */
	
	
	/* 영화관 지역 클릭 시 */
	$(".choiseLocal").on("click", "li", function(){
		var cityName = $(this).text();
		
		var url = "/ticket/getCinemaList";
		var sData = {
			"search_data" : cityName
		}
		$.get(url, sData, function(rData){
			var insertHtml = "";
			$.each(rData, function(){
				if (this.cinema_status == 1){
					insertHtml += `
						<li data-cinema_no="` + this.cinema_no + `">` + this.cinema_name + `<i class="bi bi-check-lg choise"></i></li>
						`;
				}
			});
			$(".cinemaList").html(insertHtml);
		});
	}); /* 영화관 지역 클릭 시  끝 */
	
	/* 조회된 영화관 목록 클릭 시 */
	$(".cinemaList").on("click", "li", function(){
		var cinema_name = $(this).text();
		// 클릭한 영화관 이름을 영화관 섹션 제목에 넣기
		$(this).parents(".choiseCinemaContainer").children(".sectionTitle").text(cinema_name);
		// 영화관 번호 얻어내기
		var cinema_no = $(this).attr("data-cinema_no");
		var url = "/ticket/getMovieAndTimelineList";
		var sData = {
			"cinema_no" : cinema_no
		}
		$.get(url, sData, function(rData){
			console.log(rData);
			
			// 클릭한 영화관에서 상영중인 영화 보여주기(이미 조회된 목록에서 상영중 영화가 아닌 것 숨김처리)
			var target = $(".movieList");
			target.find("li[data-movie_code]").hide().removeClass("choise");
			$.each(rData, function(){
				target.find("li[data-movie_code=" + this.movie_code + "]").show();
			});
			// 클릭한 영화관에서 상영중인 영화 보여주기(이미 조회된 목록에서 상영중 영화가 아닌 것 숨김처리) 끝
			
			/* 상영 스케줄 상영관 조회 */
			var insertHtml = "";
			$(".timelineList > ul").hide();
			$(".notListInfo").show();
			if(rData.length > 0) {
				$(".notListInfo").hide();
				$(".timelineList > ul").show();
				var prevTypeNMovieName = "";
				$.each(rData, function(i, v){
					if (i == 0) { /* 처음에 한번만 */
						prevTypeNMovieName = this.room_type_name + this.movie_name;
						insertHtml += ` 
								<li class="roomListWrapper" data-movie_code="` + this.movie_code + `" data-room_type_code="` + this.room_type_code + `">
									<ul class="typeList">
										<li class="typeContainer">
											<h6 class="room_type_name"><strong>[` + this.room_type_name + "]</strong> " + this.movie_name + `</h6>
											<ul class="cinemaRoomList">
												<li class="roomInfo" data-timeline_no="` + this.timeline_no + `" data-begin_date="` + this.movie_begin_date.substring(0, 16) + `" data-room_type_code="` + this.room_type_code + `" data-room_no="` + this.room_no + `">
													<strong class="movie_begin_date">` + this.movie_begin_date.substring(11, 16) + `</strong>
													<div>73/100</div>
													<div class="room_name">` + this.room_name + `</div>
												<li>
						`;
					} else { /* 두번째부터 여기만 실행 */
						nowTypeNMovieName = this.room_type_name + this.movie_name;
						/* 이전 영화종류, 영화제목이 같으면 */
						if (prevTypeNMovieName == nowTypeNMovieName){
							insertHtml += ` 
												<li class="roomInfo" data-timeline_no="` + this.timeline_no + `" data-begin_date="` + this.movie_begin_date.substring(0, 16) + `" data-room_type_code="` + this.room_type_code + `" data-room_no="` + this.room_no + `">
													<strong class="movie_begin_date">` + this.movie_begin_date.substring(11, 16) + `</strong>
													<div>73/100</div>
													<div class="room_name">` + this.room_name + `</div>
												<li>
							`;
						} else { /* 영화종류, 영화제목이 다르면 */
							insertHtml += ` 
											</ul>
										</li>
									</ul>
								</li>
								<li class="roomListWrapper" data-movie_code="` + this.movie_code + `" data-room_type_code="` + this.room_type_code + `">
									<ul class="typeList">
										<li class="typeContainer">
											<h6 class="room_type_name"><strong>[` + this.room_type_name + "]</strong> " + this.movie_name + `</h6>
											<ul class="cinemaRoomList">
												<li class="roomInfo" data-timeline_no="` + this.timeline_no + `" data-begin_date="` + this.movie_begin_date.substring(0, 16) + `" data-room_type_code="` + this.room_type_code + `" data-room_no="` + this.room_no + `">
													<strong class="movie_begin_date">` + this.movie_begin_date.substring(11, 16) + `</strong>
													<div>73/100</div>
													<div class="room_name">` + this.room_name + `</div>
												<li>
							`;
						} // inner if else end
						if (i == (rData.length - 1)){
							insertHtml += `
											</ul>
										</li>
									</ul>
								</li>
							`;
						}
					} // outer if else end
					prevTypeNMovieName = this.room_type_name + this.movie_name;
				});
				
			} // if (rData > 0)
			console.log(insertHtml);
			$(".ticketTable .timelineList > ul").html(insertHtml);
			
			
		}); // $.get();
		
	}); /* 조회된 영화관 목록 클릭 시 끝*/
	
	/* 영화 포스터 클릭시 영화 정보 페이지로 이동 (선택된 상태에서 포스터를 클릭해야 작동) */
	$(".ticketTable").on("click", ".choise .moviePoster", function() {
		var movieName = $(this).children("img").attr("alt");
		console.log(movieName);
		var movieCode = $(this).children("img").attr("data-movie_code");
		var userResult = confirm(movieName + "에 대한 영화정보 페이지로 이동하시겠습니까?");
		if (userResult) {
			location.href="http://localhost/movie/movieInfo?movie_code=" + movieCode;
		}
	});
	/* 영화 포스터 클릭시 영화 정보 페이지로 이동 끝 (선택된 상태에서 포스터를 클릭해야 작동) */
	
	/* 영화목록 리스트 클릭 시 */
	$(".ticketTable").on("click", "li[data-movie_code]", function(){
		// 클릭한 영화에 대한 스케줄만 보이게
		var thisCode = $(this).attr("data-movie_code");
		$(".timelineList").children("ul").children("li").hide();
		$(".timelineList").children("ul").children("li[data-movie_code=" + thisCode + "]").show();
		
	});
	/* 영화목록 리스트 클릭 시 끝 */
	
	/* 상영스케줄 전체 ~ IMax3D까지 탭 클릭시 */
	$(".roomTypeNav").on("click", "li[data-room_type_code]", function(){
		var typeCode = $(this).attr("data-room_type_code");
		if (typeCode == 00){
			$(".timelineList li[data-room_type_code]").show();
		} else {
			$(".timelineList li[data-room_type_code]").hide();
			$(".timelineList li[data-room_type_code=" + typeCode + "]").show();
		}
	});
	/* 상영스케줄 전체 ~ IMax3D까지 탭 클릭시 끝 */

	/* 스케줄 클릭 시 좌석 선택으로 넘어가기 */
	$(".timelineList").on("click", ".roomInfo", function(){
		var timeline_no = $(this).data("timeline_no");
		var movieName = $(this).parent("ul").prev("h6").text().substring($(this).parent("ul").prev("h6").text().indexOf("]") + 1).trim();
		console.log(movieName);
		var roomTypeCode = $(this).data("room_type_code");
		console.log(roomTypeCode);
		var roomNo = $(this).data("room_no");
		var beginDate = $(this).find(".movie_begin_date").text();
		var userConfirm = confirm("선택하신 영화는 " + movieName + "이며, \n" + beginDate + "에 시작하는 영화 입니다. \n예매를 계속 진행하시겠습니까?");
		if (userConfirm) {
			location.href = "/ticket/ticketingSeat?room_type_code=" + roomTypeCode + "&movie_name=" + movieName + "&movie_begin_date=" + beginDate + "&room_no=" + roomNo + "&timeline_no=" + timeline_no;
		}
	}); /* 스케줄 클릭 시 좌석 선택으로 넘어가기 끝 */
	
	
//	---------------------------------------
	
	/* 인원 늘리기/줄이기 버튼 */
	$(".chosiePersonCount").on("click", "button", function(e){
		var pcnt = $("#pcnt");
		var pmin = pcnt.attr("min");
		var pmax = pcnt.attr("max");
		var nextVal = 0;
		switch (true) {
		case e.target.classList.contains("btnPCntSub"):
			if (pcnt.val() > pmin){
				nextVal = (parseInt(pcnt.val()) - 1);
				pcnt.val(nextVal);
			} else {
				alert("최소 예약인원은 " + pmin + "명 입니다.");
			}
			break;
		case e.target.classList.contains("btnPCntAdd"):
			if (pcnt.val() < pmax){
				nextVal = (parseInt(pcnt.val()) + 1);
				pcnt.val(nextVal);
			} else {
				alert("최대 예약인원은 " + pmax + "명 입니다.");
			}
			break;
		}
	});
	/* 인원 늘리기/줄이기 버튼 끝 */
	
	/* 인원 값 직접 입력 막기 */
	$(".chosiePersonCount").on("keydown", "#pcnt", function(e){
		e.preventDefault();
	});
	/* 인원 값 직접 입력 막기 끝 */
	
	/* 좌석 클릭 (인원수) */
	$(".seatTable").on("click", "a", function(){
		$(".seatTable").find("a").removeClass("choise");
		var pcntNum = $("#pcnt").val();
		for(var i = 0; i < parseInt(pcntNum); i++) {
			if (i == 0) {
				$(this).addClass("choise");
			} else {
				var lastSeatCount = $(this).parent().nextAll().not($("a.none").parent());
				console.log("lth : " + lastSeatCount.length, "num : " + pcntNum);
				if (lastSeatCount.length <= pcntNum-2) {
					$(this).parent().prevAll().not($("a.none").parent()).children("a").eq(i - 1).addClass("choise");
				} else {
					$(this).parent().nextAll().not($("a.none").parent()).children("a").eq(i - 1).addClass("choise");
				}
			}
		}
		
		// 총 결제 금액 표시하기
		var totalPrice = $(".totalPoint").find("strong");
		var price = totalPrice.data("room_price");
		
		totalPrice.text((pcntNum * price).toLocaleString());
	}); 
	/* 좌석 클릭 (인원수) 끝 */
	
	
	/* 결제 버튼 클릭 시 */
	$(".pamentContainer").on("click", ".btnPament", function(){
		var user_no = $(this).data("userno");
		var userPoint = $(this).find("#userPoint").text();
		var timeline_no = $(this).data("timeline_no");
		var seat_no_el = $(".seatTable").find("a[data-seat_no].choise");
		var personCnt = $(".chosiePersonCount").find("#pcnt").val();
		var seat_no_list = new Array();
		$.each(seat_no_el, function(){
			seat_no_list.push($(this).data("seat_no"));
		});
		var totalPrice = $(".totalPoint").find("strong").text().replace(",", "");
		if ($(".btnPament #userPoint").length == 0){
			var ticketingConfirm = confirm("로그인이 필요한 페이지 입니다.\n로그인하시겠습니까?");
			if (ticketingConfirm){
				location.href = "/user/login_form";
			}
		} else {
			if (parseInt(totalPrice) > 0){
				if (parseInt(userPoint) >= parseInt(totalPrice)){
					var pamentConfirm = confirm("결제를 진행하시겠습니까?");
					if (pamentConfirm) {
						location.href = "/ticket/pamentTicketing?user_no=" + (user_no) + "&timeline_no=" + (timeline_no) + "&seat_no_list=" + (seat_no_list) + "&room_price=" + (totalPrice) + "&personCnt=" + (personCnt);
					}
				} else {
					var pointAddConfurm = confirm("포인트가 부족합니다. 포인트를 충전하시겠습니까?");
					if (pointAddConfurm) {
						location.href = "/point/charge_point_form?userno=" + user_no;
					}
					
				}
			} else {
				alert("좌석을 선택 해주세요");
			}
			
		}
	});
	/* 결제 버튼 클릭 시 끝 */
	
	

	
	
	
	
}); /* 준비 핸들러 끝 */