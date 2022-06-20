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
				if(newUserpw == userpw_confirm){
					$("#change_pw_form").submit();
				}else{
					$("#change_error").show();
				}
			});
			
		});
    </script>
    
    <!-- 제목 부분 -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>비밀번호 변경</h2>
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
    		<div class="col-md-2" style="color:white;">
    			<div class="menu">
	    			<c:if test="${loginUserVo.userno == param.userno}">
						<jsp:include page="/WEB-INF/views/mypage/mypage_menu.jsp" />				
	    			</c:if>
    			</div>    	
    		</div>
    		<!-- 마이페이지 메뉴 부분 끝 -->
	    	<!-- 유저 프로필 부분 -->
    		<div class="col-md-8" >
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
								<label class="" style="color:white;" for="newUserpw">새 비밀번호</label>
			                    <input class="form-control mt-3 mb-3" type="password" placeholder="새 비밀번호" name="newUserpw" id="newUserpw" required>
								<label class="" style="color:white;" for="userpw_confirm">새 비밀번호 확인</label>
			                    <input class="form-control mt-3 mb-3" type="password" placeholder="새 비밀번호 확인" name="userpw_confirm" id="userpw_confirm" required>
			                    <button type="button" class="site-btn" id="change_pw_btn">입력</button>
			                    <span class="ml-3" id="change_error" style="display:none">새 비밀번호와 새 비밀번호 확인 값이 일치하지 않습니다</span>
		                    </form>
						</div>	 
					</div>
					<div class="col-md-3"></div>
				</div>           
    		</div>
    		<div class="col-md-2"></div>
    	</div>
        <div class="container">
        </div>
    </section>
    <!-- 마이페이지 부분 끝-->

<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>