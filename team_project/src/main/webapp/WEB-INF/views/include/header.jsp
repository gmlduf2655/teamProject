<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Movier</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">
    
    <!-- Bootstrap icon -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">

	<!-- 임희열 : JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>      
    
    <!-- 임희열 : Naver Login API script -->
    <script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>    

	<!-- 임희열 : 우측 상단부분 css 조금 바꿨습니다 -->    
    <style>
    	.header__right>a{
    		margin-right:15px;
    	}
    </style>
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="header__logo">
                        <a href="/">
                            <img src="/resources/images/logo.png" alt="">
                        </a>
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li class="active" <%-- 조재호 : c:if 조건 입력 후  class 제거 --%>
                                	<c:if test="">
                                		class="active"
                                	</c:if>
                                ><a href="/">홈</a></li>
                                <li
                                	<c:if test="">
                                		class="active"
                                	</c:if>
                                >
                                	<a href="./categories.html">예매</a>
                                    <ul class="dropdown">
                                        <li><a href="./categories.html">영화별</a></li>
                                        <li><a href="./anime-details.html">지역별</a></li>
                                        <li><a href="./anime-watching.html">영화관별</a></li>
                                    </ul>
                                </li>
                                <li
                                	<c:if test="">
                                		class="active"
                                	</c:if>
                                >
									<a href="/movie/movieList">영화정보</a>
                                    <ul class="dropdown">
                                        <li><a href="/movie/movieList">현재 상영작</a></li>
                                        <li><a href="./anime-details.html">상영 예정작</a></li>
                                    </ul>
								</li>
                                <li
                                	<c:if test="">
                                		class="active"
                                	</c:if>
                                >
									<a href="/event/event_list">이벤트</a>
                                    <ul class="dropdown">
                                        <li><a href="/event/event_list">현재 진행중</a></li>
                                        <li><a href="/event/winner_info">당첨자 발표</a></li>
                                    </ul>
								</li>
								<li>
									<a href="/review/review_list">평점/리뷰</a>
								</li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-2">
                	<!-- 임희열 : 우측 상단 부분에 로그인버튼이랑 로그아웃 버튼 추가했습니다 -->
                    <div class="header__right">
                        <a href="#" class="search-switch"><i class="bi bi-search"></i></a>
                        <!-- 임희열 : 로그인 되어있지 않을 때는 마이페이지를 누르면 로그인페이지로 이동하게함 -->
                        <a 
                        <c:choose>
                        	<c:when test="${empty loginUserVo}">
                        		 href="/user/login_form"
                        	</c:when>
                        	<c:otherwise>
                        		href="/user/mypage"
                        	</c:otherwise>
                        </c:choose>
                        
                        ><i class="bi bi-person-fill"></i></a>
                        <!-- 임희열 : 로그인 되어있지 않을 떄는 로그인 버튼을 로그인 되어있을 때는 로그아웃버튼을 보여줌 -->
                        <c:choose>
                        	<c:when test="${empty loginUserVo}">
                        		<a href="/user/login_form">로그인</a>
                        	</c:when>
                        	<c:otherwise>
                        		<a href="/user/logout">로그아웃</a>
                        	</c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header End -->
    
    <!-- Product Section Begin -->
    <section class="product spad">

