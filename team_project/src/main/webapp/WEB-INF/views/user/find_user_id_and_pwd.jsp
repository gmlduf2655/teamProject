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
	.login__form:after{
		display:none;
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
		
	});
</script>

    <!-- 아이디 혹은 비밀번호 찾기 -->
    <section class="signup spad">
        <div class="container">
            <div class="row">
            	<!-- 아이디 찾기 -->
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>아이디 찾기</h3>
                        <form action="/user/find_userid_result" method="post" id="signup_form">
                            <div class="input__item">
                                <input type="text" placeholder="이름" name="username" id="username" required>
                                <span class="icon_profile"></span>
                            </div>
                            <div class="input__item">
                                <input type="email" placeholder="이메일" name="email" id="email" required>
                                <span class="icon_mail"></span>
                                <button type="submit" class="site-btn mb-4" >아이디 찾기</button>
                            </div>
                            <a class="site-btn" id="signup_btn" href="/user/login_form">돌아가기</a>
                        </form>
                    </div>
                </div>
                <!-- 아이디 찾기 끝 -->
                <!-- 비밀번호 찾기 -->
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3>비밀번호 찾기</h3>
                        <form action="/mail/get_password" method="post" id="signup_form" >
                            <div class="input__item">
                                <input type="text" placeholder="아이디" name="userid" id="userid" required>
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <input type="email" placeholder="이메일" name="email" id="email" required>
                                <span class="icon_mail"></span>
                                <button type="submit" class="site-btn mb-4" id="email_auth_btn">비밀번호 찾기</button>
                            </div>
                            <h5>비밀번호를 기억하셨나요? <a href="/user/login_form">로그인하기</a></h5>
                        </form>
                    </div>
                </div>
                <!-- 비밀번호 찾기끝 -->
            </div>
        </div>
    </section>
    <!-- 아이디 혹은 비밀번호 찾기 -->
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>