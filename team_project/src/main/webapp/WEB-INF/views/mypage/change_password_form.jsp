<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
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
		input.form-control{
			width:80%;
		}
		span{
			color:white;
		}
	</style>
    <script>
		$(document).ready(function(){
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
			
			// 기존 비밀번호 확인 버튼
			$("#check_pw_btn").click(function(){
				var userno = "${loginUserVo.userno}";
				var userpw = $("#userpw").val();
				$.ajax({
					type : "post",
					async : "true",
					url : "/mypage/password_check_result",
					data : {
						userno : userno,
						userpw : userpw
					},
					success : function(rData){
						$("#check_result").show();
						if(rData){
							$("#check_result").text("비밀번호 확인 완료");
							$("#change_pw").show();
						}else{
							$("#check_result").text("비밀번호가 일치하지 않습니다 다시 한번 확인해 주세요");
						}
					}
				});
			});			
			// 새 비밀번호 변경 버튼
			$("#change_pw_btn").click(function(){
				var newUserpw = $("#newUserpw").val();
				var userpw_confirm = $("#userpw_confirm").val();
				// 비밀번호와 비밀번호 확인 값이 같고 비밀번호에 영문자와 숫자와 특수문자(!,@,#,$,%)가 포함되어 있으면 비밀번호 변경
				// 그렇지 않으면 오류 메세지를 출력함
				if(newUserpw != userpw_confirm){
					$("#change_error").text("새비밀번호와 비밀번호 확인 값이 일치하지 않습니다");
					$("#change_error").show();
				}else if(!isMixedEnLetterAndNumberAndSpecialChar(newUserpw)){
					$("#change_error").text("비밀번호는 영문자, 숫자, 특수문자(!,@,#,$,%) 조합으로 바꿔주세요");
					$("#change_error").show();
				}else{
					$("#change_pw_form").submit();
				}
			});
			
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
		});
    </script>
    
    <!-- 제목 부분 -->
<!--     <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg"> -->
<!--         <div class="container"> -->
<!--             <div class="row"> -->
<!--                 <div class="col-lg-12 text-center"> -->
<!--                     <div class="normal__breadcrumb__text"> -->
<!--                         <h2>비밀번호 변경</h2> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </section> -->
    <!-- 제목 부분 -->

    <!-- 마이페이지 부분 -->
    <section>
    	<div class="row">
	    	<!-- 마이페이지 메뉴 부분 -->
    		<div class="col-md-2" style="color:white;margin-left: 80px;">
    			<div class="menu">
	    			<c:if test="${loginUserVo.userno == param.userno}">
						<jsp:include page="/WEB-INF/views/mypage/mypage_menu.jsp" />				
	    			</c:if>
    			</div>    	
    		</div>
    		<!-- 마이페이지 메뉴 부분 끝 -->
	    	<!-- 비밀번호 변경 부분 -->
    		<div class="col-md-7" >
    			<div class="row">
	    			<div class="col-md-3"></div>
	    			<div class="col-md-6">
						<div id="check_pw">
							<h3 class="mb-4">기존 비밀번호 확인</h3>
		                    <input class="form-control mt-4 mb-3" type="password" placeholder="비밀번호" name="userpw" id="userpw">
		                    <button type="button" class="site-btn" id="check_pw_btn">입력</button>
		                    <span class="ml-3" id="check_result" style="display:none">비밀번호 확인 메세지</span>
						</div>
						<div id="change_pw" style="display:none;">
							<hr>
							<h3 class="mb-4">새 비밀번호 입력</h3>
							<form action="/mypage/change_password_run" method="post" id="change_pw_form">
								<input type="hidden" name="userid" value="${loginUserVo.userid}"> 
								<label class="" style="color:white;font-size:24px" for="newUserpw">새 비밀번호</label>
			                    <input class="form-control mt-3 mb-3" type="password" placeholder="새 비밀번호" name="newUserpw" id="newUserpw" required>
								<h6 class="mt-1 mb-4" style="color:white;"># 15자이하, 영문자,숫자,특수문자(!,@,#,$,% 중 1개이상) 포함</h6>
								<label class="" style="color:white;font-size:24px" for="userpw_confirm">새 비밀번호 확인</label>
			                    <input class="form-control mt-3 mb-3" type="password" placeholder="새 비밀번호 확인" name="userpw_confirm" id="userpw_confirm" required>
			                    <button type="button" class="site-btn" id="change_pw_btn">입력</button>
			                    <span class="ml-3" id="change_error" style="display:none">새 비밀번호와 새 비밀번호 확인 값이 일치하지 않습니다</span>
		                    </form>
						</div>	 
					</div>
					<div class="col-md-3"></div>
				</div>           
    		</div>
    		<!-- 비밀번호 변경 부분 끝 -->
    		<div class="col-md-2"></div>
    	</div>
        <div class="container">
        </div>
    </section>
    <!-- 마이페이지 부분 끝-->

<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>