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
	.login__form form .input__item {
	    position: relative;
	    width: 50%;
	    margin-bottom: 20px;
	}
	.login__form form .input__item input {
	    height: 50px;
	    width: 100%;
	    font-size: 15px;
	    color: black;
	    background: #ffffff;
	    border: none;
	    padding-left: 76px;
	}
	.input_icon{
	    color: #b7b7b7;
	    font-size: 20px;
	    position: absolute;
	    left: 15px;
	    top: 13px;
	    height: 20px;
	}
</style>

<!-- 다음 도로명 주소 api script -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script>
	$(document).ready(function(){
		var userid_dupl = true; // 아이디 중복 확인
		var checked_userid = ""; // 중복 확인한 아이디
		var nickname_dupl = true; // 닉네임 중복 확인
		var checked_nickname = ""; // 중복 확인한 닉네임
		var email_auth = false; // 이메일 인증 여부
		var checked_email = ""; // 인증한 이메일
		
		// 문자 'A','Z','a','z','0','9','!','@','#','$','%'에 대한 ascii_code 값을 나타냄
		var ascii_code_A = 'A'.charCodeAt(0);
		var ascii_code_Z = 'Z'.charCodeAt(0);
		var ascii_code_a = 'a'.charCodeAt(0);
		var ascii_code_z = 'z'.charCodeAt(0);
		var ascii_code_0 = '0'.charCodeAt(0);
		var ascii_code_9 = '9'.charCodeAt(0);
		var ascii_code_ctrl1 = '!'.charCodeAt(0);
		var ascii_code_ctrl2 = '@'.charCodeAt(0);
		var ascii_code_ctrl3 = '#'.charCodeAt(0);
		var ascii_code_ctrl4 = '$'.charCodeAt(0);
		var ascii_code_ctrl5 = '%'.charCodeAt(0);
		
		// 아이디 중복 여부 체크
		$("#userid_dupl_check").click(function(){
			var userid = $("#userid").val(); // 유저 아이디
			
			// 아이디를 입력하지 않았으면 "아이디를 입력해주세요" 라는 메세지를 보여줌 
			if(userid == ""){
				$("#userid_dupl_check_result").text("아이디를 입력해주세요");
			}else{
				// 아이디를 중복확인하여 중복되는 아이디가 있을 때와 없을 때 각각 다른 메세지를 보여줌
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
							checked_userid = userid;
						}
						
					}
				});
			}
			$("#userid_dupl_check_result").show();
		});
		
		// 문자열에 영문자와 숫자가 혼합되어있는지 확인 
		function isMixedEnLetterAndNumber(str){
			var contain_EnLetter = false; // 문자열에 영문자가 포함되는지 확인
			var contain_number = false; // 문자열에 숫자가 포함되는지 확인
			var contain_others = false; // 문자열에 영문자,숫자외 다른 문자가 포함되는지 확인
			
			for(var i=0 ; i<str.length ; i++){
				// 각 자리에 있는 문자 ascii코드를 가져옴
				var str_char = str.charCodeAt(i);
				// ascii코드를 이용하여 문자열에 영문자가 포함되었는지 , 숫자가 포함되었는지, 그 외 다른 문자가 포함되었는지 확인함
				if( (str.charCodeAt(i) >= ascii_code_a && str.charCodeAt(i) <= ascii_code_z) ||
					(str.charCodeAt(i) >= ascii_code_A && str.charCodeAt(i) <= ascii_code_Z) ){
					contain_EnLetter = true;
				}else if(str.charCodeAt(i) >= ascii_code_0 && str.charCodeAt(i) <= ascii_code_9){
					contain_number = true;
				}else {
					contain_others = true;
				}
			}
			var result = contain_EnLetter && contain_number && !contain_others;
			return result;
		}
		
		// 문자열에 영문자와 숫자와 특수문자(!,@,#,$,%)가 혼합되어있는지 확인
		function isMixedEnLetterAndNumberAndSpecialChar(str){
			var contain_EnLetter = false; // 문자열에 영문자가 포함되는지 확인
			var contain_number = false; // 문자열에 숫자가 포함되는지 확인
			var containt_specialChar = false; // 문자열에 특수문자가 포함되는지 확인
			var contain_others = false; // 문자열에 영문자,숫자외 다른 문자가 포함되는지 확인
			
			for(var i=0 ; i<str.length ; i++){
				// 각 자리에 있는 문자 ascii코드를 가져옴
				var str_char = str.charCodeAt(i);
				// ascii코드를 이용하여 문자열에 영문자가 포함되었는지 , 숫자가 포함되었는지, 특수문자가 포함되었는지, 그 외 다른 문자가 포함되었는지 확인함
				if( (str.charCodeAt(i) >= ascii_code_a && str.charCodeAt(i) <= ascii_code_z) ||
				(str.charCodeAt(i) >= ascii_code_A && str.charCodeAt(i) <= ascii_code_Z) ){
					contain_EnLetter = true;
				}else if(str.charCodeAt(i) >= ascii_code_0 && str.charCodeAt(i) <= ascii_code_9){
					contain_number = true;
				}else if( str.charCodeAt(i) == ascii_code_ctrl1 ||
						  str.charCodeAt(i) == ascii_code_ctrl2 ||
						  str.charCodeAt(i) == ascii_code_ctrl3 ||
						  str.charCodeAt(i) == ascii_code_ctrl4 ||
						  str.charCodeAt(i) == ascii_code_ctrl5 ){
					containt_specialChar = true;
				}else {
					contain_others = true;
				}
			}
			
			result = contain_EnLetter & contain_number & containt_specialChar & !contain_others;
				
			return result;			
		}
		
		// 닉네임 중복 여부 체크
		$("#nickname_dupl_check").click(function(){
			var nickname = $("#nickname").val(); // 유저 닉네임
			
			// 닉네임을 입력하지 않았으면 "닉네임을 입력해주세요" 라는 메세지를 보여줌 
			if(nickname == ""){
				$("#nickname_dupl_check_result").text("닉네임을 입력해주세요");
			}else{
				// 닉네임을 중복 체크하여 닉네임이 중복 되었을 떄와 중복되지 않았을 때 각각 다른 메세지를 보여줌
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
							checked_nickname = nickname;
						}
						
					}
				});
			}
			$("#nickname_dupl_check_result").show();
		});
		
		// 프로필 사진 미리보기
		$("#profile_image").change(function(e){
			var file = e.target.files[0]; // 올린 파일
			// 프로필 사진을 올렸을 때 사진 이미지와 파일 이름을 보여줌
			// 프로필 사진을 올리지 않았을 때는 사진 이미지를 기본이미지로하고 파일 이름을 지움
 			if(file != null && file != ""){
 				var fileReader = new FileReader();
 				fileReader.onload = function(e){
 					$("#preview").attr("src", e.target.result);
					$("#file_name").val(file.name);
 				}
 				fileReader.readAsDataURL(file);
 			}else{
 				$("#preview").attr("src", "/resources/images/default_image.jpg");
				$("#file_name").val("");
 			}
		});
		
		// 이메일 인증 버튼
		$("#email_auth_btn").click(function(){
			var email = $("#email").val(); // 이메일
			// 입력한 이메일로 인증 번호를 전송하고 인증 번호에 맞는 번호를 입력할 수 있는 양식을 보여줌
			$.ajax({
				type : "post",
				async : "true",
				url : "/mail/send",
				data : {email : email},
				success : function(rData){
					console.log(rData);
					$("#email_auth_title").show();
					$("#email_auth_code").show();
					$("#email_auth_code_check_btn").show();
					$("#email_auth_code_check_btn").attr("data-auth_code", rData);
					checked_email = email;
				}
			});
		});
		
		// 이메일 인증번호 확인
		$("#email_auth_code_check_btn").click(function(){
			var auth_code = $(this).attr("data-auth_code"); // 인증 번호값
			var auth_code_input = $("#email_auth_code").val(); // 인증 번호 입력값
			
			// 인증번호값과 인증 번호 입력값이 같으면 인증이 완료 되었습니다 라는 메세지를 보여주고 인증 확인을 받음
			if(auth_code_input == auth_code){
				$("#email_auth_message").text("이메일 인증에 성공했습니다");
				email_auth = true;
			}else{
				$("#email_auth_message").text("이메일 인증에 실패했습니다");
			}
			$("#email_auth_message").show();
		});
		
		
		// 프로필 이미지 삭제
		$("#image_delete").click(function(){
			// 프로필 이미지를 기본 이미지로 바꾸고 올린 파일을 삭제함
			$("#profile_image").val("");
			$("#preview").attr("src", "/resources/images/default_image.jpg");
			$("#file_name").val("")
		});
		
		// 회원 가입 버튼 클릭
		$("#signup_btn").click(function(){
			var userid = $("#userid").val(); //  아이디
			var userpw = $("#userpw").val(); // 비밀번호
			var confirm_userpw = $("#confirm_userpw").val(); // 비밀번호 확인
			var username = $("#username").val(); // 이름
			var nickname = $("#nickname").val(); // 닉네임
			var email = $("#email").val(); // 이메일
			var cellphone = $("#cellphone").val(); // 휴대폰 번호
			
			// 회원 가입 유효성 검사(정말많다..)
			if(userid_dupl){ // 아이디 중복 여부 확인
				alert("아이디 중복체크를 해주세요");
			}else if(checked_userid != userid){ // 중복 여부 확인한 아이디와 현재 입력한 아이디가 같은지 확인
				alert("현재 입력한 아이디와 중복체크를 한 아이디값이 다릅니다. 다시한번 아이디 중복체크 해주세요.(혹시 일부러 그러신건 아니죠..?)");
			}else if(!isMixedEnLetterAndNumber(userid)){ // 아이디 영문자,숫자 조합으로 조합되었는지 여부 확인
				alert("아이디를 영문자 숫자 조합으로 작성하였는지 확인해 주세요");
			}else if(userid.length > 15){ // 아이디 글자 수가 15자 이하인지 확인
				alert("아이디는 15자이하로 입력해주세요");
			}else if(!isMixedEnLetterAndNumberAndSpecialChar(userpw)){ // 비밀번호 영문자,숫자,특수문자(!,@,#,$,%) 조합으로 조합되었는지 여부 확인
				alert("비밀번호를 영문자,숫자,특수문자 조합으로 작성하였는지 확인해 주세요");
			}else if(userpw.length > 15){ // 비밀번호 글자 수가 15자 이하인지 확인
				alert("비밀번호는 15자이하로 입력해주세요");
			}else if(userpw != confirm_userpw){ // 비밀번호와 비밀번호 글자 수가 일치하지 않을 때
				alert("비밀번호와 비밀번호 확인 값이 일치하지 않습니다");
			}else if(username.length > 6){ // 이름 글자 수가 6자 이하인지 확인
				alert("이름은 6자이하로 입력해주세요");
			}else if(nickname_dupl){ // 닉네임 중복 여부 체크 확인
				alert("닉네임 중복체크를 해주세요");
			}else if(nickname.length > 10){ // 닉네임 글자 수가 10자 이하인지 확인
				alert("닉네임은 10자이하로 입력해주세요");
			}else if(checked_nickname != nickname){ // 중복 여부 확인한 닉네임과 현재 입력한 닉네임이 같은지 확인
				alert("현재 입력한 닉네임과 중복체크를 한 닉네임값이 다릅니다. 다시한번 닉네임 중복체크 해주세요.(혹시 일부러 그러신건 아니죠..?)");
			}else if(/*!email_auth*/ false){ // 이메일 인증 여부 확인(지금은 테스트 중이라 유효성 체크 막아뒀습니다)
				alert("이메일 인증체크를 해주세요");
			}else if(checked_email != email){ // 중복 여부 확인한 닉네임과 현재 입력한 닉네임이 같은지 확인
				alert("현재 입력한 이메일과  인증한 이메일값이 다릅니다. 다시한번 이메일 인증 해주세요.(혹시 일부러 그러신건 아니죠..?)");
			}else if(cellphone.length != 11){ // 휴대전화 번호 자리 수가 11자리가 아닐 때
				alert("휴대전화 번호는 -를 제외하고 11자리숫자로 입력해주세요");
			}else{ // 모든 유효성 체크를 완료 했을 때 회원가입을 함
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
	                var sido = data.sido; // 도로명 주소의 시/도(ex. 울산 광역시, 경기도 등등)
	                var extraRoadAddr = ''; // 도로명 조합형 주소 변수
	                
	                // 시/도명 풀네임으로 변경 (ex. 울산 -> 울산 광역시, 경남 -> 경상남도, 경기-> 경기도)
	                if( ( fullRoadAddr.includes("울산") ||  fullRoadAddr.includes("부산") ||  fullRoadAddr.includes("대구")
	                		|| fullRoadAddr.includes("대구") || fullRoadAddr.includes("광주") || fullRoadAddr.includes("대전")
	                	) && fullRoadAddr.indexOf(sido) == 0){
	                	fullRoadAddr = fullRoadAddr.replace(sido, sido + "광역시")
	                }else if(fullRoadAddr.includes("서울") && fullRoadAddr.indexOf(sido) == 0){
	                	fullRoadAddr = fullRoadAddr.replace(sido, sido + "특별시")
	                }else if( ( fullRoadAddr.includes("경기") ||  fullRoadAddr.includes("강원")
	                		)&& fullRoadAddr.indexOf(sido) == 0){
	                	fullRoadAddr = fullRoadAddr.replace(sido, sido + "도")
	                }else if(fullRoadAddr.includes("경남") && fullRoadAddr.indexOf(sido) == 0){
	                	fullRoadAddr = fullRoadAddr.replace(sido, "경상남도")
	                }else if(fullRoadAddr.includes("경북") && fullRoadAddr.indexOf(sido) == 0){
	                	fullRoadAddr = fullRoadAddr.replace(sido, "경상북도")
	                }else if(fullRoadAddr.includes("전남") && fullRoadAddr.indexOf(sido) == 0){
	                	fullRoadAddr = fullRoadAddr.replace(sido, "전라남도")
	                }else if(fullRoadAddr.includes("전북") && fullRoadAddr.indexOf(sido) == 0){
	                	fullRoadAddr = fullRoadAddr.replace(sido, "전라북도")
	                }else if(fullRoadAddr.includes("충남") && fullRoadAddr.indexOf(sido) == 0){
	                	fullRoadAddr = fullRoadAddr.replace(sido, "충청남도")
	                }else if(fullRoadAddr.includes("충북") && fullRoadAddr.indexOf(sido) == 0){
	                	fullRoadAddr = fullRoadAddr.replace(sido, "충청북도")
	                }else {}
	 
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
	                
	                // 우편 번호 추가
	                $("[name=addr1]").val(data.zonecode);
	                // 도로명 주소 추가
	                $("[name=addr2]").val(fullRoadAddr);
	                
	            }
	         }).open();
	         
	     });

	});
