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
    		<div class="col-md-2" style="color:white;padding-left:50px;">
				<jsp:include page="/WEB-INF/views/mypage/mypage_menu.jsp" />				
    		</div>
    		<!-- 마이페이지 메뉴 부분 끝 -->
	    	<!-- 유저 프로필 부분 -->
    		<div class="col-md-8" >
	            <!-- 유저 영화 예매 내역 부분 -->
	            <div class="row d-flex justify-content-center">
	                <div class="col-lg-12">
						<h3 class="mb-4">영화 예매내역</h3>
						<div class="row">
						<c:forEach var="movieVo" items="${movieList}" varStatus="status">
							<c:if test="true">
							<div class="col-md-3">
								<div class="product__item">
									<div class="product__item__pic set-bg" 
											<c:choose>
											<c:when test="${empty movieVo.movie_image_name}">
												data-setbg="/resources/images/no_image.jpg" 
											</c:when>
											<c:otherwise>
												data-setbg="/movie/displayImage?filename=${movieVo.movie_image_name}"
											</c:otherwise>
											</c:choose>
											style="cursor: pointer;" onclick="location.href='/movie/movieInfo?movie_code=${movieVo.movie_code}';">								
	<!-- 									<div class="ep">18 / 18</div> -->
	<!-- 									<div class="comment"> -->
	<!-- 										<i class="fa fa-comments"></i> 11 -->
	<!-- 									</div> -->
	<!-- 									<div class="view"> -->
	<!-- 										<i class="fa fa-eye"></i> 1234 -->
	<!-- 									</div> -->
									</div>
									<div class="product__item__text">
										<ul>
											<li>액션이 죽이는</li>
											<li>영화</li>
										</ul>
										<h5>
											<a href="/movie/movieInfo?movie_code=${movieVo.movie_code}">${movieVo.movie_name}</a>
										</h5>
									</div>
								</div>
							</div>
							</c:if>
						</c:forEach>
						</div>
	            	</div>
	            </div>
	            <!-- 유저 영화 예매 내역 부분 끝-->
	            <div style="text-align:center;">
	        		<a href="/mypage/main?userno=${param.userno}" class="site-btn">마이페이지로</a>
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