<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<style>
	h3,h4{
		color:white;
	}
	hr{
		background-color:white;
	}
	option:hover{
		background-color:lightgray;
	}
	.tr_link:hover{
		cursor : pointer;
		background-color:gray;
	}
	.nice-select{
		color:black;
	}
	#pagination a{
		background-color:#e53637;
		border-color:#e53637;
		color:white;
	}
	.nav-link{
		color:white;
	}
	
</style>
<script type="text/javascript">
	$(document).ready(function() {
		// 쪽지 작성 여부 확인 메세지 출력
		var add_result = "${add_result}";
		if (add_result == "true") {
			alert("쪽지 작성 성공");
		} else if (add_result == "false") {
			alert("쪽지 작성 실패");
		} else {}

		// 쪽지 삭제 여부 확인 메세지 출력
		var delete_result = "${delete_result}";
		if (delete_result == "true") {
			alert("쪽지 삭제 성공");
		} else if (add_result == "false") {
			alert("쪽지 삭제 실패");
		} else {}

		// 메세지 제목 부분을 클릭했을 때 메세지 상세 정보 확인
		$(".td_link").click(function() {
			var messageno = $(this).attr("data-messageno");
			location.href = "/message/read?page=${param.page}&type=${param.type}&messageno="+ messageno;
		});

		// 한 페이지에 있는 모든 메세지를 선택할 때 사용
		$("#select_all").click(function() {
			if ($(this).is(":checked")) {
				$(".messages").prop("checked", true);
			} else {
				$(".messages").prop("checked", false);
			}
		});
		
// 		// 삭제 버튼 눌렀을 때(비동기로 구현하려고 했으나 페이징 부분과 on() 메서드 사용 곤란으로 구현하지는 않음)
// 		$("#form_btn").click(function(){
// 			var messages = $(".messages");
// 			var type = "${param.type}";
// 			var messagenos = [];
// 			// 삭제할 메세지를 messagenos변수에 담음
// 			$.each(messages , function(i,v){
// 				if($(this).is(":checked")){
// 					messagenos.push($(this).val());
// 				}
// 			});
// 			var sData = {
// 				"messagenos" : messagenos,
// 				"type" : type,
// 				"userid" : "${loginUserVo.userid}",
// 				"page" : "${param.page}"
// 			};
// 			// 메세지를 삭제 한후 데이터를 다시 조회해서 보여줌
// 			$.ajax({
// 				type : "post",
// 				async : "true",
// 				url : "/message/multi_message_delete_run",
// 				data : {
// 					sData : JSON.stringify(sData)
// 				},
// 				success : function(rData){
// 					console.log(rData);
// 					$("#tbody").html("");
// 					$.each(rData, function(i,v){
// 						console.log(v);
// 						console.log(v.messageno);
// 						var html = "";
// 						html += "<tr class='tr_link' data-messageno='"+ v.messageno +"'>";
// 						html += "<td><input type='checkbox' class='messages' name='messages' value='"+ v.messageno +"'></td>"
// 						html += "<td>"+ v.messageno +"</td>"
// 						html += "<td class='td_link' data-messageno='"+ v.messageno +"'>"+ v.message_title +"</td>"
// 						html += "<td>"+ v.sender +"</td>"
// 						html += "<td>"+ v.receiver +"</td>"
// 						html += "<td>"+ v.message_date +"</td>"
// 						if(v.read_date == null){
// 							html += "<td>읽지 않음</td>";
// 						}else {
// 							html += "<td>"+ v.read_date +"</td>";
// 						}
// 						html += "</tr>";
// 						$("#tbody").append(html);
// 						$("#select_all").prop("checked", false);
// 					});
// 				}
// 			});
			
// 		});

		// 삭제 버튼 눌렀을 때(동기로 구현)
		$("#form_btn").click(function(){
			var messages = $(".messages");
			var messagenos = [];
			// 삭제할 메세지를 messagenos변수에 담음
			$.each(messages , function(i,v){
				if($(this).is(":checked")){
					messagenos.push($(this).val());
					$("#multi_delete_form").append("<input type='hidden' name='sData' value='"+ $(this).val() +"'>");
				}
			});
			if(messagenos.length > 0){
				$("#multi_delete_form").submit();
			}
		});
		
		// 검색 버튼 눌렀을 때
		$("#search_btn").click(function(){
			var searchType = $("#searchType").val();
			var keyword = $("#keyword").val();
			location.href = "/message/message_list?page=1&type=${param.type}&searchType=" + searchType + "&keyword=" + keyword;
		});
		
		// 다른 유저 정보보기 버튼 눌렀을 때
		$(".move_mypage").click(function(e){
			e.preventDefault();
			var userid = $(this).parents("div").prev().eq(0).text();
			//var userid = $("#dropdownMenuButton").text();
			userid = userid.trim();
			console.log(userid);
			$.ajax({
				type : "post",
				async : "true",
				url : "/user/get_userno_by_userid",
				data : {
					userid : userid
				},
				success : function(rData){
					var openNewWindow = window.open("about:blank");
					openNewWindow.location.href = "/mypage/main?userno=" + rData;
				}
			});

		});
		
		// 신고 버튼 클릭했을 때
		$(".report_btn").click(function(){
			var reported_user = $(this).parents("div").prev().eq(0).text().trim();
			console.log("reported_user" + reported_user);
			var open = window.open("/report/report_user_form?reported_user=" + reported_user, "신고 하기", "width=600, height=800");
		});
	});
