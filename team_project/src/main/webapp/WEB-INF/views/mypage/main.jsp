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
		.checked {
		  color: orange;
		}
		.product__item {
		    margin-bottom: 30px;
		    padding-left: 30px;
		    padding-right: 30px;
		}
	</style>
    <script>
		$(document).ready(function(){
			// 유저 정보 수정 확인
			var modify_result = "${modify_result}";
			if(modify_result == "true"){
				alert("유저 정보 수정 성공");
			}else if(modify_result == "false"){
				alert("유저 정보 수정 실패");
			}else {}
			
			// 유저 포인트 충전 여부 확인
			var charge_result = "${charge_result}";
			if(charge_result == "true"){
				alert("포인트 충전 성공");
			}else if(charge_result == "false"){
				alert("포인트 충전 실패");
			}else {}
			
			// 팔로우 체크 여부 확인
			if("${loginUserVo}" != ""){
				$.ajax({
					type : "post",
					async : "true",
					url : "/follow/check_follow",
					data : {
						follower : "${userVo.userno}",
						follow : "${loginUserVo.userno}"
					},
					success: function(rData){
						console.log(rData)
						if(rData){
							$("#follow_icon").attr("class", "bi-person-check-fill mr-3");
						}else {
							$("#follow_icon").attr("class", "bi-person-plus-fill mr-3");
						}
					}
					
				});
			}
			
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
						var follower = parseInt($("#follower").text());
						if(rData){
							$("#follow_icon").attr("class", "bi-person-plus-fill mr-3");
							follower = follower - 1;
						}else {
							$("#follow_icon").attr("class", "bi-person-check-fill mr-3");
							follower = follower + 1;
						}
						$("#follower").text(follower);
					}
				});
			});
			
			// 새로고침
			function refreshMemList(){
				location.reload();
			}
			
			// 이벤트 참가 취소
			$(".table").on("click", ".btnEventCancel", function(){
				var url = "/mypage/participate_event_cancel";
				var participate_no = $(this).attr("value");
				var sData = {
						"participate_no" : participate_no
				}
				console.log("participate_no:", participate_no); 
				$.get(url, sData, function(rData){
					console.log("rData", rData);
					refreshMemList();
				});
			});
			
		}); //$(document).ready
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
    		<div class="col-md-2" style="color:white;" >
    			<div class="menu">
	    			<c:if test="${loginUserVo.userno == userVo.userno}">
						<jsp:include page="/WEB-INF/views/mypage/mypage_menu.jsp" />				
	    			</c:if>
    			</div>    	
    		</div>
    		<!-- 마이페이지 메뉴 부분 끝 -->
	    	<!-- 유저 프로필 부분 -->
    		<div class="col-md-8" >
	            <form method="post" action="/user/modify_user" encType="multipart/form-data">
	            	<input type="hidden" id="userid" name="userid" value="${loginUserVo.userid}">
	            	<input type="hidden" id="userid" name="profile_image" value="${loginUserVo.profile_image}">
		            <h3 class="mb-5">내 정보</h3>
	            	<div class="row">
		                <div class="col-lg-6" style="text-align:center;">
		                    <div>
		                        <h3 class="mb-4">프로필 사진</h3>
			                        <!-- 프로필 사진이 없다면 기본이미지 있다면 프로필 사진이미지를 보여줌 -->
			                        <c:choose>
			                        	<c:when test="${empty userVo.profile_image}">
			                        		<img class="mb-3"  id="profile_image_view" alt="프로필 사진" src="/resources/images/default_image.jpg" style="width:300px;height:300px;border-radius:100%;">
			                        	</c:when>
			                        	<c:otherwise>
			                        		<!-- 간편로그인(sns)회원일때와 아닐때 프로필 사진파일을 가져주는 방식이 다르기떄문에 이와 같이 코드 작성 -->
			                        		<!-- 간편로그인 : 외부 url로 부터 사진을 받아옴 -->
			                        		<!-- 기존회원 : C:/에 있는 폴더에서 사진을 받아옴 -->
			                        		<c:choose>
					                        	<c:when test="${empty userVo.sns_type}">
					                        		<img class="mb-3" id="profile_image_view" alt="프로필 사진" 
					                        		src="/user/get_profile_image?filename=${userVo.profile_image}" style="width:300px;height:300px;border-radius:100%;">
					                        	</c:when>
					                        	<c:otherwise>
					                        		<img class="mb-3" id="profile_image_view" alt="프로필 사진" src="${userVo.profile_image}" style="width:300px;height:300px;border-radius:100%;">
					                        	</c:otherwise>
					                        </c:choose>
			                        	</c:otherwise>
			                        </c:choose>
		                        <br>
	                            <label class="site-btn" id="profile_image_label" for="profile_image" style="color:white;display:none;">파일 선택</label>
	                            <input class="mb-4" type="file" placeholder="프로필이미지" name="file" id="profile_image" style="display:none;"><br>
	                            <h3 class="mb-4">${userVo.nickname}(${userVo.username})님</h3>
	                            <c:if test="${empty loginUserVo.sns_type and loginUserVo.userid == userVo.userid}">
			            			<button type="button" class="site-btn" id="user_modify_btn">프로필 사진 수정</button>
			            			<button type="submit" class="site-btn" id="user_modify_complete_btn" style="display:none;">수정완료</button>
			            			<button type="button" class="site-btn" id="cancel_btn" style="display:none;">취소</button>
		            			</c:if>
		                    </div>
		                </div>
		                <div class="col-lg-6">
		                    <span style="color:white;font-size:30px;margin-right:15px;">팔로워</span>
		                    <span style="color:white;font-size:30px;margin-right:15px;" id="follower">${follower}</span>
		                    <span style="color:white;font-size:30px;margin-right:15px;">팔로우</span>
		                    <span style="color:white;font-size:30px;margin-right:15px;" id="follow">${follow}</span>
		                    <c:if test="${loginUserVo.userid != userVo.userid and not empty loginUserVo}">
		                    	<button type="button" class="site-btn" id="follow_btn" style="font-size:18px;">
		                    		<i class="bi bi-person-check-fill mr-3" id="follow_icon"></i>팔로우
		                    	</button>
		                    </c:if>
		                    <br>
		                    <h3 class="mt-3">포인트 : ${userVo.point}P</h3>
		                </div>
	            	</div>
	            </form>
	            <!-- 유저 프로필 부분 끝 -->
	            <hr>
	            <!-- 유저 영화 예매 내역 부분 -->
	            <div class="row d-flex justify-content-center">
	                <div class="col-lg-12">
						<h3 class="mb-4">영화 예매내역</h3>
						<div class="row">
						<c:forEach var="ticketUserVo" items="${ticketUserList}" varStatus="status">
							<c:if test="${status.count <=4}">
							<div class="col-lg-3 col-md-6 col-sm-6">
								<div class="product__item">
									<div class="product__item__pic set-bg" 
										<c:choose>
											<c:when test="${empty ticketUserVo.movie_image_name}">
												data-setbg="/resources/images/no_image.jpg" 
											</c:when>
											<c:otherwise>
												data-setbg="/movie/displayImage?filename=${ticketUserVo.movie_image_name}"
											</c:otherwise>
										</c:choose>
										style="cursor: pointer;" 
										<c:if test="${loginUserVo.userno == param.userno}">
											onclick="location.href='/mypage/ticket_info?userno=${loginUserVo.userno}&ticket_no=${ticketUserVo.ticket_no}';"	
										</c:if>
									>								
									</div>
									<div class="product__item__text">
										<ul>
											<li>액션이 죽이는</li>
											<li>영화</li>
										</ul>
										<h5>
											<a class="text-white"
												<c:if test="${loginUserVo.userno == param.userno}">
													href='/mypage/ticket_info?userno=${loginUserVo.userno}&ticket_no=${ticketUserVo.ticket_no}'
												</c:if>
											>${movieVo.movie_name}</a>
										</h5>
									</div>
								</div>
							</div>
							</c:if>
						</c:forEach>
						</div>
						<div class="row">
			            	<div class="col-lg-12" style="text-align:center;">
				            	<a class="site-btn" href="/mypage/ticket_movie_list?userno=${userVo.userno}">더보기</a>
			            	</div>
		            	</div>				
	            	</div>
	            </div>
	            <!-- 유저 영화 예매 내역 부분 끝-->
	            <hr>
	            <!-- 유저 좋아요 누른 영화 부분 -->
	            <div class="row d-flex justify-content-center">
	                <div class="col-lg-12">
						<h3 class="mb-4">좋아요 누른 영화</h3>
						<div class="row">
						<c:forEach var="movieVo" items="${movieLikeList}" varStatus="status">
							<c:if test="${status.count <=4}">
							<div class="col-lg-3 col-md-6 col-sm-6">
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
						<div class="row">
			            	<div class="col-lg-12" style="text-align:center;">
				            	<a class="site-btn" href="/mypage/like_movie_list?userno=${userVo.userno}">더보기</a>
			            	</div>
		            	</div>				
	            	</div>
	            </div>
	            <!-- 유저  좋아요 누른 영화 부분 끝-->
	            <hr>
	            <!-- 유저 영화 리뷰 부분 -->
	            <div class="row d-flex justify-content-center">
	                <div class="col-lg-12">
						<h3 class="mb-4">내가 작성한 리뷰</h3>
		            	<table class="table" style="color:white;">
					    	<thead>
					    		<tr>
									<th>번호</th>
									<th>작성자</th>
									<th>제목</th>
									<th>평점</th>
									<th>작성일</th>
									<th>조회수</th>	   				
					   			</tr>
					   		</thead>
					   		<tbody>
								<c:forEach var="reviewVo" items="${reviewList}" varStatus="status">
									<c:if test="${status.index < 5}">
									
									
										<tr>
											<td class="td_list" data-rno="${reviewVo.review_no}">${reviewVo.review_no}</td>
											<td>
											
											
											
											${reviewVo.review_writer}
											
											
											
											</td>
											<td><a style="color:white"
												href="/review/review_read?review_no=${reviewVo.review_no}">${reviewVo.review_title}</a></td>
											<td>
												<span class="fa fa-star
													<c:if test="${reviewVo.review_star >= 1}">checked</c:if>
												"></span>
												<span class="fa fa-star
													<c:if test="${reviewVo.review_star >= 2}">checked</c:if>
												"></span>
												<span class="fa fa-star
													<c:if test="${reviewVo.review_star >= 3}">checked</c:if>
												"></span>
												<span class="fa fa-star
													<c:if test="${reviewVo.review_star >= 4}">checked</c:if>
												"></span>
												<span class="fa fa-star
													<c:if test="${reviewVo.review_star >= 5}">checked</c:if>
												"></span>
											</td>
												
											<td>${reviewVo.review_reg_date}</td>
											<td>${reviewVo.review_viewcnt}</td>
										</tr>
									</c:if>
								</c:forEach>
							</tbody>
					    </table>
	            	</div>
					<div class="row">
			            <div class="col-lg-12" style="text-align:center;">
				            <a class="site-btn" href="/mypage/write_review_list?userno=${userVo.userno}">더보기</a>
			            </div>
		            </div>	            	
	            </div>
	            <!-- 유저 영화 리뷰 부분 끝 -->
	            <hr>
				<!-- 유저 참여 이벤트 부분 -->
	            <div class="row d-flex justify-content-center">
	                <div class="col-lg-12">
						<h3 class="mb-4" ><a href="/point/point_list?userno=1&userid=user01" style="color:white;">이벤트 참여 내역</a></h3>
						<table class="table" style="color:white;">
				    		<thead>
				    			<tr>
									<th>이벤트 제목</th>    				
									<th>이벤트 시작일</th>    				
									<th>이벤트 종료일</th>		
									<th>참여 취소</th>		
				    			</tr>
				    		</thead>
				    		<tbody>
				    		
				    			<c:forEach var="eventVo" items="${eventList}" varStatus="status">
				    			<c:choose>
								<c:when test ="${eventVo.userno == userVo.userno}">
									<c:if test="${status.index < 5}">
										<tr>
											<td><a href="/event/event_read?event_no=${eventVo.event_no}">${eventVo.event_title}</a></td>
											<td>${eventVo.event_start_date}</td>
											<td>${eventVo.event_end_date}</td>
											<td><button id="btnEventCancel" class="btn btn-sm btn-danger btnEventCancel" value="${eventVo.participate_no}">이벤트 참여 취소</button></td>
										</tr>
									</c:if>
								</c:when>
								</c:choose>
								</c:forEach>
								
							</tbody>
				    	</table>
	            	</div>
	            	<div class="row">
					    <div class="col-lg-12" style="text-align:center;">
							<a class="site-btn" href="/mypage/participate_event_list?userno=${userVo.userno}&page=1">더보기</a>
					    </div>
				    </div>
	            </div>
	            <!-- 유저 참여 이벤트 부분 끝 -->
    		</div>
    		<div class="col-md-2"></div>
    	</div>
        <div class="container">
        </div>
    </section>
    <!-- 마이페이지 부분 끝-->

<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>