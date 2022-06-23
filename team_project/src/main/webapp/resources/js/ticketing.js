$(function(){ /* 준비 핸들러 */
	
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
		var changeFullDate = inputDateY + "-" + inputDateM + "-" + inputDateD;
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
	$(".ticketTable").on("click", "li", function(){
		/* 클릭하면 클릭한 대상에 .choise 추가 */
		$(this).addClass("choise");
		/* this를 제외한 나머지에 .choise를 지움 */
		$(this).parent().children("li").not(this).removeClass("choise");
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
			console.log(rData);
			var insertHtml = "";
			$.each(rData, function(){
				insertHtml += `
					<li data-cinema_no="` + this.cinema_no + `">` + this.cinema_name + `<i class="bi bi-check-lg choise"></i></li>
				`;
			});
			$(".cinemaList").html(insertHtml);
		});
	}); /* 영화관 지역 클릭 시  끝 */
	
	/* 조회된 영화관 목록 클릭 시 */
	$(".cinemaList").on("click", "li", function(){
		var cinema_name = $(this).text();
		// 클릭한 영화관 이름을 영화관 섹션 제목에 넣기
		$(this).parents(".choiseCinemaContainer").children(".sectionTitle").text(cinema_name);
		var cinema_no = $(this).attr("data-cinema_no");
		var url = "/ticket/getMovieAndTimelineList";
		var sData = {
			"cinema_no" : cinema_no
		}
		$.get(url, sData, function(rData){
			console.log(rData);
		});
		
	}); /* 조회된 영화관 목록 클릭 시 끝*/
	
}); /* 준비 핸들러 끝 */