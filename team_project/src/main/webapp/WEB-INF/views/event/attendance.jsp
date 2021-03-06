<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<style>
/* section calendar */

.sec_cal {
    width: 550px;
    height: 700px;
    margin: 0 auto;
    font-family: "NotoSansR";
}

.sec_cal .cal_nav {
    display: flex;
    justify-content: center;
    align-items: center;
    font-weight: 700;
    font-size: 70px;
    line-height: 78px;
}

.sec_cal .cal_nav .year-month {
    width: 300px;
    text-align: center;
    line-height: 1;
}

.sec_cal .cal_nav .nav {
    display: flex;
    border: 1px solid #333333;
    border-radius: 5px;
}

.sec_cal .cal_nav .go-prev,
.sec_cal .cal_nav .go-next {
    display: block;
    width: 50px;
    height: 78px;
    font-size: 0;
    display: flex;
    justify-content: center;
    align-items: center;
}

.sec_cal .cal_nav .go-prev::before,
.sec_cal .cal_nav .go-next::before {
    content: "";
    display: block;
    width: 20px;
    height: 20px;
    border: 3px solid #000;
    border-width: 3px 3px 0 0;
    transition: border 0.1s;
}

.sec_cal .cal_nav .go-prev:hover::before,
.sec_cal .cal_nav .go-next:hover::before {
    border-color: #ed2a61;
}

.sec_cal .cal_nav .go-prev::before {
    transform: rotate(-135deg);
}

.sec_cal .cal_nav .go-next::before {
    transform: rotate(45deg);
}

.sec_cal .cal_wrap {
    padding-top: 30px;
    position: relative;
    margin: 0 auto;
    padding-top: 80px;
    
}

.sec_cal .cal_wrap .days {
    display: flex;
    margin-bottom: 20px;
    padding-bottom: 20px;
    border-bottom: 1px solid #ddd;
}

.sec_cal .cal_wrap::after {
    top: 368px;
}

.sec_cal .cal_wrap .day {
    display: flex;
    align-items: center;
    justify-content: center;
    width: calc(100% / 7);
    text-align: left;
    color: #999;
    font-size: 20px;
    text-align: center;
    border-radius: 50%;
}



/* .current.today {background: rgb(242 242 242);} */

.sec_cal .cal_wrap .dates {
    display: flex;
    flex-flow: wrap;
    height: 350px;
    
}

.sec_cal .cal_wrap .day:nth-child(7n -1) {
    color: #3c6ffa;
}

.sec_cal .cal_wrap .day:nth-child(7n) {
    color: #ed2a61;
}

.sec_cal .cal_wrap .day.disable {
    color: #ddd;
}

.year-month {
	color: white;
}
</style>

<script>
$(document).ready(function() {
    calendarInit();
});
/*
    ?????? ????????? ??? ??? ????????? ?????? ?????? 

    ?????? ???(????????? : ?????? ??????)
    ?????? ???????????? ????????? ??????
    ?????? ???????????? ????????? ??????
*/

function calendarInit() {

    // ?????? ?????? ????????????
    var date = new Date(); // ?????? ??????(?????? ??????) ????????????
    var utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000); // uct ????????? ??????
    var kstGap = 9 * 60 * 60 * 1000; // ?????? kst ???????????? ?????????
    var today = new Date(utc + kstGap); // ?????? ???????????? date ?????? ?????????(??????)
  
    var thisMonth = new Date(today.getFullYear(), today.getMonth(), today.getDate());
    // ???????????? ???????????? ?????? ??????
  
    
    var currentYear = thisMonth.getFullYear(); // ???????????? ???????????? ???
    var currentMonth = thisMonth.getMonth()+1; // ???????????? ???????????? ???
    var currentDate = thisMonth.getDate(); // ???????????? ???????????? ???
    // kst ?????? ????????????
    // console.log(thisMonth);

    // ????????? ?????????
    renderCalender(thisMonth);

    function renderCalender(thisMonth) {

        // ???????????? ?????? ????????? ??????
        currentYear = thisMonth.getFullYear();
        currentMonth = thisMonth.getMonth();
        currentDate = thisMonth.getDate();

        // ?????? ?????? ????????? ??? ????????? ?????? ?????????
        var startDay = new Date(currentYear, currentMonth, 0);
        var prevDate = startDay.getDate();
        var prevDay = startDay.getDay();

        // ?????? ?????? ???????????? ????????? ?????? ?????????
        var endDay = new Date(currentYear, currentMonth + 1, 0);
        var nextDate = endDay.getDate();
        var nextDay = endDay.getDay();

        // console.log(prevDate, prevDay, nextDate, nextDay);

        // ?????? ??? ??????
        $('.year-month').text(currentYear + '.' + (currentMonth + 1));

        // ????????? html ?????? ??????
        calendar = document.querySelector('.dates')
        calendar.innerHTML = '';
        
        // ?????????
        for (var i = prevDate - prevDay + 1; i <= prevDate; i++) {
            calendar.innerHTML = calendar.innerHTML + '<div class="day prev disable">' + i + '</div>'
        }
        // ?????????
        for (var i = 1; i <= nextDate; i++) {
            calendar.innerHTML = calendar.innerHTML + '<div class="day current">' + i + '</div>'
        }
        // ?????????
        for (var i = 1; i <= (7 - nextDay == 7 ? 0 : 7 - nextDay); i++) {
            calendar.innerHTML = calendar.innerHTML + '<div class="day next disable">' + i + '</div>'
        }

        // ?????? ?????? ??????
        if (today.getMonth() == currentMonth) {
            todayDate = today.getDate();
            console.log("todayDate:", todayDate);
            var currentMonthDate = document.querySelectorAll('.dates .current');
            currentMonthDate[todayDate -1].classList.add('today');
        }
    }