</script>

    <!-- 제목 -->
<!--     <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg"> -->
<!--         <div class="container"> -->
<!--             <div class="row"> -->
<!--                 <div class="col-lg-12 text-center"> -->
<!--                     <div class="normal__breadcrumb__text"> -->
<!--                         <h2>메세지 목록</h2> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </section> -->
    <!-- 제목 끝 -->

    <!-- 아이디  찾기 결과 -->
    <section >
		<!-- 메세지 목록 부분 -->
		<div class="row " style="color:white;">
			<!-- 메뉴 부분 -->
			<div class="col-md-2">
				<div style="padding:0px 0px;color:white;margin-left:90px;" class="menubar">
					<h3 style="color:white;" class="mb-4">
						<a href="/message/write_form?page=${param.page}&receiver=" style="color:white;">쪽지 보내기</a>
					</h3>
					<hr align="left" width="85%">
					<div class="mb-4">
						<h5 class="mb-3">
							<a class="nav_link text-white" href="/message/message_list?page=1&type=receive" style="color:white">받는 쪽지함</a>
						</h5>
					</div>
					<div class="mb-4">
						<h5 class="mb-3"><a class="nav_link text-white" href="/message/message_list?page=1&type=send">보낸 쪽지함</a></h5>
					</div>
				</div>			
			</div>
			<!-- 메뉴 부분 끝 -->
			<div class="col-md-8">
				<!-- nav 부분 -->
				<nav class="row mb-3" >
					<div class="col-md-2">
						<div>
							<h3>
								<c:choose>
									<c:when test="${param.type == 'receive'}">받는 쪽지함</c:when>
									<c:when test="${param.type == 'send'}">보낸 쪽지함</c:when>
								</c:choose>
							</h3>
						</div>
					</div>
					<div class="col-md-4">
						<form id="multi_delete_form" method="post" action="/message/multi_message_delete_run">
							<input type="hidden" name="type" value="${param.type}">
							<input type="hidden" name="searchType" value="${param.searchType}">
							<input type="hidden" name="keyword" value="${param.keyword}">
							<input type="hidden" name="userid" value="${loginUserVo.userid}">
							<button type="button" class="site-btn" id="form_btn">선택 내용 삭제</button>
						</form>
					</div>
					<div class="col-md-2" style="display:flex;justify-content: flex-end;">
						<select name="searchType" id="searchType" style="color:black;">
							<option value="t"
								<c:if test="${pagingDto.searchType == 't'}">selected</c:if>
							>제목</option>
							<option value="c"
								<c:if test="${pagingDto.searchType == 'c'}">selected</c:if>
							>내용</option>
							<option value="u"
								<c:if test="${pagingDto.searchType == 'u'}">selected</c:if>
							>유저</option>
							<option value="tcu"
								<c:if test="${pagingDto.searchType == 'tcu'}">selected</c:if>
							>모두 포함</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" class="form-control" name="keyword" id="keyword" value="${param.keyword}">
					</div>
					<div class="col-md-1" style="padding-left:0px;">
						<button type="button" class="site-btn" id="search_btn">검색</button>
					</div>
				</nav>
				<!-- nav 부분 끝-->
				<!-- 테이블 부분 -->
				<table class="table" style="color:white">
					<thead>
						<tr>
							<th><input type="checkbox" id="select_all"></th>
							<th>#</th>
							<th>메세지 제목</th>
							<c:choose>
								<c:when test="${param.type == 'send'}">
									<th>받는 이</th>
								</c:when>
								<c:when test="${param.type == 'receive'}">
									<th>보낸 이</th>
								</c:when>
							</c:choose>
							<th>작성일</th>
							<th>읽은 날짜</th>
						</tr>
					</thead>
					<tbody id="tbody">
						<c:forEach var="messageVo" items="${messageList}">
							<c:choose>
								<c:when
									test="${param.type == 'send' and messageVo.sender_delete == 'T'}">
								</c:when>
								<c:when
									test="${param.type == 'receive' and messageVo.receiver_delete == 'T'}">
								</c:when>
								<c:otherwise>
									<tr class="tr_link" data-messageno="${messageVo.messageno}">
										<td><input type="checkbox" class="messages" name="messages" value="${messageVo.messageno}"></td>
										<td>${messageVo.messageno}</td>
										<td class="td_link" data-messageno="${messageVo.messageno}">${messageVo.message_title}</td>
										<td>
											<div class="dropdown" style="color:white">
												<button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" 
												data-toggle="dropdown" style="color:white;">
												<c:choose>
													<c:when test="${param.type == 'send'}">
														${messageVo.receiver}
													</c:when>
													<c:when test="${param.type == 'receive'}">
														${messageVo.sender}
													</c:when>
												</c:choose>
												</button>
												<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
													<a class="dropdown-item move_mypage" href="#" >정보보기</a> 
													<c:choose>
														<c:when test="${param.type == 'send'}">
															<a class="dropdown-item" href="/message/write_form?page=${param.page}&receiver=${messageVo.receiver}">글쓰기</a>
														</c:when>
														<c:when test="${param.type == 'receive'}">
															<a class="dropdown-item" href="/message/write_form?page=${param.page}&receiver=${messageVo.sender}">글쓰기</a>
														</c:when>
													</c:choose>
													<a class="dropdown-item" href="#">팔로우하기</a> 
													<a class="dropdown-item report_btn" >신고하기</a> 
												</div>
											</div>
										</td>										
										<td>${messageVo.message_date}</td>
										<c:choose>
											<c:when test="${empty messageVo.read_date}">
												<td>읽지 않음</td>
											</c:when>
											<c:otherwise>
												<td>${messageVo.read_date}</td>
											</c:otherwise>
										</c:choose>
									</tr>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</tbody>
				</table>
				<!-- 테이블 부분 끝 -->
			</div>
			<div class="col-md-2"></div>
		</div>
		<!-- 메세지 목록 부분 끝 -->

		<!-- 글 목록 페이징 부분-->
		<div class="row mb-3">
			<div class="col-md-12">
				<nav>
					<ul class="pagination justify-content-center" id="pagination" >
						<c:if test="${pagingDto.startPage > 1}">
							<li class="page-item"><a class="page-link move_page"
								href="1">처음으로</a></li>
							<li class="page-item"><a class="page-link move_page"
								href="${pagingDto.startPage-1}">이전</a></li>
						</c:if>
						<c:forEach var="i" begin="${pagingDto.startPage}"
							end="${pagingDto.totalPage}">
							<li
								<c:choose>
									<c:when test="${i == pagingDto.page}">
										class="page-item active"
									</c:when>
									<c:otherwise>
										class="page-item"		
									</c:otherwise>
								</c:choose>>
								<a class="page-link move_page" href="/message/message_list?page=${i}&type=${param.type}">${i}</a>
							</li>
						</c:forEach>
						<c:if test="${pagingDto.endPage != pagingDto.totalPage}">
							<li class="page-item"><a class="page-link move_page"
								href="${pagingDto.endPage+1}">다음</a></li>
							<li class="page-item"><a class="page-link move_page"
								href="${pagingDto.totalPage}">마지막으로</a></li>
						</c:if>
					</ul>
				</nav>
			</div>
		</div>
		<!-- 글 목록 페이징 부분 끝 -->
		<!-- 메세지 다중 삭제 버튼 -->
		<div style="text-align: center">
<%-- 			<a class="site-btn" href="/message/write_form?page=${param.page}&receiver=">쪽지 보내기</a> --%>
<!-- 			<button type="button" class="site-btn" id="form_btn">삭제하기</button> -->
		</div>
		<!-- 메세지 다중 삭제 버튼 끝-->
    </section>
    <!-- 아이디 찾기 결과 끝 -->
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>