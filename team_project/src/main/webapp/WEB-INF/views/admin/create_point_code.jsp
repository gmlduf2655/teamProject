<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<style>
	body {
		background:#eeeeee;
		background-color: #eeeeee;
	}section.product {
		padding : 0;
	}
	
	.ma {
		border-top: 50px solid #eeeeee;
	}
</style>
<!-- 샘플 레이아웃 데이터 -->
<div class="ma">

	<div class="row" style="background-color: #eeeeee">
		<div class="col-md-1"></div>
		<!-- 유수연 메뉴 목록  -->
		<div class="col-md-2">
		<div class="menu">
	    			<%-- <c:if test="">
								로그인 계정이 관리자 계정일때 관리자 메뉴 보이도록
	    			</c:if> --%>
	    				<jsp:include page="/WEB-INF/views/admin/manage_menu.jsp"/>	
    			</div> 
		</div>
		<!-- 유수연 상세내용  -->
		<div class="col-md-7">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-4">
						<h2>포인트 코드 생성기</h2>
						<form role="form" method="post" action="/point/create_point_code_run">
							<div class="form-group">
								<input type="number" class="form-control" name="point_code" id="point_code" placeholder="포인트코드"/>
							</div>
							<div class="form-group">
								<input type="number" class="form-control" name="point" id="point" placeholder="포인트"/>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="point_name" id="point_name" placeholder="포인트이름"/>
							</div>
							<div class="form-group">
								<input type="text" class="form-control" name="point_desc" id="point_desc" placeholder="포인트설명"/>
							</div>
							<button type="submit" class="btn btn-primary">포인트 코드 생성</button>
						</form>
					</div>
					<div class="col-md-4"></div>
					<div class="col-md-4"></div>
				</div>				
				<div class="row">
					<div class="col-md-12">
						<table class="table">
							<thead>
								<tr>
									<th>포인트 코드</th>
									<th>포인트 이름</th>
									<th>포인트</th>
									<th>포인트 설명</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="pointVo" items="${pointCodeList}">
									<tr>
										<td>${pointVo.point_code}</td>
										<td>${pointVo.point_name}</td>
										<td>${pointVo.point}</td>
										<td>${pointVo.point_desc}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>			
		</div>
		<div class="col-md-1"></div>
		<div class="col-md-1"></div>
	</div>
</div>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>