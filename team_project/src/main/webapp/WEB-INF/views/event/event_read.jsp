<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>



<script>
$(document).ready(function(){
 	var frmPaging = $("#frmPaging");
 	
 	var modify_result = "${modify_result}";
 	
 	if (modify_result == "true"){
		alert("수정 완료");
	}
	
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
});
</script>

<form id="frmPaging">
	<input type="hidden" name="event_no" value="">
</form>


<div class="container-fluid" style="background-color: white">
		<input type="hidden" name="event_no" value="${eventVo.event_no}">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
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
						 <img src="/event/displayImage?filename=${eventVo.event_image}">
						</div>
						<hr>
						<div class="form-group">
							<label for="event_content"> 내용 </label>
							${eventVo.event_content}
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
						<form action="/event/participateEvent" method="post">
							<input type="hidden" name="event_title" value="${eventVo.event_title}">
							<input type="hidden" name="event_start_date" value="${eventVo.event_start_date}">
							<input type="hidden" name="event_end_date" value="${eventVo.event_end_date}">
							<input type="hidden" name="userno" value="${loginUserVo.userno}">
							<input type="hidden" name="event_no" value="${eventVo.event_no}">
							<input type="submit" class="btn follow-btn" value="이벤트 참가">
						</form>
						</div>
						</c:if>
						<!-- 이벤트 참가 버튼 끝 -->
						<hr>
						
						<a href="/event/event_list" class="btn btn-primary">이벤트 목록으로</a>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</div>
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>