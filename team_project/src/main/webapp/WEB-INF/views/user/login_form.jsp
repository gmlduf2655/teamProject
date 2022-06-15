<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<style>
		#google_login{
			width:50px;
			height:50px;
			background:#ff4343;
			color:white;
			font-size:25px;
			line-height:50px;
			border-radius:5px;
			margin-top:14px;
			margin-left:20px;
			cursor:pointer;
		}
		.login__form:after{
		    position: absolute;
		    right: -14px;
		    top: -40px;
		    height: 360px;
		    width: 1px;
		    background: rgba(255, 255, 255, 0.2);
		    content: "";
		}
	</style>
    <script>
    	$(document).ready(function(){
    		// 회원가입 성공 여부 메세지 출력
    		var signup_result = "${signup_result}";
    		if(signup_result == "true"){
    			alert("회원가입 성공");	
    		}else if(signup_result == "false"){
    			alert("회원가입 실패");	
    		}
    		
    		// 비밀번호 변경 성공 여부 메세지 출력 
    		var update_userpw_result = "${update_userpw_result}";
    		if(update_userpw_result == "true"){
    			alert("비밀번호 변경 성공");
    		}else if(update_userpw_result == "false"){
    			alert("비밀번호 변경 실패");
    		}
    	$("#google_login").click(function(){
    		location.href="https://accounts.google.com/o/oauth2/v2/auth?" + 
    			"client_id=914062629252-76nqhv6vvk62khoee53f23kngfm9ec9u.apps.googleusercontent.com&" +
    			"redirect_uri=http://localhost:80/user/google_auth&" +
    			"response_type=code&" +
    			"scope=email%20profile%20openid&" +
    			"access_type=offline";
    	});
    		
//     		// 네이버 간편 로그인 버튼을 눌렀을때 필요한 clientId, callbackUrl 설정
// 			var naverLogin = new naver.LoginWithNaverId({
// 				clientId: "VjgDvLJM29qpp3O__mxp",
// 				callbackUrl: "http://localhost:80/user/naver_login"
// 			});
//     		// 네이버 간편 로그인 버튼을 누르면 네이버 로그인 페이지로 이동하게함
// 			naverLogin.init();
    	});
    </script> 
    
    <!-- 제목 -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>로그인</h2>
<!--                         <p>Welcome to the official Anime blog.</p> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 제목 끝 -->

    <!-- 로그인 -->
    <section class="login spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>로그인</h3>
                        <form action="/user/login_run" method="post">
                            <div class="input__item">
                                <input type="text" placeholder="아이디" name="userid" required>
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <input type="password" placeholder="비밀번호" name="userpw" required>
                                <span class="icon_lock"></span>
                            </div>
                            <button type="submit" class="site-btn">로그인</button>
                        </form>
                        <br>
                        <a href="/user/find_user_id_and_pwd" style="color:white;">아이디 혹은 비밀번호를 잊어버리셨나요?</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__register">
                        <h3>계정이 없으신가요?</h3>
                        <a href="/user/signup_form" class="primary-btn">회원가입하기</a>
                    </div>
                </div>
            </div>
            <div class="login__social">
                <div class="row d-flex justify-content-center">
                    <div class="col-lg-6">
                        <div class="login__social__links">
                            <ul>
<!--                                 <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With Facebook</a></li> -->
<!--                                 <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a></li> -->
<!--                                 <li><a href="#" class="google"><i class="fa fa-google"></i> 구글로 로그인 하기</a></li> -->
<!--                                 <li> -->
<%--                                 	<a id="naverIdLogin_loginButton" href="${naverLoginUrl}" class="twitter" style="background:#03C75A;"> <!-- #2DB400 --> --%>
<!--                                 			<img src="/resources/images/naver_logo.png" style="width:20px;position:absolute;left:32px;"> -->
<!--                                 			네이버로 로그인하기 -->
<!--                                 	</a> -->
<!--                                 </li> -->
                                <li class="row" style="justify-content:center;">
                                	<h3 style="color:white;margin-top:14px;line-height:50px;margin-left:120px;">간편로그인</h3>
                                	<div id="google_login" style="width:50px;height:50px;background:#ff4343;color:white;font-size:25px;line-height:50px;border-radius:5px;margin-top:14px;margin-left:20px;"><i class="fa fa-google"></i></div>
                                	<a href="${naverLoginUrl}" style="width:50px;margin-left:20px;">
                                		<img src="/resources/images/naver_logo.png" style="width:50px">
                                	</a>
                                </li>
                                <li>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 로그인 끝 -->

<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>