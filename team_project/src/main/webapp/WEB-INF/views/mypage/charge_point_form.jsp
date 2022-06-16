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
				var money = charge + "원";
				$("#money").val(money);
				var point = charge + "p";
				$("#point").val(point);
			});
		});
    </script>
    
    
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

    <!-- 포인트 내역을 보여주는 부분 -->
    <section class="login spad">
    	<div class="row">
        	<div class="col-md-2" style="color:white;padding-left:50px;">
        		<jsp:include page="/WEB-INF/views/mypage/mypage_menu.jsp" />
        	</div>
        	<div class="col-md-8">
				<h3 class="mb-4" style="text-align:center;">포인트 충전</h3>
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-6">
						<h3 class="mb-4">결재 금액 선택</h3>
						<div class="row mb-4">
							<div class="col-md-4 mb-4">
								<a class="btn btn-primary charge" style="color:white;">1000원<br>(1000p)</a>
							</div>
							<div class="col-md-4 mb-4">
								<a class="btn btn-primary charge" style="color:white;">5000원<br>(5000p)</a>
							</div>
							<div class="col-md-4 mb-4">
								<a class="btn btn-primary charge" style="color:white;">10000원<br>(10000p)</a>
							</div>
							<div class="col-md-4 mb-4">
								<a class="btn btn-primary charge" style="color:white;">20000원<br>(20000p)</a>
							</div>
							<div class="col-md-4 mb-4">
								<a class="btn btn-primary charge" style="color:white;">50000원<br>(50000p)</a>
							</div>
							<div class="col-md-4 mb-4">
								<a class="btn btn-primary charge_self" style="color:white;">직접입력</a>
							</div>
						</div>
					</div>
					<div class="col-md-3"></div>
				</div>
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
						<input type="text" class="form-control" style="width:100%;" name="point" id="point" readonly>
					</div>
					<div class="col-md-2 mb-4">
						<button type="button" class="site-btn">충전하기</button>
					</div>
					<div class="col-md-3 mb-4"></div>
				</div>
				<div>
					
				</div>
		        <div style="text-align:center;">
			        <a href="/mypage/main?userno=${param.userno}" class="site-btn">마이페이지로</a>
		        </div>
        	</div>
        	<div class="col-md-2"></div>
        </div>
    </section>
    <!-- 포인트 내역을 보여주는 부분 끝 -->
	
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>