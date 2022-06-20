<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.menubar>*{
	padding-left:10px;
}
</style>
<script>
	$(document).ready(function(){
		$(".mypage_menu").click(function(){
			console.log("클릭됨");
			var ul = $(this).parents("h3").next();
			if(ul.css("display") == "none"){
				ul.css("display", "block");
			}else if(ul.css("display") == "block"){
				ul.css("display", "none");
			}else {}
		});
	});
</script>
<div style="border:1px solid white; padding:15px 0px" class="menubar">
	<h2 style="color:white;" class="mb-4"><a href="/mypage/main?userno=${param.userno}" style="color:white;">메뉴</a></h2>
	<hr>
	<div class="mb-4">
		<h3 class="mb-3"><a class="mypage_menu">내 정보</a></h3>
		<ul style="padding-left:50px;">
		    <li><a href="/mypage/userinfo?userno=${loginUserVo.userno}">내 정보</a></li>
		    <li><a href="/mypage/change_password_form?userno=${loginUserVo.userno}">비밀번호 변경</a></li>
		    <li><a href="/mypage/unregister_form?userno=${loginUserVo.userno}">회원 탈퇴</a></li>
		</ul>
	</div>
	<hr>
	<div class="mb-4">
		<h3 class="mb-3"><a class="mypage_menu">영화 예매</a></h3>
		<ul style="padding-left:50px;">
			<li><a href="/mypage/ticket_movie_list?userno=${loginUserVo.userno}">영화 예매 내역</a></li>
			<li><a href="/mypage/like_movie_list?userno=${loginUserVo.userno}">좋아요 누른 영화</a></li>
		</ul>
	</div>
	<hr>
	<div class="mb-4">
		<h3 class="mb-3"><a class="mypage_menu">포인트</a></h3>
		<ul style="padding-left:50px;">
			<li><a href="/point/point_list?userno=${loginUserVo.userno}&page=1">포인트 내역</a></li>
		    <li><a href="/point/charge_point_form?userno=${loginUserVo.userno}">포인트 충전</a></li>
		</ul>
	</div>
	<hr>
	<div class="mb-2">
		<h3 class="mb-3"><a class="mypage_menu">내 활동</a></h3>
		<ul style="padding-left:50px;">
		    <li><a href="/mypage/write_review_list?userno=${loginUserVo.userno}">내 리뷰</a></li>
		    <li><a href="/mypage/participate_event_list?userno=${loginUserVo.userno}">참여 이벤트</a></li>
		</ul>
	</div>
</div>