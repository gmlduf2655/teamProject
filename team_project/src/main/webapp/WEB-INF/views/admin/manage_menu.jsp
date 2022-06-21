<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row admin-menu">
	<div  class="col-md-12">
		<div class="product__page__title">
			<div class="section-title">
				<h5 style="color : black;"><b>관리자 메뉴</b></h5>
			</div>
		</div>
		<div class="product__page__title">
			<div class="section-title">
				<h5 style="color : black;">회원 관리</h5>
			</div>
			<div class="h6li">
				<h6><a id="" href="/admin/user_list">회원목록</a></h6>
				<h6><a id="" href="/admin/total_point_list?page=1">회원 포인트 내역</a></h6>
				<h6><a id="" href="/admin/create_point_code?page=1">포인트 코드 생성기</a></h6>
			</div>
		</div>
		
		<div class="product__page__title">
			<div class="section-title">
				<h5 style="color : black;">영화관 관리</h5>
			</div>
			<div class="h6li">
				<h6><a id="" href="/mkcinema/cinema">영화관 관리</a></h6>
			</div>
		</div>	
		
		<div class="product__page__title">
			<div class="section-title">
				<h5 style="color : black;">영화 관리</h5>
			</div>
			<div class="h6li">
				<h6><a id="" href="/dbcontrol/dbApicontrol">영화등록관리(API)</a></h6>
				<h6><a id="" href="/dbcontrol/serverListDB">영화관리</a></h6>
			</div>
		</div>	
		
		<div class="product__page__title">
			<div class="section-title">
				<h5 style="color : black;">평점/리뷰 관리</h5>
			</div>
			<div class="h6li">
				<h6><a id="" href="/admin/event_admin_reviewList">평점/리뷰 목록</a></h6>
			</div>
		</div>	
		
		<div class="product__page__title">
			<div class="section-title">
				<h5 style="color : black;">이벤트 관리</h5>
			</div>
			<div class="h6li">
				<h6><a id="" href="/event/write_form">이벤트 등록</a></h6>
				<h6><a id="" href="/admin/event_admin_list">이벤트 목록</a></h6>
			</div>
		</div>	
		
	</div>
</div>