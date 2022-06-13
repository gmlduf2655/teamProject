<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<title>쪽지 보관함</title>
<script type="text/javascript">
	$(document).ready(function(){
		var add_result = "${add_result}";
		if(add_result == "true"){
			alert("쪽지 작성 성공");
		}else if(add_result == "false"){
			alert("쪽지 작성 실패");
			
		}else {}
		
		$(".tr_link").click(function(){
			var messageno = $(this).attr("data-messageno");
			location.href="/message/read?messageno=" + messageno;
		});
	});
</script>
<style>
	.tr_link:hover{
		background-color:lightgray;
		cursor:pointer;
	}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron">
					<h2>쪽지보관함</h2>
					<a class="btn btn-primary" href="/message/write_form">쪽지 보내기</a>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="tabbable" id="tabs-75640">
					<ul class="nav nav-tabs">
						<li class="nav-item">
							<a class="nav-link
								<c:if test="${param.type == 'receive'}">active show</c:if>
								"
							href="/message/message_list?userno=${loginUserVo.userno}&type=receive" >받는 쪽지함</a>
						</li>
						<li class="nav-item">
							<a class="nav-link 
								<c:if test="${param.type == 'send'}">active show</c:if>
								"
							href="/message/message_list?userno=${loginUserVo.userno}&type=send" >보낸 쪽지함</a>
						</li>
					</ul>
				</div>
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>메세지 제목</th>
							<th>보낸 사람</th>
							<th>받는 사람</th>
							<th>작성일</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="messageVo" items="${messageList}">
							<tr class="tr_link" data-messageno="${messageVo.messageno}" >
								<td>${messageVo.messageno}</td>
								<td>${messageVo.message_title}</td>
								<td>${messageVo.sender}</td>
								<td>${messageVo.receiver}</td>
								<td>${messageVo.message_date}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>