</script>

    <section>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="login__form">
                    	<!-- 제목 -->
                        <h3 class="text-white">회원가입 (*는 필수 입력사항)</h3>
                    	<!-- 제목 끝 -->
                        <!-- 회원가입 양식 -->
                        <form action="/user/signup_run" method="post" id="signup_form" enctype="multipart/form-data">
<!--                         	<h4 class="mb-4" style="color:white;">*는 필수 입력사항</h4> -->
							<h4 class="mb-4" style="color:white;">* 아이디</h4>
                            <div class="input__item">
                                <input type="text" placeholder="아이디" name="userid" id="userid" required>
                                <span class="icon_mail"></span>
								<h5 class="mt-1" style="color:white;"># 15자이하, 영문자,숫자 포함</h5>
	                            <button type="button" class="site-btn" id="userid_dupl_check">아이디 중복확인</button>
	                            <p style="color:white;display:none;" id="userid_dupl_check_result"></p>
                            </div>
                            <h4 class="mb-4" style="color:white;">* 비밀번호</h4>
                            <div class="input__item">
                                <input type="password" placeholder="비밀번호" name="userpw" id="userpw" required>
                                <h5 class="mt-1" style="color:white;"># 15자이하, 영문자,숫자,특수문자(!,@,#,$,% 중 1개이상) 포함</h5>
                                <span class="icon_lock"></span>
                            </div>
                            <h4 class="mb-4" style="color:white;">* 비밀번호 확인</h4>
                            <div class="input__item">
                                <input type="password" placeholder="비밀번호" id="confirm_userpw" required>
                                <span class="icon_lock"></span>
                            </div>
                            <h4 class="mb-4" style="color:white;">* 이름</h4>
                            <div class="input__item">
                                <input type="text" placeholder="이름(6자 이하)" name="username" id="username" required>
                                <span class="icon_profile"></span>
                            </div>
                            <h4 class="mb-4" style="color:white;">* 닉네임</h4>
                            <div class="input__item">
                                <input type="text" placeholder="닉네임(10자 이하)" name="nickname" id="nickname" required>
                                <span class="icon_profile"></span>
                                <button type="button" class="site-btn" id="nickname_dupl_check">닉네임 중복확인</button>
                                <p style="color:white;display:none;" id="nickname_dupl_check_result"></p>
                            </div>
                            <h4 class="mb-4" style="color:white;">* 이메일</h4>
                            <div class="input__item">
                                <input type="email" placeholder="이메일" name="email" id="email" required>
                                <span class="icon_mail"></span>
                                <button type="button" class="site-btn mb-4" id="email_auth_btn">이메일 인증</button>
                                <h4 class="mb-4" id="email_auth_title" style="color:white;display:none;">* 이메일 인증</h4>
                                <input type="number" placeholder="인증코드 6자리 입력" id="email_auth_code" style="display:none;">
                                <button type="button" class="site-btn" id="email_auth_code_check_btn" style="display:none;">인증 번호 확인</button>
								<span class="text-white" id="email_auth_message" style="display:none"></span>
                            </div>
                            <h4 class="mb-4" style="color:white;">휴대전화번호</h4>
                            <div class="input__item">
                                <input type="number" placeholder="휴대전화번호(-없이 입력)" name="cellphone" id="cellphone">
                                <i class="bi bi-telephone-fill input_icon"></i>
                            </div>
                            <h4 class="mb-4" style="color:white;">주소</h4>
                            <div class="input__item" style="color:white;width:100%;">
                                <input type="hidden" placeholder="주소" name="address" id="address">
								<div class="input__item">                   
									<input style="width: 40%; display: inline;" placeholder="우편번호" name="addr1" id="addr1" type="text" readonly="readonly" >
								    <i class="bi bi-house-fill input_icon"></i>
								    <button type="button" class="site-btn ml-4"  id="find_address" style="color:white">
								    	<i class="fa fa-search" style="position:static"></i> 우편번호 찾기
								    </button>                               
								</div>
								<div class="input__item">
								    <input style="top: 5px;" placeholder="도로명 주소" name="addr2" id="addr2" type="text" readonly="readonly" />
								    <i class="bi bi-house-fill input_icon"></i>
								</div>
								<div class="input__item">
								    <input placeholder="상세주소" name="addr3" id="addr3" type="text"  />
								    <i class="bi bi-house-fill input_icon"></i>
								</div>
                            </div>
                            <h4 class="mb-4" style="color:white;">프로필 사진</h4>
                            <div>
	                            <label class="site-btn" for="profile_image">파일 선택</label>
	                            <button type="button" class="site-btn ml-3 mt-0" id="image_delete" style="color:white;">사진 삭제 </button>
                                <input class="mb-4" type="file" placeholder="프로필이미지" name="file" id="profile_image" style="display:none;"><br>
                                <img src="/resources/images/default_image.jpg" id="preview" 
                                style="width:200px;height:200px;border-radius:100%;margin:30px;"><br>
                                <input type="text" class="form-control" style="width:30%;" id="file_name" placeholder="파일 이름">
                            </div>

                            <button type="button" class="site-btn" id="signup_btn">회원가입</button>
                        </form>
                        <!-- 회원가입 양식 끝 -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 회원가입 끝 -->
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>