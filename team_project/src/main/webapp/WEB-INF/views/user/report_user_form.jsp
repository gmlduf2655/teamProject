<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<title>신고하기</title>
	
	<script>
		$(document).ready(function(){
			var report_result = "${report_result}";
			if(report_result == "true"){
				alert("신고가 접수되었습니다");
				window.close();
			}else if(report_result == "false"){
				alert("신고를 접수하는데 실패했습니다");
				window.close();
			}
		});
	</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron" style="padding-left:5px;">
					<h2>신고하기</h2>
				</div>
				<form role="form" method="post" action="/report/report_user_run">
					<input type="hidden" name="reporter" value="${loginUserVo.userid}">
					<div class="form-group">
						<label for="reported_user">신고 대상</label> 
						<input type="text" class="form-control" name="reported_user" value="${param.reported_user}" id="reported_user" />
					</div>
					<div class="form-group">
						<label for="report_type">신고 사유</label> 
						<input type="text" class="form-control" name="report_type" id="report_type" />
					</div>
					<div class="form-group">
						<label for="report_desc">신고 내용</label> 
						<textarea rows="10" class="form-control" name="report_desc" id="report_desc" >
						</textarea>
					</div>
					<button type="submit" class="btn btn-primary">전송</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>