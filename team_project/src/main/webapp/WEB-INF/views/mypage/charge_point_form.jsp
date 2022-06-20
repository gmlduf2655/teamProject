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
	</style>
    <script>
		$(document).ready(function(){
			$(".charge").click(function(){
				var charge = $(this).text();
				var index = charge.indexOf("원");
				charge = charge.substring(0,index);
				put_input(charge)
				var point_code = $(this).attr("data-point_code");
				console.log(point_code);
				$("#point_code").val(point_code);
			});
			
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
    
    
    <!-- 제목 부분 -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>포인트 충전</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 제목 부분 끝 -->

    <!-- 포인트 충전 -->
    <section class="login spad">
    	<div class="row">
        	<div class="col-md-2" style="color:white;padding-left:50px;">
        		<jsp:include page="/WEB-INF/views/mypage/mypage_menu.jsp" />
        	</div>
        	<div class="col-md-8">
				<h3 class="mb-4" style="text-align:center;">포인트 충전</h3>
				<div class="row">
					<div class="col-md-3"></div>
					<!-- 결제 금액 선택 -->
					<div class="col-md-6">
						<h3 class="mb-4">결재 금액 선택</h3>
						<div class="row mb-4">
							<div class="col-md-4 mb-4">
								<a class="btn btn-primary charge" style="color:white;" data-point_code="1003">1000원<br>(1000p)</a>
							</div>
							<div class="col-md-4 mb-4">
								<a class="btn btn-primary charge" style="color:white;" data-point_code="1004">5000원<br>(5000p)</a>
							</div>
							<div class="col-md-4 mb-4">
								<a class="btn btn-primary charge" style="color:white;" data-point_code="1005">10000원<br>(10000p)</a>
							</div>
							<div class="col-md-4 mb-4">
								<a class="btn btn-primary charge" style="color:white;" data-point_code="1006">20000원<br>(20000p)</a>
							</div>
							<div class="col-md-4 mb-4">
								<a class="btn btn-primary charge" style="color:white;" data-point_code="1007">50000원<br>(50000p)</a>
							</div>
							<div class="col-md-4 mb-4">
								<a class="btn btn-primary charge_self" style="color:white;">직접입력</a>
							</div>
						</div>
					</div>
					<div class="col-md-3"></div>
				</div>
				<!-- 포인트 충전 -->
				<form method="post" action="/point/charge_point_run">
					<input type="hidden" name="userno" value="${loginUserVo.userno}">
					<input type="hidden" name="point_code" id="point_code">
					<div class="row mb-4" style="color:white;">
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
						
						<div class="col-md-3 mb-4"></div>
						<div class="col-md-1 mb-4" style="padding-right:0px;">
							<label style="font-size:16px;padding-top:6px;">충전 포인트 : </label>
						</div>
						<div class="col-md-3 mb-4">
							<input type="text" class="form-control" style="width:100%;" id="point_text" readonly>
							<input type="hidden" name="point" id="point">
						</div>
						<div class="col-md-2 mb-4">
							<button type="submit" class="site-btn">충전하기</button>
						</div>
						<div class="col-md-3 mb-4"></div>
					</div>
				</form>

				<!-- 마이 페이지 이동 버튼 -->
		        <div style="text-align:center;">
			        <a href="/mypage/main?userno=${param.userno}" class="site-btn">마이페이지로</a>
		        </div>
        	</div>
        	<div class="col-md-2"></div>
        </div>
    </section>
    <!-- 포인트 충전 끝 -->
	
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>