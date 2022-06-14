<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>쪽지 보관함</title>
<style>
	option:hover{
		background-color:lightgray;
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
		
		// 삭제 버튼 눌렀을 때
		$("#form_btn").click(function(){
			var messages = $(".messages");
			var type = "${param.type}";
			var messagenos = [];
				$.each(messages , function(i,v){
					if($(this).is(":checked")){
						messagenos.push($(this).val());
					}
				});
			var sData = {
				"messagenos" : messagenos,
				"type" : type,
				"userid" : "${loginUserVo.userid}",
				"page" : "${param.page}"
			};
			$.ajax({
				type : "post",
				async : "true",
				url : "/message/multi_message_delete_run",
				data : {
					sData : JSON.stringify(sData)
				},
				success : function(rData){
					console.log(rData);
					$("#tbody").html("");
					$.each(rData, function(i,v){
						console.log(v);
						console.log(v.messageno);
						var html = "";
						html += "<tr class='tr_link' data-messageno='"+ v.messageno +"'>";
						html += "<td><input type='checkbox' class='messages' name='messages' value='"+ v.messageno +"'></td>"
						html += "<td>"+ v.messageno +"</td>"
						html += "<td class='td_link' data-messageno='"+ v.messageno +"'>"+ v.message_title +"</td>"
						html += "<td>"+ v.sender +"</td>"
						html += "<td>"+ v.receiver +"</td>"
						html += "<td>"+ v.message_date +"</td>"
						if(v.read_date == null){
							html += "<td>읽지 않음</td>";
						}else {
							html += "<td>"+ v.read_date +"</td>";
						}
						html += "</tr>";
						$("#tbody").append(html);
						$("#select_all").prop("checked", false);
					});
				}
			});
			
		});
		
		$("#search_btn").click(function(){
			var searchType = $("#searchType").val();
			var keyword = $("#keyword").val();
			location.href = "/message/message_list?page=1&type=${param.type}&searchType=" + searchType + "&keyword=" + keyword;
		});
	});
</script>
<style>
.tr_link:hover {
	background-color: lightgray;
	cursor: pointer;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<!-- 제목 부분 -->
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron">
					<h2>쪽지보관함</h2>
					<a class="btn btn-primary"
						href="/message/write_form?page=${param.page}&receiver=">쪽지 보내기</a>
				</div>
			</div>
		</div>
		<!-- 메세지 목록 부분 -->
		<div class="row">
			<div class="col-md-12">
				<!-- nav 부분 -->
				<nav class="row">
					<div class="col-md-4">
						<div class="tabbable" id="tabs-75640">
							<ul class="nav nav-tabs">
								<li class="nav-item"><a
									class="nav-link
											<c:if test="${param.type == 'receive'}">active show</c:if>
											"
									href="/message/message_list?page=1&type=receive">받는쪽지함</a></li>
								<li class="nav-item"><a
									class="nav-link 
											<c:if test="${param.type == 'send'}">active show</c:if>
											"
									href="/message/message_list?page=1&type=send">보낸쪽지함</a></li>
							</ul>
						</div>
					</div>
					<div class="col-md-1"></div>
					<div class="col-md-2">
						<select name="searchType" class="form-control" id="searchType">
							<option value="t">제목</option>
							<option value="c">내용</option>
							<option value="u">유저</option>
							<option value="tcu">모두 포함</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" class="form-control" name="keyword" id="keyword">
					</div>
					<div class="col-md-2" style="padding-left:0px;">
						<a type="button" class="btn btn-primary" id="search_btn">검색</a>
					</div>
				</nav>
				<table class="table">
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
											<div class="dropdown">
												<button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown">
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
													<a class="dropdown-item" href="/mypage/main?userno=1">정보보기</a> 
													<c:choose>
														<c:when test="${param.type == 'send'}">
															<a class="dropdown-item" href="/message/write_form?page=${param.page}&receiver=${messageVo.receiver}">글쓰기</a>
														</c:when>
														<c:when test="${param.type == 'receive'}">
															<a class="dropdown-item" href="/message/write_form?page=${param.page}&receiver=${messageVo.sender}">글쓰기</a>
														</c:when>
													</c:choose>
													<a class="dropdown-item" href="#">팔로우하기</a> 
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
			</div>
		</div>
		<!-- 메세지 목록 부분 끝 -->

		<!-- 글 목록 페이징 부분-->
		<div class="row">
			<div class="col-md-12">
				<nav>
					<ul class="pagination justify-content-center" id="pagination">
						<c:if test="${pagingDto.startPage > 1}">
							<li class="page-item"><a class="page-link move_page"
								href="1">처음으로</a></li>
							<li class="page-item"><a class="page-link move_page"
								href="${pagingDto.startPage-1}">이전</a></li>
						</c:if>
						<c:forEach var="i" begin="${pagingDto.startPage}"
							end="${pagingDto.endPage}">
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
			<button type="button" class="btn btn-primary" id="form_btn">삭제하기</button>
		</div>
		<!-- 메세지 다중 삭제 버튼 끝-->
	</div>
</body>
</html>