//     // ???????????? ??????
//     $('.go-prev').on('click', function() {
//         thismonth = new date(currentyear, currentmonth - 1, 1);
//         rendercalender(thismonth);
//     });

//     // ???????????? ??????
//     $('.go-next').on('click', function() {
//         thismonth = new date(currentyear, currentmonth + 1, 1);
//         rendercalender(thismonth); 
//     });
}

//  ?????? ??????
$(document).ready(function(){
	
	
	
	getAttendList();
	$("#btnAttend").click(function(){
		console.log("??????"); 
		var url = "/event/attendanceRun";
		var sData = {
				"userno" : "${loginUserVo.userno}"
		};
		console.log(sData);
		$.post(url, sData, function(rData){
			console.log("rData:", rData);
			$(".current.today").css("background-color", "rgb(242 242 242)");
			$("#btnAttend").attr("disabled", "disabled");
			$("#p").html("????????? ?????? ??????!");
			getAttendList();
			
		});
		
	});
	
	function getAttendList(){
		var date = new Date(); // ?????? ??????(?????? ??????) ????????????
	    var utc = date.getTime() + (date.getTimezoneOffset() * 60 * 1000); // uct ????????? ??????
	    var kstGap = 9 * 60 * 60 * 1000; // ?????? kst ???????????? ?????????
	    var today = new Date(utc + kstGap); // ?????? ???????????? date ?????? ?????????(??????)
		var thisMonth = new Date(today.getFullYear(), today.getMonth(), today.getDate());
		var currentMonth = thisMonth.getMonth();
		var userno = "${loginUserVo.userno}";
		var url = "/event/attendList/" + userno;
		$.get(url, function(rData) {
			console.log("?????? ????????? rData:",rData);
			$.each(rData, function() {
				var attend_date = this.attend_date;
				console.log("attend_date:", attend_date);
				var month = attend_date.slice(5, 7); // ????????? ???
				console.log("month:", month);
				var date = attend_date.slice(8, 10); // ????????? ??????
				console.log("date:", date);
				
				
				
 				if (month == currentMonth + 1) {
 		            var currentMonthDate = document.querySelectorAll('.dates .current');
 		            currentMonthDate[date -1].classList.add('chk');
 		           $(".current.chk").css("background-color", "rgb(242 242 242)");
 		          if ( date == today.getDate() ) {
 		        	 $("#btnAttend").attr("disabled", "disabled");
 		        	$("#p").html("????????? ?????? ??????!");
 		          }
 		        }
				
			});
			
		});
	};
});
</script>

<!-- ?????? ????????? -->
    <section class="normal-breadcrumb set-bg" style="height: 100px">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>?????? ??????</h2>
                        <label p id="p" style="color: white;">?????????????????? 5????????? ??????!</label>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <br>
<!-- ?????? ????????? ??? -->

<div class="container">

<div class="sec_cal" style="background-color:rgba(255, 255, 255, 0.1); border-radius:10px; padding: 30px;">
   <button class="btn btn-info" id="btnAttend">??????</button>
   <div class="cal_nav">
<!--     <a href="javascript:;" class="nav-btn go-prev" style="color: white;">prev</a> -->
     <div class="year-month"></div> 
<!--     <a href="javascript:;" class="nav-btn go-next" style="color: white;">next</a> -->
  </div>
  <div class="cal_wrap">
    <div class="days">
      <div class="day">MON</div>
      <div class="day">TUE</div>
      <div class="day">WED</div>
      <div class="day">THU</div>
      <div class="day">FRI</div>
      <div class="day">SAT</div>
      <div class="day">SUN</div>
    </div>
    <div class="dates"></div>
  </div>
</div>
</div>
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>