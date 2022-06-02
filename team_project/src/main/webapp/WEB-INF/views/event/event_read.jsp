<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>


<script>
$(document).ready(function(){
	var frmPaging = $("#frmPaging");
	
	$("#btnDelete").click(function(e){
		e.preventDefault();
		var event_no = $(this).attr("href");
		frmPaging.find("input[name=event_no]").val(event_no);
		frmPaging.attr("action", "/event/event_delete");
		frmPaging.attr("method", "get");
		frmPaging.submit();
	});
});
</script>


<div class="container-fluid" style="background-color: white">
	<div class="row">
		<div class="col-md-12">
		
			<form class="role" action="/event/updateRun" method="post">
				<input type="hidden" name="event_no" value="${eventVo.event_no}">
			</form>
		
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<form role="form">
						<div class="form-group">
							<label for="event_title"> 제목 </label> 
							<input type="text" class="form-control" id="event_title" name="event_title" 
								value="${eventVo.event_title}" readonly/>
						</div>
						
						<div class="form-group">
							<label for="event_content"> 내용 </label> 
							<textarea class="form-control" id="event_content" 
								name="event_content" readonly>${eventVo.event_content}</textarea>
						</div>
						
						<a href="/event/event_list" class="btn btn-primary">이벤트 목록으로</a>
					</form>
				
				</div>
				
				
				<div class="col-md-2"></div>
				
			</div>
		</div>
	</div>
	<div class="float-right">
		<button type="button" class="btn btn-sm btn-warning" id="btnUpdate">수정</button>
		<a href="${eventVo.event_no}" class="btn btn-sm btn-danger" 
			id="btnDelete">삭제</a>
	</div>
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>