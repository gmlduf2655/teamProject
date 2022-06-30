<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<style>
label {
	color: white;
}
</style>

<script>
$(document).ready(function(){
 	
 	// 수정하기
	$("#btnUpdate").click(function(){
		$("*[readonly]").attr("readonly", false);
		$(this).hide();
		$("#btnUpdateRun").show();
	});
	
 	// 삭제
	$("#btnDelete").click(function(e){
		e.preventDefault();
		var event_no = $(this).attr("href");
		$("#frmPaging").find("input[name=event_no]").val(event_no);
		frmPaging.attr("action", "/event/event_delete");
		frmPaging.attr("method", "get");
		frmPaging.submit();
	});
 	
 	// 이벤트 참가버튼 한번 누르면 비활성화
	$("#btnEventSubmit").click(function() {
		console.log("이벤트 참가버튼 클릭됨");
		var event_title = $("input[name=event_title]").val();
		var event_start_date = $("input[name=event_start_date]").val();
		var event_end_date = $("input[name=event_end_date]").val();
		var userno = $("input[name=userno]").val();
		var event_no = $(this).attr("data-eno")
		var userid = $("input[name=userid]").val();
		var sData = {
				"event_title" : event_title,
				"event_start_date" : event_start_date,
				"event_end_date" : event_end_date,
				"userno" : userno,
				"event_no" : event_no,
				"userid" : userid
		};
		 console.log("sData:", sData);
		var url = "/event/participateEvent";
		$.post(url, sData, function(rData){
			console.log("rData:", rData);
			if (rData == "true") {
				$("#btnEventSubmit").attr("disabled", "disabled");
				alert("이벤트 신청 완료");
				location.href = "/event/nowEvent_list?page=1";
			};
		});
	});
});
</script>

<form id="frmPaging">
	<input type="hidden" name="event_no" value="">
</form>

<div class="container">
<br><div class="anime__details__review">
				<div class="section-title">
					<h5>게시글</h5>
				</div>
			</div>

</div>
<div class="container" style="background-color:rgba(255, 255, 255, 0.3); border-radius:10px;">
		
		<input type="hidden" name="event_no" value="${eventVo.event_no}">
	
						<div class="form-group">
							<label for="event_title"> 제목 </label> 
							<input type="text" class="form-control" id="event_title" name="event_title"
								value="${eventVo.event_title}" readonly />
						</div>
						<hr>
						<div class="form-group">
							<span>
								<label for="event_start_date"> 이벤트 시작일 ~  </label>
								<label for="event_end_date"> 이벤트 종료일 </label> <br>
								
							</span>
							<span>
								<input type="date" id="event_start_date" name="event_start_date" readonly
									min="" value="${eventVo.event_start_date}">
								<input type="date" id="event_end_date" name="event_end_date" readonly
									min="0000-00-00" value="${eventVo.event_end_date}">
							</span>
						</div>
						<hr>
						<div>
						<label>메인 이미지</label><br>
						 <img style="width: 100px;" src="/event/displayImage?filename=${eventVo.event_image}">
						</div>
						<hr>
						<div class="form-group">
							<label for="event_content"> 내용 </label>
							<div style="background-color:white; border-radius:10px;">${eventVo.event_content}</div>
						</div>
						<!-- 이벤트 참가 버튼 -->
					<!-- 오늘 날짜 구하기-->
					<c:set var="date" value="<%=new java.util.Date()%>" />
					<c:set var="today">
						<fmt:formatDate value="${date}" pattern="yyyy-MM-dd" />
					</c:set> 
						<!-- 날짜에 따라 이벤트 참가버튼 보이고 안보이게 설정 -->
						<c:if test="${eventVo.event_start_date <= today && eventVo.event_end_date >= today}">
						<hr>
						<!-- 이벤트 참가버튼을 누르면 이벤트 참가 내역 테이블로 데이터 전송 -->
						<div class="anime__details__btn">
						<form id="eventSubmit">
								<input type="hidden" name="event_title" value="${eventVo.event_title}">
								<input type="hidden" name="event_start_date" value="${eventVo.event_start_date}">
								<input type="hidden" name="event_end_date" value="${eventVo.event_end_date}">
								<input type="hidden" name="userno" value="${loginUserVo.userno}">
								<input type="hidden" name="event_no" >
								<input type="hidden" name="userid" value="${loginUserVo.userid}">
							<button type="button" id="btnEventSubmit" class="btn follow-btn"
								data-eno="${eventVo.event_no}"  >이벤트 참가</button> 
						</form>
						</div>
						</c:if>
						<!-- 이벤트 참가 버튼 끝 -->
						<hr>
						
						<a href="/event/event_list" class="btn btn-primary">이벤트 목록으로</a>
					</div>
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>