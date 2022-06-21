<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<!-- 다음 도로명 주소 api script -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

	<style>
		h4{
			color:white;
			margin-bottom:20px;
		}
		h3{
			color:white;
		}
		hr{
			background-color:white;
		}
		ul{
			list-style:none;
		}
		li{
			font-size:20px;
		}
		li>a{
			color:white;
		}
		input.userinfo_input{
			width:60%;
		}
		.userinfo_address{
			display:none;
		}
		.userinfo_title{
			width:25%;
		}
	</style>
    <script>
		$(document).ready(function(){
			var nickname_dupl = false;
			var email_auth = false;
			var checked_nickname = "";
			var checked_email = "";

			// 유저 정보 수정 확인
			var modify_result = "${modify_result}";
			if(modify_result == "true"){
				alert("유저 정보 수정 성공");
			}else if(modify_result == "false"){
				alert("유저 정보 수정 실패");
			}else {}
			
			// 수정 버튼을 눌렀을 떄
			$("#user_modify_btn").click(function(){
				$(".userinfo_span").hide();
				$(".userinfo_input").show();
				$(".userinfo_address").show();
				$("#profile_image_label").show();
				
				$("#user_modify_btn").hide();
				$("#user_modify_complete_btn").show();
				$("#cancel_btn").show();
			});
			
			// 수정 취소 버튼을 눌렀을 때
			$("#cancel_btn").click(function(){
				$(".userinfo_span").show();
				$(".userinfo_input").hide();
				$(".userinfo_address").hide();
				$("#nickname_dupl_check_result").hide();
				$("#email_auth_code").hide();
				$("#email_auth_code_check_btn").hide();
				$("#email_auth_message").hide();
				$("#email_div").css("display", "none");
				$("#profile_image_label").hide();
				
				$("#user_modify_btn").show();
				$("#user_modify_complete_btn").hide();
				$("#cancel_btn").hide();
			});
			
			// 수정 완료 버튼을 눌렀을 때
			$("#user_modify_complete_btn").click(function(){
				var result = true;
				var nickname = $("#nickname").val();
				var email = $("#email").val();
				var nickname_changed = (nickname != "${loginUserVo.nickname}");
				var email_changed = (email != "${loginUserVo.email}");
				
				console.log(nickname);
				console.log(email);
				console.log(nickname_changed);
				console.log(email_changed);
				
				if(nickname_changed){
					if(nickname != checked_nickname){
						result = false;
						alert("중복 체크한 닉네임과 입력한 닉네임이 다릅니다 다시 한번 닉네임 중복체크 해주세요");
					}else if(nickname_dupl){
						result = false;
						alert("중복된 닉네임입니다 다시 한번 닉네임 중복체크 해주세요");
					}else {}
				}
				
				if(email_changed){
					if(email != checked_email){
						result = false;
						alert("인증한 이메일과 입력한 이메일이 다릅니다 다시 한번 이메일 인증 해주세요");
					}else if(email_auth){
						result = false;
						alert("이메일 인증을 하지 않았습니다 이메일 인증을 진행해주세요");
					}else {}					
				}
				
				if(result) {
					var address = $("#addr2").val() + $("#addr3").val();
					$("#address").val(address);
					$("#modify_user_form").submit();
				}
			});
			
			// 수정할 프로필 이미지 미리보기
			$("#profile_image").change(function(e){
				console.log(e.target.files[0]);
				var file = e.target.files[0];
				if(file != null && file != ""){
					var fileReader = new FileReader();
					fileReader.onload = function(e){
						console.log(e.target.result);
						$("#profile_image_view").attr("src", e.target.result);
					}	
				}else{
					if("${loginUserVo.profile_image}" != null){
						if("${loginUserVo.sns_type}" != null){
							$("#profile_image_view").attr("src", "${loginUserVo.profile_image}");
						}else{
							$("#profile_image_view").attr("src", "/user/get_profile_image?filename=${loginUserVo.profile_image}");
						}
					}else{
						$("#profile_image_view").attr("src", "/resources/images/no_image.jpg");
					}
				}
				fileReader.readAsDataURL(file);
			});
			
			// 팔로우 버튼 클릭
			$("#follow_btn").click(function(){
				$.ajax({
					type : "post",
					async : "true",
					url : "/follow/follow_user",
					data : {
						follow : "${loginUserVo.userno}",
						follower : "${userVo.userno}"
					},
					success : function(rData){
						console.log(rData);
						$("#follower").text(rData);
					}
				});
			});
			
			// 우편번호 찾기(도로명주소 찾기)버튼을 클릭했을 때
			$("#find_address").click(function () {
		         new daum.Postcode({
		             oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		 
		                // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
		                var sido = data.sido;
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
		                
		                
		                $("[name=addr1]").val(data.zonecode);
		                $("[name=addr2]").val(fullRoadAddr);
		                
		                /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
		                document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
		                document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
		            }
		         }).open();
		         
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
								checked_nickname = nickname;
							}
							
						}
					});
				}
				$("#nickname_dupl_check_result").show();
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
						$("#email_div").css("display", "flex");
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
		});
    </script>
    
    <!-- 제목 부분 -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>마이페이지</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 제목 부분 -->

    <!-- 마이페이지 부분 -->
    <section class="login spad">
    	<div class="row">
	    	<!-- 마이페이지 메뉴 부분 -->
    		<div class="col-md-2" style="color:white;margin-left: 80px;">
    			<jsp:include page="/WEB-INF/views/mypage/mypage_menu.jsp" />
    		</div>
    		<!-- 마이페이지 메뉴 부분 끝 -->
    		
	    	<!-- 유저 프로필 부분 -->
    		<div class="col-md-8" >
	            <form method="post" action="/user/modify_user" id="modify_user_form" encType="multipart/form-data">
	            	<input type="hidden" id="userid" name="userid" value="${loginUserVo.userid}">
	            	<input type="hidden" id="userno" name="userno" value="${loginUserVo.userno}">
