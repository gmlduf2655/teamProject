<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결재 성공</title>

<!-- 임희열 : JQuery, BootStrapCDN -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		setTimeout(function(){
			window.close();
			opener.location.href="/mypage/main?userno=${loginUserVo.userno}";
		}, 10000);
	});
</script>
</head>
<body>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">
			<c:choose>
				<c:when test="${charge_result == 'true'}">
					<h2>결제 성공 하였습니다!</h2>
				</c:when>
				<c:otherwise>
					<h2>결제 실패 하였습니다 ㅠㅠ</h2>
				</c:otherwise>
			</c:choose>
			<h4>결제 시간 : ${kakaoApproveData.approved_at}</h4>
			<h4>결제 상품 : ${kakaoApproveData.item_name}</h4>
			<h4>결제 금액 : ${kakaoApproveData.amount.total}</h4>
			<h4>결제전 포인트 : ${beforePoint}</h4>
			<h4>결제후 포인트: ${afterPoint}</h4>
			<h4>10초 뒤에 해당 창이 닫힙니다!</h4>
		</div>
		<div class="col-md-3"></div>
	</div>
</body>
</html>