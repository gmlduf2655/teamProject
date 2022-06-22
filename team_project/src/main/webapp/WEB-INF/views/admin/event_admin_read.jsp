<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<style>
	body {
		background-color: #eeeeee;
	}section.product {
		padding : 0;
	}
	
	.ma {
		border-top: 50px solid #eeeeee;
	}
</style>

<script>
$(document).ready(function(){
 	var frmPaging = $("#frmPaging");
 	
 	// 이벤트 수정
	$("#btnUpdate").click(function(){
		$("*[readonly]").attr("readonly", false);
		$(this).hide();
		$("#btnUpdateRun").show();
	});
	
 	// 이벤트 삭제
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

<!-- 샘플 레이아웃 데이터 -->
<div class="ma">

	<div class="row" style="background-color: #eeeeee">
		<div class="col-md-1"></div>
		<!-- 메뉴 목록  -->
		<div class="col-md-2">
		<div class="menu">
	    			<%-- <c:if test="">
								로그인 계정이 관리자 계정일때 관리자 메뉴 보이도록
	    			</c:if> --%>
	    				<jsp:include page="/WEB-INF/views/admin/manage_menu.jsp"/>	
    			</div> 
		</div>
		<!-- 상세내용  -->
		<div class="col-md-7">
			<!-- 이벤트 수정 시작 -->
			<br><h2>이벤트 수정</h2>
			
<form id="frmPaging">
	<input type="hidden" name="event_no" value="">
</form>

	<input type="hidden" name="event_no" value="${eventVo.event_no}">
	<div class="row">
			
				<div class="col-md-12">
				
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
							<input type="date" id="event_start_date" name="event_start_date" readonly="readonly"
								   min="" value="${eventVo.event_start_date}" >
							<input type="date" id="event_end_date" name="event_end_date" readonly="readonly"
								   min="0000-00-00" value="${eventVo.event_end_date}">
						</span>
					</div>
					
					<hr>
					
					<div>
						<label> 메인 이미지 </label> <br>
						<img src="/event/displayImage?filename=${eventVo.event_image}">
					</div>
					
					<hr>
					
					<div class="form-group">
						<label for="event_content"> 내용 </label>
							${eventVo.event_content}
					</div>
					
	</div>
		
			<a href="/event/event_modifyForm?event_no=${eventVo.event_no}" 
			   class="btn btn-sm btn-warning" id="btnUpdate">수정</a>
			<a href="${eventVo.event_no}" class="btn btn-sm btn-danger" id="btnDelete">삭제</a>
			
		<!-- 이벤트 수정 끝 -->
		
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-1"></div>
	</div>
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>