<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<script>
	$(document).ready(function(){
		// 아이디 중복 여부 체크
		$("#userid_dupl_check").click(function(){
			var userid = $("#userid").val();
			console.log(userid == "");
			if(userid == ""){
				$("#userid_dupl_check_result").text("아이디를 입력해주세요");
			}else{
				$.ajax({
					type : "post",
					async : "true",
					url : "/user/userid_dupl_check",
					data : { userid : userid },
					success : function(rData){
						console.log(rData);
						if(rData == "true"){
							$("#userid_dupl_check_result").text("이미 존재하는 아이디 입니다");
						}else if(rData == "false"){
							$("#userid_dupl_check_result").text("사용할 수 있는 아이디 입니다");
						}
						
					}
				});
			}
			$("#userid_dupl_check_result").show();
		});
		
		// 닉네임 중복 여부 체크
		$("#nickname_dupl_check").click(function(){
			var nickname = $("#nickname").val();
			console.log(nickname == "");
			if(nickname == ""){
				$("#nickname_dupl_check_result").text("닉네임을 입력해주세요");
			}else{
				$.ajax({
					type : "post",
					async : "true",
					url : "/user/nickname_dupl_check",
					data : { nickname : nickname },
					success : function(rData){
						console.log(rData);
						if(rData == "true"){
							$("#nickname_dupl_check_result").text("이미 존재하는 닉네임입니다");
						}else if(rData == "false"){
							$("#nickname_dupl_check_result").text("사용할 수 있는 닉네임 입니다");
						}
						
					}
				});
			}
			$("#nickname_dupl_check_result").show();
		});
		
		// 프로필 사진 미리보기
		$("#profileimage").change(function(e){
			console.log(e.target.files[0]);
			var file = e.target.files[0];
 			if(file != null && file != ""){
 				var fileReader = new FileReader();
 				fileReader.onload = function(e){
 					$("#preview").attr("src", e.target.result);
 					$("#preview").show();
 				}
 				fileReader.readAsDataURL(file);
 			}else{
 				$("#preview").attr("src", "");
				$("#preview").hide();
 			}
		});
		
		// 회원 가입 버튼 클릭
		$("#signup_btn").click(function(){
			$("#signup_form").submit();
		});
	});
</script>

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
                        <form action="/user/signup_run" method="post" id="signup_form" enctype="multipart/form-data">
                        	<h4 class="mb-4" style="color:white;">필수 입력사항</h4>
                            <div class="input__item">
                                <input type="text" placeholder="아이디" name="userid" id="userid" required>
                                <span class="icon_mail"></span>
	                            <button type="button" class="site-btn" id="userid_dupl_check">아이디 중복확인</button>
	                            <p style="color:white;display:none;" id="userid_dupl_check_result"></p>
                            </div>
                            <div class="input__item">
                                <input type="password" placeholder="비밀번호" name="userpw" id="userpw" required>
                                <span class="icon_lock"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="이름" name="username" id="username" required>
                                <span class="icon_profile"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="닉네임" name="nickname" id="nickname" required>
                                <span class="icon_profile"></span>
                                <button type="button" class="site-btn" id="nickname_dupl_check">닉네임 중복확인</button>
                                <p style="color:white;display:none;" id="nickname_dupl_check_result"></p>
                            </div>
                            <div class="input__item">
                                <input type="email" placeholder="이메일" name="email" id="email" required>
                                <span class="icon_mail"></span>
                                <button type="submit" class="site-btn">이메일 인증</button>
                            </div>
                            <h4 class="mb-4" style="color:white;">선택 입력사항</h4>
                            <div class="input__item">
                                <input type="number" placeholder="휴대전화번호" name="cellphone" id="cellphone">
                                <span class="icon_mail"></span>
                            </div>
                            <div class="input__item">
                                <input type="text" placeholder="주소" name="address" id="address">
                                <span class="icon_mail"></span>
                            </div>
                            <h4 class="mb-4" style="color:white;">프로필 사진</h4>
                            <div class="input__item">
                                <input class="mb-4" type="file" placeholder="프로필이미지" name="file" id="profileimage">
                                <span class="icon_mail"></span>
                                <img style="display:none;" src="/resources/images/logo.png" id="preview" width="370px">
                            </div>

                            <button type="button" class="site-btn" id="signup_btn">회원가입</button>
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