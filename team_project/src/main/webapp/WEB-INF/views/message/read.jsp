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
<title>메세지 읽기</title>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron">
					<h2>메세지 읽기</h2>
					<p>
						<a class="btn btn-primary btn-large" href="/message/message_list?page=${param.page}&type=receive">목록으로</a>
					</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<form role="form" method="get" action="/message/reply_form">
					<input type="hidden" name="messageno" value="${messageVo.messageno}">
					<div class="form-group">
						<label for="sender"> 보내는 이 </label> 
						<input type="text" class="form-control" id="sender" value="${messageVo.sender}" readonly>
					</div>
					<div class="form-group">
						<label for="receiver"> 받는 이 </label> 
						<input type="text" class="form-control" id="receiver" value="${messageVo.receiver}" readonly/>
					</div>
					<div class="form-group">
						<label for="message_title"> 제목 </label> 
						<input type="text" class="form-control" id="message_title" value="${messageVo.message_title}" readonly/>
					</div>
					<div class="form-group">
						<label for="message_content"> 내용 </label> 
						<div class="form-control" style="height:500px; overflow-y : scroll;">${messageVo.message_content}</div>
					</div>
					<div style="text-align:center">
						<c:if test="${loginUserVo.userid == messageVo.receiver}">
							<button type="submit" class="btn btn-primary" >답장하기</button>
						</c:if>
						<a class="btn btn-primary" id="form_btn" href="/message/delete_run?messageno=${messageVo.messageno}&type=${param.type}">삭제하기</a>
					</div>
				</form>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>