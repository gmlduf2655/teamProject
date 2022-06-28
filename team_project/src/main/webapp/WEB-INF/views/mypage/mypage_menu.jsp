<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	$(document).ready(function(){
		$(".mypage_menu").click(function(){
			var ul = $(this).parents("h4").next();
			if(ul.css("display") == "none"){
				ul.css("display", "block");
			}else if(ul.css("display") == "block"){
				ul.css("display", "none");
			}else {}
		});
	});
</script>
<div style= "padding:15px 0px" class="menubar">
	<h3 style="color:white;" class="mb-4"><a href="/mypage/main?userno=${param.userno}" style="color:white;">메뉴</a></h3>
	<hr align="left" width="80%">
	<!-- 내 정보 -->
	<div class="mb-4">
		<h4 class="mb-3"><a class="mypage_menu">내 정보</a></h4>
		<ul style="padding-left:50px;">
		    <li><a href="/mypage/userinfo?userno=${loginUserVo.userno}">내 정보</a></li>
		    <li><a href="/mypage/change_password_form?userno=${loginUserVo.userno}">비밀번호 변경</a></li>
		    <li><a href="/mypage/unregister_form?userno=${loginUserVo.userno}">회원 탈퇴</a></li>
		</ul>
	</div>
	<!-- 내 정보 끝 -->
	<hr align="left" width="80%">
	<!-- 영화 예매 -->
	<div class="mb-4">
		<h4 class="mb-3"><a class="mypage_menu">영화 예매</a></h4>
		<ul style="padding-left:50px;">
			<li><a href="/mypage/ticket_movie_list?userno=${loginUserVo.userno}">영화 예매 내역</a></li>
			<li><a href="/mypage/like_movie_list?userno=${loginUserVo.userno}">좋아요 누른 영화</a></li>
		</ul>
	</div>
	<!-- 영화 예매 끝 -->
	<hr align="left" width="80%">
	<!-- 포인트 -->
	<div class="mb-4">
		<h4 class="mb-3"><a class="mypage_menu">포인트</a></h4>
		<ul style="padding-left:50px;">
			<li><a href="/point/point_list?userno=${loginUserVo.userno}&page=1">포인트 내역</a></li>
		    <li><a href="/point/charge_point_form?userno=${loginUserVo.userno}">포인트 충전</a></li>
		</ul>
	</div>
	<!-- 포인트 끝 -->
	<hr align="left" width="80%">
	<!-- 내 활동 -->
	<div class="mb-2">
		<h4 class="mb-3"><a class="mypage_menu">내 활동</a></h4>
		<ul style="padding-left:50px;">
		    <li><a href="/mypage/write_review_list?userno=${loginUserVo.userno}&page=1">내 리뷰</a></li>
		    <li><a href="/mypage/participate_event_list?userno=${loginUserVo.userno}&page=1">참여 이벤트</a></li>
			<li><a href="/mypage/commentListuser?userid=${userVo.userid}">내가 단 댓글</a></li>		
		</ul>
	</div>
	<!-- 내 활동 끝 -->
</div>