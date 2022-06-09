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
	</style>
    <script>
		$(document).ready(function(){
			var modify_result = "${modify_result}";
			if(modify_result == "true"){
				alert("유저 정보 수정 성공");
			}else if(modify_result == "false"){
				alert("유저 정보 수정 실패");
			}else {}
			// 수정 버튼을 눌렀을 떄
			$("#user_modify_btn").click(function(){
				$("#nickname_label").show();
				$("#email_label").show();
				$("#cellphone_label").show();
				$("#address_label").show();
				$("#profile_image_label").show();
				
				$("#nickname_label").prev().hide();
				$("#email_label").prev().hide();
				$("#cellphone_label").prev().hide();
				$("#address_label").prev().hide();
				
				$("#user_modify_btn").hide();
				$("#user_modify_complete_btn").show();
				$("#cancel_btn").show();
			});
			// 수정 취소 버튼을 눌렀을 때
			$("#cancel_btn").click(function(){
				$("#nickname_label").hide();
				$("#email_label").hide();
				$("#cellphone_label").hide();
				$("#address_label").hide();
				$("#profile_image_label").hide();
				
				$("#nickname_label").prev().show();
				$("#email_label").prev().show();
				$("#cellphone_label").prev().show();
				$("#address_label").prev().show();
				
				$("#user_modify_btn").show();
				$("#user_modify_complete_btn").hide();
				$("#cancel_btn").hide();
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
		});
    </script>
    
    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>마이페이지</h2>
<!--                         <p>Welcome to the official Anime blog.</p> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

    <!-- Login Section Begin -->
    <section class="login spad">
        <div class="container">
            <form method="post" action="/user/modify_user" encType="multipart/form-data">
            	<input type="hidden" id="userid" name="userid" value="${loginUserVo.userid}">
            	<input type="hidden" id="userid" name="profile_image" value="${loginUserVo.profile_image}">
            	<div class="row">
	                <div class="col-lg-6" style="text-align:center;">
	                    <div>
	                        <h3 class="mb-4">프로필 사진</h3>
		                        <!-- 프로필 사진이 없다면 기본이미지 있다면 프로필 사진이미지를 보여줌 -->
		                        <c:choose>
		                        	<c:when test="${empty loginUserVo.profile_image}">
		                        		<img class="mb-3"  id="profile_image_view" alt="프로필 사진" src="/resources/images/no_image.jpg" style="width:300px;">
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
				                        		<img class="mb-3" id="profile_image_view" alt="프로필 사진" src="${loginUserVo.profile_image}" style="width:300px;">
				                        	</c:otherwise>
				                        </c:choose>
		                        	</c:otherwise>
		                        </c:choose>
	                        <br>
                            <label class="site-btn" id="profile_image_label" for="profile_image" style="color:white;display:none;">파일 선택</label>
                            <input class="mb-4" type="file" placeholder="프로필이미지" name="file" id="profile_image" style="display:none;">
<!--                             <a id="image_delete" style="color:white;font-size:20px;">사진 삭제 <b style="color:red;font-size:30px;">&times;</b></a> -->
	                    </div>
	                </div>
	                <div class="col-lg-6">
	                    <div class="login__register">
	                        <h3>내 정보</h3>
	                        <h4>이름 : ${loginUserVo.username}</h4>
	                        <h4>별명 : ${loginUserVo.nickname}</h4>
	                        <h4 id="nickname_label" style="display:none;">
	                        	별명 : <input type="text" name="nickname" id="nickname" value="${loginUserVo.nickname}">
	                        </h4>
	                        <h4>이메일 : ${loginUserVo.email}</h4>
	                        <h4 id="email_label" style="display:none;">
	                        	이메일 : <input type="email" name="email" id="email" value="${loginUserVo.email}">
	                        </h4>
	                        <h4>휴대폰번호: ${loginUserVo.cellphone}</h4>
	                        <h4 id="cellphone_label" style="display:none;">
	                        	휴대폰번호 : <input type="text" name="cellphone" id="cellphone" value="${loginUserVo.cellphone}">
	                        </h4>
	                        <h4>주소: ${loginUserVo.address}</h4>
	                        <h4 id="address_label" style="display:none;">
	                        	주소 : <input type="text" name="address" id="address" value="${loginUserVo.address}">
	                        </h4>
	                        <h4>포인트 : ${loginUserVo.point}</h4>
	                        <c:choose>
			                	<c:when test="${empty loginUserVo.sns_type}">
			                        <h4>가입일 : ${loginUserVo.reg_date}</h4>
			                    </c:when>
			                    <c:otherwise>
			                        <h4>연동일 : ${loginUserVo.sns_connect_date}</h4>
			                    </c:otherwise>
			                </c:choose>
	                    </div>
	                </div>
            	</div>
	            <div class="row">
	            	<div class="col-lg-12" style="text-align:center;">
	            		<c:if test="${empty loginUser.sns_type}">
		            		<button type="button" class="site-btn" id="user_modify_btn">수정</button>
		            		<button type="submit" class="site-btn" id="user_modify_complete_btn" style="display:none;">수정완료</button>
		            		<button type="button" class="site-btn" id="cancel_btn" style="display:none;">취소</button>
	            		</c:if>
	            	</div>
	            </div>
            </form>
            <hr>
            <div class="row d-flex justify-content-center">
                <div class="col-lg-12">
					<h3><a href="/point/point_list?userno=1&userid=user01" style="color:white;">포인트 내역</a></h3>
            	</div>
            </div>
            <hr>
            <div class="row d-flex justify-content-center">
                <div class="col-lg-12">
					<h3>영화 예매내역</h3>
            	</div>
            </div>
            <hr>
            <div class="row d-flex justify-content-center">
                <div class="col-lg-12">
					<h3>내가 작성한 리뷰</h3>
            	</div>
            </div>
        </div>
    </section>
    <!-- Login Section End -->

<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>