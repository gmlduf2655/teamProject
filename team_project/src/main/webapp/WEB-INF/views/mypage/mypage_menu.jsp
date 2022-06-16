<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    			<h2 style="color:white;" class="mb-4"><a href="/mypage/main?userno=${param.userno}" style="color:white;">메뉴</a></h2>
    			<div class="mb-4">
	    			<h3 class="mb-3">1.내 정보</h3>
	    			<ul style="padding-left:50px;">
	    				<li><a href="/mypage/userinfo?userno=${loginUserVo.userno}">내 정보</a></li>
	    				<li><a href="/mypage/change_password_form?userno=${loginUserVo.userno}">비밀번호 변경</a></li>
	    				<li><a href="/mypage/unregister_form?userno=${loginUserVo.userno}">회원 탈퇴</a></li>
	    			</ul>
    			</div>
    			<div class="mb-4">
	    			<h3 class="mb-3">2.영화 예매</h3>
	    			<ul style="padding-left:50px;">
	    				<li><a href="/mypage/ticket_movie_list?userno=${loginUserVo.userno}">영화 예매 내역</a></li>
	    			</ul>
    			</div>
    			<div class="mb-4">
	    			<h3 class="mb-3">3.포인트</h3>
	    			<ul style="padding-left:50px;">
	    				<li><a href="/point/point_list?userno=${loginUserVo.userno}&page=1">포인트 내역</a></li>
	    				<li><a href="/point/charge_point_form?userno=${loginUserVo.userno}">포인트 충전</a></li>
	    			</ul>
	    		</div>
    			<div class="mb-4">
	    			<h3 class="mb-3">4. 내 활동</h3>
	    			<ul style="padding-left:50px;">
	    				<li><a href="/mypage/write_review_list?userno=${loginUserVo.userno}">내 리뷰</a></li>
	    				<li><a href="/mypage/participate_event_list?userno=${loginUserVo.userno}">참여 이벤트</a></li>
	    			</ul>
	    		</div>