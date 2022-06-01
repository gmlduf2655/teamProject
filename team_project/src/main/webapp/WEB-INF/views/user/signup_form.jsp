<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>회원가입</h2>
<!--                         <p>Welcome to the official Anime blog.</p> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Signup Section Begin -->
    <section class="signup spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>회원가입</h3>
                        <form action="/user/signup_run" method="post">
                            <div class="input__item">
                                <input type="text" placeholder="아이디" name="userid" required>
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="비밀번호" name="userpw" required>
                                <span class="icon_lock"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="이름" name="username" required>
                                <span class="icon_profile"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="닉네임" name="nickname" required>
                                <span class="icon_profile"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="이메일" name="email" required>
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="휴대전화번호" name="cellphone" required>
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="주소" name="address" required>
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="프로필이미지" name="profileimage">
                                <span class="icon_mail"></span>
                            </div>

                            <button type="submit" class="site-btn">회원가입</button>
                        </form>
                        <h5>이미 계정이 있으신가요? <a href="/user/login_form">로그인하기</a></h5>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__social__links">
                        <h3>Login With:</h3>
                        <ul>
<!--                                 <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With Facebook</a></li> -->
<!--                                 <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a></li> -->
                        	<li><a href="#" class="google"><i class="fa fa-google"></i> 구글로 로그인 하기</a></li>
                        	<li>
                                <a id="naverIdLogin_loginButton" href="javascript:void(0)" class="twitter" style="background:#03C75A;"> <!-- #2DB400 -->
                                	<img src="/resources/images/naver_logo.png" style="width:20px;position:absolute;left:32px;">
                                	네이버로 로그인하기
                                </a>
                       		</li>
                       </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Signup Section End -->
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>