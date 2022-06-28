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
			// 기존 비밀번호 확인 버튼
			$("#check_pw_btn").click(function(){
				var userno = "${loginUserVo.userno}"; // 유저 번호
				var userpw = $("#userpw").val(); // 유저 비밀번호
				// 로그인한 유저의 비밀번호와 입력한 비밀번호가 같음과 같이 않음에 따라 출력되는 메세지가 다름
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
							$("#check_pw").hide();
						}else{
							$("#check_result").text("비밀번호가 일치하지 않습니다 다시 한번 확인해 주세요");
						}
					}
				});
			});	
		});
    </script>

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
	    	<!-- 유저 회원 탈퇴 부분 -->
    		<div class="col-md-7" >
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<div id="check_pw">
							<h3 class="mb-4">비밀번호 확인</h3>
		                    <input class="form-control mt-4 mb-3" type="password" placeholder="비밀번호" name="userpw" id="userpw">
		                    <button type="button" class="site-btn" id="check_pw_btn">입력</button>
		                    <span class="ml-3" id="check_result" style="display:none">비밀번호 확인 메세지</span>
						</div>
						<div id="change_pw" style="display:none;">
							<h3 class="mb-4">회원탈퇴</h3>
							<form action="/mypage/unregister_run" method="post" id="change_pw_form">
								<input type="hidden" name="userno" value="${loginUserVo.userno}">
								<span>회원 탈퇴할 시 현재 남아있는 포인트는 보상되지 않으며 </span>
								<br>
								<span>탈퇴한 이후로는 아이디 정보를 복구할 수 없습니다 그래도 탈퇴 하시겠습니까?</span>
								<br>
			                    <button type="submit" class="site-btn mt-3" id="change_pw_btn">탈퇴하기</button>
		                    </form>
						</div>
					</div>
					<div class="col-md-3"></div>
				</div>	            
    		</div>
    		<!-- 유저 회원 탈퇴 부분 끝 -->
    		<div class="col-md-2"></div>
    	</div>
        <div class="container">
        </div>
    </section>
    <!-- 마이페이지 부분 끝-->

<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>