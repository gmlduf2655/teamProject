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
		.charge, .charge_self{
			width:100%;
			height:90px;
			line-height:38px;
			color:white;
			font-size:20px;
			text-align:center;
		}
		.charge_self{
			line-height: 76px;
		}
		input::-webkit-inner-spin-button{
			-webkit-appearance:none;
		}
		.nice-select{
			float:none;
		}
		.btn-custom{
			background-color:#e53637;
			border-color:#e53637;
		}
		.btn-custom:hover{
			background-color:#e53637;
			border-color:#e53637;
		}
		.btn-custom:focus{
			background-color:#e53637;
			border-color:#e53637;
		}
	</style>
    <script>
		$(document).ready(function(){
			// 각 금액 버튼(1000, 5000, 10000원 등등)을 눌렀을 때
			$(".charge").click(function(){
				var charge = $(this).text();
				var index = charge.indexOf("원");
				charge = charge.substring(0,index);
				put_input(charge)
				var point_code = $(this).attr("data-point_code");
				console.log(point_code);
				$("#point_code").val(point_code);
			});
			
			// 결제 금액을 select태그로 표현했을 때 사용한 함수
// 			$("#select_charge").change(function(){
// 				var charge = $(this).val();
// 				if(charge != 0){
// 					console.log(charge);
// 					put_input(charge)
// 					var point_code = get_point_code(charge);
// 					console.log(point_code);
// 					$("#point_code").val(point_code);					
// 				}else{
// 					$("#modal-180340").trigger("click");
// 				}
// 			});
			
// 			// 결제 가격
// 			function get_point_code(charge){
// 				switch(parseInt(charge)){
// 				case 1000:
// 					return 1003;
// 				case 5000:
// 					return 1004;
// 				case 10000:
// 					return 1005;
// 				case 20000:
// 					return 1006;
// 				case 50000:
// 					return 1007;
// 				}
// 			}
				
			
			// 직접 입력 버튼 클릭시 모달창이 나오게 함
			$(".charge_self").click(function(){
				$("#modal-180340").trigger("click");
			});
			
			// 모달창에서 저장 버튼을 누를 시 
			$("#save_btn").click(function(){
				var charge = $("#charge").val();
				put_input(charge)
				var point_code = 1008;
				console.log(point_code);
				$("#point_code").val(point_code);
				$("#exit_btn").trigger("click");
			});
			
			// 금액, 포인트와 관련된 것을 input 태그에 넣기 위한 함수
			function put_input(charge){
				var money = charge + "원";
				$("#money").val(money);
				var point = charge + "p";
				$("#point_text").val(point);
				$("#point").val(charge);
			}
			
			// 카카오페이 충전버튼
			$("#kakao_charge").click(function(){
				var item_name = "포인트 충전 (" + $("#money").val() + ")"; // 상품명
				var total_amount = $("#point").val(); // 충전 포인트
				var point_code = $("#point_code").val(); // 포인트 코드
				// 충전 금액이 0포인트 초과일때 카카오 페이 결제가 실행되도록 함
				if(total_amount > 0){
					// 카카오 페이에 인증 정보를 넣고 인증 성공시 결제 팝업창을 보여줌
					$.ajax({
						type : "post",
						async : "true",
						url : "/point/kakao_pay_ready",
						dataType : "json",
						data : {
							item_name : item_name,
							total_amount : total_amount,
							point_code : point_code
						},
						success : function(data){
							// 성공시 카카오 페이 결제 팝업창을 띄어줌
							var open = window.open(data.next_redirect_pc_url, "카카오 페이 결제", "width=800, height=600");
						}
					});
				}
			});
		});
    </script>
     
     <!-- 모달창 이동 버튼(숨겨 놓을 예정) -->
     <a id="modal-180340" href="#modal-container-180340" role="button" class="btn" data-toggle="modal" style="display:none;">Launch demo modal</a>
		
	 <!-- 모달창 화면 -->		
	 <div class="modal fade" id="modal-container-180340" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="myModalLabel">결제 금액 직접 입력</h5> 
					<button type="button" class="close" data-dismiss="modal">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<label>결제 금액 : </label>
					<input type="number" id="charge">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="save_btn">저장</button> 
					<button type="button" class="btn btn-secondary" data-dismiss="modal" id="exit_btn">취소</button>
				</div>
			</div>
		</div>
	</div>
    <!-- 모달창 화면 끝 -->
    
    <!-- 제목 부분 -->
