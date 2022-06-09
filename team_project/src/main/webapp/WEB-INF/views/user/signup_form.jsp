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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	$(document).ready(function(){
		var userid_dupl = true;
		var nickname_dupl = true;
		
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
							userid_dupl = true;
						}else if(rData == "false"){
							$("#userid_dupl_check_result").text("사용할 수 있는 아이디 입니다");
							userid_dupl = false;
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
							nickname_dupl = true;
						}else if(rData == "false"){
							$("#nickname_dupl_check_result").text("사용할 수 있는 닉네임 입니다");
							nickname_dupl = false;
						}
						
					}
				});
			}
			$("#nickname_dupl_check_result").show();
		});
		
		// 프로필 사진 미리보기
		$("#profile_image").change(function(e){
			console.log(e.target.files[0]);
			var file = e.target.files[0];
 			if(file != null && file != ""){
 				var fileReader = new FileReader();
 				fileReader.onload = function(e){
 					$("#preview").attr("src", e.target.result);
 					$("#preview").show();
					$("#profile_image_label").text(file.name)
 				}
 				fileReader.readAsDataURL(file);
 			}else{
 				$("#preview").attr("src", "");
				$("#preview").hide();
				$("#profile_image_label").text("파일선택")
 			}
		});
		
		// 이메일 인증 버튼
		$("#email_auth_btn").click(function(){
			var email = $("#email").val();
			console.log(email);
			$.ajax({
				type : "post",
				async : "true",
				url : "/mail/send",
				data : {email : email},
				success : function(rData){
					console.log(rData);
					$("#email_auth_code").show();
					$("#email_auth_code_btn").show();
					$("#email_auth_code_btn").attr("data-code", rData);
				}
			});
		});
		
		// 프로필 이미지 삭제
		$("#image_delete").click(function(){
			console.log($("#profile_image").val());
			$("#profile_image").val("");
			$("#preview").attr("src", "");
			$("#preview").hide();
			$("#profile_image_label").text("파일선택")
		});
		
		// 회원 가입 버튼 클릭
		$("#signup_btn").click(function(){
			if(userid_dupl){
				alert("아이디를 다시한번 확인해 주세요");
			}else if(nickname_dupl){
				alert("닉네임을 다시한번 확인해 주세요");
			}else{
				$("#address").val($("#addr2").val() + " " + $("#addr3").val());
				$("#signup_form").submit();
			}
		});

		// 우편번호 찾기(도로명주소 찾기)버튼을 클릭했을 때
		$("#find_address").click(function () {
	         new daum.Postcode({
	             oncomplete: function(data) {
	                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	 
	                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
	                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
	                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
	 
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraRoadAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraRoadAddr !== ''){
	                    extraRoadAddr = ' (' + extraRoadAddr + ')';
	                }
	                // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	                if(fullRoadAddr !== ''){
	                    fullRoadAddr += extraRoadAddr;
	                }
	 
	                // 우편번호와 주소 정보를 해당 필드에 넣는다.
	                console.log(data.zonecode);
	                console.log(fullRoadAddr);
	                
	                
	                $("[name=addr1]").val(data.zonecode);
	                $("[name=addr2]").val(fullRoadAddr);
	                
	                /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
	                document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
	                document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
	            }
	         }).open();
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
<!--                         <p>Welcome to the official Anime blog.</p> -->
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
                <div class="col-lg-12">
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
                                <button type="button" class="site-btn mb-4" id="email_auth_btn">이메일 인증</button>
                                <input type="number" placeholder="인증코드 6자리 입력" id="email_auth_code" style="display:none;">
                                <button type="button" class="site-btn" id="email_auth_code_btn" style="display:none;">전송</button>
                            </div>
                            <h4 class="mb-4" style="color:white;">선택 입력사항</h4>
                            <div class="input__item">
                                <input type="number" placeholder="휴대전화번호" name="cellphone" id="cellphone">
                                <span class="icon_mail"></span>
                            </div>
                            <h4 class="mb-4" style="color:white;">주소</h4>
                            <div class="input__item" style="color:white;">
                                <input type="hidden" placeholder="주소" name="address" id="address">
								<div class="input__item">                   
								<input style="width: 40%; display: inline;" placeholder="우편번호" name="addr1" id="addr1" type="text" readonly="readonly" >
								    <button type="button" class="btn btn-default"  id="find_address" style="color:white">
								    	<i class="fa fa-search"></i> 우편번호 찾기
								    </button>                               
								</div>
								<div class="input__item">
								    <input style="top: 5px;" placeholder="도로명 주소" name="addr2" id="addr2" type="text" readonly="readonly" />
								</div>
								<div class="input__item">
								    <input placeholder="상세주소" name="addr3" id="addr3" type="text"  />
								</div>
                            </div>
                            <h4 class="mb-4" style="color:white;">프로필 사진</h4>
                            <div>
                            	<label id="profile_image_label" for="profile_image" >파일 선택</label>
                                <input class="mb-4" type="file" placeholder="프로필이미지" name="file" id="profile_image" style="display:none;">
                                <img style="display:none;" src="/resources/images/logo.png" id="preview" width="370px"><br>
                                <a id="image_delete" style="color:white;font-size:20px;">사진 삭제 <b style="color:red;font-size:30px;">&times;</b></a>
                            </div>

                            <button type="button" class="site-btn" id="signup_btn">회원가입</button>
                        </form>
                        <h5>이미 계정이 있으신가요? <a href="/user/login_form">로그인하기</a></h5>
                    </div>
                </div>
<!--                 <div class="col-lg-6"> -->
<!--                     <div class="login__social__links"> -->
<!--                         <h3>Login With:</h3> -->
<!--                         <ul> -->
<!-- <!--                                 <li><a href="#" class="facebook"><i class="fa fa-facebook"></i> Sign in With Facebook</a></li> --> -->
<!-- <!--                                 <li><a href="#" class="twitter"><i class="fa fa-twitter"></i> Sign in With Twitter</a></li> --> -->
<!--                         	<li><a href="#" class="google"><i class="fa fa-google"></i> 구글로 로그인 하기</a></li> -->
<!--                         	<li> -->
<!--                                 <a id="naverIdLogin_loginButton" href="javascript:void(0)" class="twitter" style="background:#03C75A;"> #2DB400 -->
<!--                                 	<img src="/resources/images/naver_logo.png" style="width:20px;position:absolute;left:32px;"> -->
<!--                                 	네이버로 로그인하기 -->
<!--                                 </a> -->
<!--                        		</li> -->
<!--                        </ul> -->
<!--                     </div> -->
<!--                 </div> -->
            </div>
        </div>
    </section>
    <!-- Signup Section End -->
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>