<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<body style="background-color: #eeeeee;">
	<div class="row">
		<div class="col-md-1">
		</div>
		<div class="col-md-2">
		<div class="menu">
	    			<%-- <c:if test="">
								로그인 계정이 관리자 계정일때 관리자 메뉴 보이도록
	    			</c:if> --%>
	    				<jsp:include page="/WEB-INF/views/admin/manage_menu.jsp"/>	
    			</div> 
		
		</div>
		<div class="col-md-7">
		
		</div>
		<div class="col-md-1">
		</div>
		<div class="col-md-1">
		</div>
	</div>


</body>
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>