<!--     <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg"> -->
<!--         <div class="container"> -->
<!--             <div class="row"> -->
<!--                 <div class="col-lg-12 text-center"> -->
<!--                     <div class="normal__breadcrumb__text"> -->
<!--                         <h2>포인트 충전</h2> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </section> -->
    <!-- 제목 부분 끝 -->

    <section>
    	<div class="row">
    		<!-- 메뉴 -->
        	<div class="col-md-2" style="color:white;margin-left: 80px;">
        		<jsp:include page="/WEB-INF/views/mypage/mypage_menu.jsp" />
        	</div>
        	<!-- 메뉴 끝 -->
        	<div class="col-md-8">
				<h3 class="mb-4" style="text-align:center;">포인트 충전</h3>
				<!-- 결제 금액 선택 -->
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<h3 class="mb-4">결재 금액 선택</h3>
						<div class="row mb-4">
							<div class="col-md-4 mb-4">
								<a class="btn btn-custom charge" style="color:white;" data-point_code="1003">1000원<br>(1000p)</a>
							</div>
							<div class="col-md-4 mb-4">
								<a class="btn btn-custom charge" style="color:white;" data-point_code="1004">5000원<br>(5000p)</a>
							</div>
							<div class="col-md-4 mb-4">
								<a class="btn btn-custom charge" style="color:white;" data-point_code="1005">10000원<br>(10000p)</a>
							</div>
							<div class="col-md-4 mb-4">
								<a class="btn btn-custom charge" style="color:white;" data-point_code="1006">20000원<br>(20000p)</a>
							</div>
							<div class="col-md-4 mb-4">
								<a class="btn btn-custom charge" style="color:white;" data-point_code="1007">50000원<br>(50000p)</a>
							</div>
							<div class="col-md-4 mb-4">
								<a class="btn btn-custom charge_self" style="color:white;">직접입력</a>
							</div>
						</div>
					</div>
					<div class="col-md-3"></div>
				</div>
				<!-- 결제 금액 선택 끝 -->
				
				<!-- 포인트 충전 -->
				<form method="post" action="/point/charge_point_run">
					<input type="hidden" name="userno" value="${loginUserVo.userno}">
					<input type="hidden" name="point_code" id="point_code">
<!-- 					<div class="row mb-4"> -->
<!-- 						<div class="col-md-3 mb-4"></div> -->
<!-- 						<div class="col-md-5 mb-4"> -->
<!-- 							<label style="font-size:16px;padding-top:6px;color:white">결재 금액 선택: </label> -->
<!-- <!-- 							<input type="text" class="form-control" style="width:100%;" name="money" id="money" readonly> --> -->
<!-- 							<select name="select_charge" id="select_charge"> -->
<!-- 								<option value="1000">1000원 (1000P)</option> -->
<!-- 								<option value="5000">5000원 (5000P)</option> -->
<!-- 								<option value="10000">10000원 (10000P)</option> -->
<!-- 								<option value="20000">20000원 (20000P)</option> -->
<!-- 								<option value="50000">50000원 (50000P)</option> -->
<!-- 								<option value="0">직접 입력</option> -->
<!-- 							</select> -->
<!-- 						</div> -->
<!-- 						<div class="col-md-2 mb-4"></div> -->
<!-- 						<div class="col-md-2 mb-4"></div> -->
<!-- 					</div> -->
					<div class="row mb-4" style="color:white;">
						<!-- 결제 금액 -->
						<div class="col-md-3 mb-4"></div>
						<div class="col-md-1 mb-4">
							<label style="font-size:16px;padding-top:6px;">결재 금액 : </label>
						</div>
						<div class="col-md-3 mb-4">
							<input type="text" class="form-control" style="width:100%;" name="money" id="money" readonly>
						</div>
						<div class="col-md-2 mb-4">
						</div>
						<div class="col-md-3 mb-4"></div>
						<!-- 결제 금액 끝 -->
						
						<!-- 충전 포인트 -->
						<div class="col-md-3 mb-4"></div>
						<div class="col-md-1 mb-4" style="padding-right:0px;">
							<label style="font-size:16px;padding-top:6px;">충전 포인트 : </label>
						</div>
						<div class="col-md-3 mb-4">
							<input type="text" class="form-control" style="width:100%;" id="point_text" readonly>
							<input type="hidden" name="point" id="point">
						</div>
						<!-- 충전 포인트 끝 -->
					</div>
					<!-- 충전 버튼 -->
					<div class="row mb-4" style="color:white;">
						<div class="col-md-3 mb-4"></div>
						<div class="col-md-5 mb-4">
							<button type="submit" class="site-btn">충전하기</button>
							<button id="kakao_charge" type="button" class="site-btn" style="background-color:#ff9900"
							onClick="self.close() ; javascript:parent.opener.location.href='/mypage/main?userno=1'"
							>카카오페이로 충전하기</button>
						</div>
					</div>
					<!-- 충전 버튼 끝 -->
				</form>
				<!-- 포인트 충전 끝 -->

				<!-- 마이 페이지 이동 버튼 -->
		        <div style="text-align:center;">
			        <a href="/mypage/main?userno=${param.userno}" class="site-btn">마이페이지로</a>
		        </div>
		        <!-- 마이 페이지 이동 버튼 끝 -->
        	</div>
        	<div class="col-md-2"></div>
        </div>
    </section>
	
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>