<%-- 	            	<input type="hidden" id="profile_image" name="profile_image" value="${loginUserVo.profile_image}"> --%>
	            	<input type="hidden" name="address" id="address">
	            	<div class="row mb-5">
	            		<div class="col-lg-3"></div>
		                <div class="col-lg-6" style="text-align:center;">
		                    <div>
		                        <h3 class="mb-4">프로필 사진</h3>
			                    <!-- 프로필 사진이 없다면 기본이미지 있다면 프로필 사진이미지를 보여줌 -->
			                    <c:choose>
			                        <c:when test="${empty loginUserVo.profile_image}">
			                        	<img class="mb-3"  id="profile_image_view" alt="프로필 사진" src="/resources/images/default_image.jpg" style="width:300px;height:300px;border-radius:100%;">
			                        </c:when>
			                        <c:otherwise>
			                        	<!-- 간편로그인(sns)회원일때와 아닐때 프로필 사진파일을 가져주는 방식이 다르기떄문에 이와 같이 코드 작성 -->
			                        	<!-- 간편로그인 : 외부 url로 부터 사진을 받아옴 -->
			                        	<!-- 기존회원 : C:/에 있는 폴더에서 사진을 받아옴 -->
			                        	<c:choose>
					                       	<c:when test="${empty loginUserVo.sns_type}">
					                       		<img class="mb-3" id="profile_image_view" alt="프로필 사진" 
					                       		src="/user/get_profile_image?filename=${loginUserVo.profile_image}" style="width:300px;height:300px;border-radius:100%;">
					                       	</c:when>
					                       	<c:otherwise>
					                       		<img class="mb-3" id="profile_image_view" alt="프로필 사진" src="${loginUserVo.profile_image}" style="width:300px;height:300px;border-radius:100%;">
					                       	</c:otherwise>
					                    </c:choose>
			                       	</c:otherwise>
			                    </c:choose>
			                    <br>		                        
	                            <label class="site-btn" id="profile_image_label" for="profile_image" style="color:white;display:none;">파일 선택</label>
	                            <input class="mb-4" type="file" placeholder="프로필이미지" name="file" id="profile_image" 
	                            value="${loginUserVo.profile_image}" style="display:none;cursor:pointer;"><br>
		                    	<br>
		                    	<span style="color:white;font-size:30px">${userVo.nickname}(${userVo.username})님</span><br>
		                    	<span style="color:white;font-size:30px;margin-right:15px;">팔로워</span>
		                    	<span style="color:white;font-size:30px;margin-right:15px;" id="follower">${follower}</span>
		                    	<span style="color:white;font-size:30px;margin-right:15px;">팔로우</span>
		                    	<span style="color:white;font-size:30px;margin-right:15px;" id="follow">${follow}</span><br>
		                    	<span style="color:white;font-size:30px">포인트 : ${userVo.point}P</span><br>
		                    </div>
		                </div>
		                <div class="col-lg-3"></div>
	            	</div>
		            <div class="row">
		            	<div class="col-md-2"></div>
		                <div class="col-md-8">
		                    <table class="table text-white" style="font-size:24px;">
		                    	<tr>
		                    		<td class="userinfo_title">아이디</td>
		                    		<td>${userVo.userid}</td>
		                    	</tr>
		                    	<tr>
		                    		<td class="userinfo_title">이름</td>
		                    		<td>${userVo.username}</td>
		                    	</tr>
		                    	<tr>
		                    		<td class="userinfo_title">별명</td>
		                    		<td class="display:flex;">
		                    			<span class="userinfo_span">${userVo.nickname}</span>
										<input style="width:37%;margin-left:0px;" placeholder="닉네임" class="form-control mb-2 userinfo_address"
										name="nickname" id="nickname" value="${loginUserVo.nickname}" type="text" >
									    <button type="button" class="btn-sm site-btn ml-3 mb-2 userinfo_address"  id="nickname_dupl_check" style="color:white">중복 확인</button><br>
									    <span style="display:none;font-size:16px;" id="nickname_dupl_check_result">사용가능한 닉네임 입니다</span>		               
		                    		</td>
		                    	</tr>
		                    	<tr>
		                    		<td class="userinfo_title">이메일</td>
		                    		<td>
		                    			<span class="userinfo_span">${userVo.email}</span>
		                    			<input type="email" class="form-control userinfo_input mb-2" name="email" id="email" 
		                    			value="${loginUserVo.email}" style="display:none;padding-" required>
									    <button type="button" class="btn-sm site-btn ml-0 mb-2 userinfo_address"  id="email_auth_btn" 
									    style="color:white;text-align:left;">인증하기</button><br>
										<div id="email_div" style="display:none;">
											<input style="width:42%;margin-left:0px;display:none;" placeholder="인증번호" class="form-control mb-2 userinfo_email_auth"
											name="email_auth_code" id="email_auth_code"  type="text" >
										    <button type="button" class="btn-sm site-btn ml-3 mb-2 userinfo_email_auth"  id="email_auth_code_check_btn" style="color:white;display:none;">인증</button><br>
									    </div>
									    <span style="display:none;font-size:16px;" id="email_auth_message">이메일 인증에 성공하였습니다</span>	
		                    		</td>
		                    	</tr>
		                    	<tr>
		                    		<td class="userinfo_title">휴대폰 번호</td>
		                    		<td>
		                    			<span class="userinfo_span">${userVo.cellphone}</span>
		                    			<input type="number" class="form-control userinfo_input" name="cellphone" id="cellphone" 
		                    			value="${userVo.cellphone}" style="display:none;" required>
		                    		</td>
		                    	</tr>
		                    	<tr>
		                    		<td class="userinfo_title">주소</td>
		                    		<td >
		                    			<span class="userinfo_span">${userVo.address}</span>
										<input style="width:34%;margin-left:0px;" placeholder="우편번호" class="form-control mb-2 userinfo_address"
										name="addr1" id="addr1" type="text" readonly="readonly" >
									    <button type="button" class="btn-sm site-btn ml-3 mb-2 userinfo_address"  id="find_address" style="color:white">
									    	<i class="fa fa-search" style="position:static"></i>주소 찾기
									    </button><br>                              
									    <input style="top: 5px;width: 60%;margin-left:0px;" placeholder="도로명 주소" value="${userVo.address}"
									    class="form-control mb-2 userinfo_address" name="addr2" id="addr2" type="text" readonly="readonly" />
									    <input style="top: 5px;width: 60%;margin-left:0px;" placeholder="상세주소" class="form-control userinfo_address"
									    name="addr3" id="addr3" type="text"  />
		                    		</td>
		                    	</tr>
		                    	<tr>
		                        <c:choose>
					                	<c:when test="${empty userVo.sns_type}">
				                    		<td class="userinfo_title">가입일</td>
				                    		<td>${userVo.reg_date}</td>
					                    </c:when>
					                    <c:otherwise>
				                    		<td class="userinfo_title">연동일</td>
				                    		<td>${userVo.sns_connect_date}</td>
					                    </c:otherwise>
					                </c:choose>
		                    	</tr>
		                    </table>
		            	</div>     
		            	<div class="col-md-2"></div>	            
		            </div>
		            <div class="row">
		            	<div class="col-lg-12" style="text-align:center;">
		            		<c:if test="${empty loginUserVo.sns_type and loginUserVo.userid == userVo.userid}">
			            		<button type="button" class="site-btn" id="user_modify_btn">수정</button>
			            		<button type="button" class="site-btn" id="user_modify_complete_btn" style="display:none;">수정완료</button>
			            		<button type="button" class="site-btn" id="cancel_btn" style="display:none;">취소</button>
		            		</c:if>
		            	</div>
		            </div>
	            </form>
	    	<!-- 유저 프로필 부분 끝 -->
    		</div>
    		<div class="col-md-2"></div>
        </div>
    </section>
    <!-- 마이페이지 부분 끝-->

<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>