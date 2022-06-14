<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<style>
	span{
		font-size:20px;
		margin-bottom:30px;
		color:white;
	}
</style>

<script>
</script>

    <!-- 제목 -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>임시 비밀번호 발급 여부</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 제목 끝 -->

    <!-- 임시 비밀번호 발급 결과 -->
    <section class="signup spad">
        <div class="container">
            <div style="text-align:center;color:white;">
          		<c:choose>
          			<c:when test="${result == 'true'}">
          				<span>비밀번호가 변경되었습니다</span>
          				<span>임시 비밀번호는 ${param.email}로 발급되었으니</span><br>
          				<span>임시 비밀번호로 로그인 하신뒤 즉시 비밀번호를 변경해주시기를 권장드립니다</span><br>
          				<span>혹시 임시 비밀번호가 이메일로 전송되지 않았을 시 관리자에게 연락바랍니다</span><br>
          			</c:when>
					<c:otherwise>
						<span>아이디 혹은 이메일이 잘못되었기 때문에</span><br>
						<span>임시 비밀번호를 발급하지 못하였습니다</span><br>
						<span>아이디 혹은 이메일을 다시 한번 확인해 주세요</span><br>
						<a class="site-btn" href="/user/find_user_id_and_pwd">아이디 혹은 비밀번호 찾기</a>
					</c:otherwise>
          		</c:choose>
          		<a class="site-btn" href="/user/login_form">로그인 화면으로</a>
            </div>
        </div>
    </section>
    <!-- 임시 비밀번호 발급 결과 끝 -->
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>