<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<style>
label {
	color: white;
}
</style>

<script>
$(document).ready(function(){
 	var frmPaging = $("#frmPaging");
	
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

<div class="container">
<br><div class="anime__details__review">
				<div class="section-title">
					<h5>게시글</h5>
				</div>
			</div>

</div>

<div class="container" style="background-color:rgba(255, 255, 255, 0.4); border-radius:10px;">



		<input type="hidden" name="winner_no" value="${winnerVo.winner_no}">
		
			
					<div class="col-md-12" >
						<div class="form-group">
							<label for="winner_title"> 제목 </label> 
							<input type="text" class="form-control" id="winner_title" name="winner_title"
								value="${winnerVo.winner_title}" readonly />
						</div>
						
						<hr>
						
						<div class="form-group">
							<label for="winner_content"> 내용 </label><br>
							<div style="background-color: white; border-radius:5px;">
								${winnerVo.winner_content}</div>
						</div>
						<hr>
						<a href="/event/winner_info?page=1" class="btn btn-primary">게시글 목록으로</a>
					</div>
				</div>
			
<!-- 		<div class="float-right"> -->
<%-- 			<a href="/event/winner_updateForm?winner_no=${winnerVo.winner_no}" class="btn btn-sm btn-warning">수정</a> --%>
<%-- 			<a href="${winnerVo.winner_no}" class="btn btn-sm btn-danger" id="btnDelete">삭제</a> --%>
<!-- 		</div> -->
	




<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>