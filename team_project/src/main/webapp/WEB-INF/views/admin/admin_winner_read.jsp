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

<script>
$(document).ready(function(){
 	var frmPaging = $("#frmPaging");
	
 	// 삭제
	$("#btnDelete").click(function(e){
		e.preventDefault();
		var winner_no = $(this).attr("href");
		$("#frmPaging").find("input[name=winner_no]").val(winner_no);
		frmPaging.attr("action", "/admin/winner_delete");
		frmPaging.attr("method", "get");
		frmPaging.submit();
	});
});
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
			<!-- 유수연 각 페이지의 내용이 여기 뜨도록 해주세요 -->
			<br><h2>이벤트 당첨자</h2>
			
			
			<form id="frmPaging">
	<input type="hidden" name="winner_no" value="">
</form>
<div class="container">



		<input type="hidden" name="winner_no" value="${winnerVo.winner_no}">
		
			
					<div class="col-md-12" style="background-color:rgba(255, 255, 255, 0.1); border-radius:10px;">
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
						<a href="/admin/event_winner_list" class="btn btn-primary">게시글 목록으로</a>
					</div>
				</div>
			
		<div class="float-right">
			<a href="/admin/admin_winner_modify?winner_no=${winnerVo.winner_no}" class="btn btn-sm btn-warning">수정</a>
			<a href="${winnerVo.winner_no}" class="btn btn-sm btn-danger" id="btnDelete">삭제</a>
		</div>
			
			
			
			<!-- 유수연 각 페이지의 내용이 여기 뜨도록 해주세요 -->
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-1"></div>
	</div>
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>