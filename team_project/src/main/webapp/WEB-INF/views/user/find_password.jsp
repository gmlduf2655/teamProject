<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<style>
	input::-webkit-inner-spin-button{
		-webkit-appearance:none;
	}
	#profile_image_label{
		width:370px;
		height:50px;
		background-color:white;
		color:black;
		line-height:50px;
	}
</style>

<script>
	$(document).ready(function(){
		// 임시비밀번호 받기 버튼
		$("#email_auth_btn").click(function(){
			var email = $("#email").val();
			console.log(email);
			$.ajax({
				type : "post",
				async : "true",
				url : "/mail/get_password",
				data : {email : email},
				success : function(rData){
					console.log(rData);
					$("#email_auth_answer").text("이메일로 임시 비밀번호를 전송했습니다");
					$("#email_auth_answer").show();
				}
			});
		});
		
		// 회원 가입 버튼 클릭
		$("#signup_btn").click(function(){
			if(userid_dupl){
				alert("아이디를 다시한번 확인해 주세요");
			}else if(nickname_dupl){
				alert("닉네임을 다시한번 확인해 주세요");
			}else{
				$("#signup_form").submit();
			}
		});
		
	});
</script>

    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>비밀번호 찾기</h2>
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
                        <h3>비밀번호 찾기</h3>
                        <form action="/user/signup_run" method="post" id="signup_form" enctype="multipart/form-data">
                            <div class="input__item">
                                <input type="email" placeholder="이메일" name="email" id="email" required>
                                <span class="icon_mail"></span>
                                <button type="button" class="site-btn mb-4" id="email_auth_btn">이메일 인증</button>
                                <input type="number" placeholder="인증코드 6자리 입력" id="email_auth_code" style="display:none;">
                                <button type="button" class="site-btn" id="email_auth_code_btn" style="display:none;">전송</button>
                                <p style="color:white;display:none;" id="email_auth_answer">이메일 인증 성공하였습니다</p>
                            </div>

                            <a class="site-btn" id="signup_btn" href="/user/login_form">돌아가기</a>
                        </form>
                        <h5>비밀번호를 기억하셨나요? <a href="/user/login_form">로그인하기</a></h5>
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