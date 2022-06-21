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
	// 당첨 버튼
	$("#btnWinning").click(function(){
		console.log("클릭됨");
		var chkArr = new Array();
		
		$("#chkBox:checked").each(function(){
		    chkArr.push($(this).attr("data-pno"));
		   });
		
		
		var url = "/admin/winnerUpdate";
		var sData = {
				"chBox" : chkArr
		}
		console.log("sData:", sData);
		$.post(url, sData, function(rData){
			console.log("rData:", rData);
			if (rData == "true"){
				location.reload();
			};
		});
		
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
			<br><h2>이벤트 참가자 리스트</h2>
			<br>
			<div>
			<table class="table">
				    		<thead>
				    			<tr>		
				    						
									<th>이벤트 제목</th>    	
									<th>이벤트 참여자</th>			
									<th>이벤트 시작일</th>    				
									<th>이벤트 종료일</th>
									<th>당첨여부</th>
									<th><button class="btn btn-info" id="btnWinning">이벤트 당첨</button></th>	
				    			</tr>
				    		</thead>
				    		<tbody>
				    		
								<c:forEach var="eventVo" items="${adminList}" varStatus="status">
										
								
									<tr>
										<td><a href="/event/event_read?event_no=${eventVo.event_no}" data-pno="${eventVo.participate_no}">${eventVo.event_title}</a></td>
										<td>${eventVo.userid}</td>
										<td>${eventVo.event_start_date}</td>
										<td>${eventVo.event_end_date}</td>
										
										<c:choose>
										<c:when test = "${eventVo.event_win == 'y'}">
										<td>당첨</td>
										</c:when>
										<c:otherwise>
										<td>미당첨</td>
										</c:otherwise>
										</c:choose>
										
										<th><input type="checkBox" id="chkBox" data-pno="${eventVo.participate_no}"></th>
									</tr>
									
									
								
								</c:forEach>
							
							</tbody>
				    	</table>
			</div>
			
			
			
			<!-- 유수연 각 페이지의 내용이 여기 뜨도록 해주세요 -->
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-1"></div>
	</div>
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>