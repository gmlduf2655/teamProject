<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>


<script>
$(document).ready(function(){
 	var frmPaging = $("#frmPaging");
 	
 	var modify_result = "${modify_result}";
 	
 	if (modify_result == "true"){
		alert("수정 완료");
	}
	
 	// 삭제
	$("#btnDelete").click(function(e){
		e.preventDefault();
		var winner_no = $(this).attr("href");
		$("#frmPaging").find("input[name=winner_no]").val(winner_no);
		frmPaging.attr("action", "/event/winner_delete");
		frmPaging.attr("method", "get");
		frmPaging.submit();
	});
});
</script>

<form id="frmPaging">
	<input type="hidden" name="winner_no" value="">
</form>


<div class="container-fluid" style="background-color: white">
	<form class="role" action="/event/winner_modifyForm" method="get">
		<input type="hidden" name="winner_no" value="${winnerVo.winner_no}">
		<div class="row">
			<div class="col-md-12">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div class="form-group">
							<label for="winner_title"> 제목 </label> 
							<input type="text" class="form-control" id="winner_title" name="winner_title"
								value="${winnerVo.winner_title}" readonly />
						</div>
						
<!-- 						<div> -->
<%-- 						 <img src="/event/displayImage?filename=${winnerVo.winner_image}"> --%>
<!-- 						</div> -->
						
						
						<div class="form-group">
							<label for="winner_content"> 내용 </label>
							${winnerVo.winner_content}
						</div>
						
						<a href="/event/winner_info" class="btn btn-primary">게시글 목록으로</a>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>
		</div>
		</form>
		<div class="float-right"> <!-- ?winner_no=${winnerVo.winner_no} -->
			<a href="/event/winner_updateForm" class="btn btn-sm btn-warning">수정</a>
			<a href="${winnerVo.winner_no}" class="btn btn-sm btn-danger" id="btnDelete">삭제</a>
		</div>
	
</div>



<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>