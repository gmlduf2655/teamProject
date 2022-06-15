<%@page import="com.kh.team.dao.TicketDaoImpl"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<script>
	$(document).ready(function(){
		// 임희열 : 회원 탈퇴시 회원 탈퇴 성공여부 확인
		var unregister_result = "${unregister_result}";
		if (unregister_result == "true"){
			alert("회원 탈퇴 성공");
		}else if(unregister_result == "false"){
			alert("회원 탈퇴 실패");
		}else {}
	});
</script>

<div class="container">
	<div class="row">
		<main class="col-lg-8">
			<%@ include file="/WEB-INF/views/include/main.jsp" %>
		</main>
		<%@ include file="/WEB-INF/views/include/aside.jsp" %>
	</div>
</div>

<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>