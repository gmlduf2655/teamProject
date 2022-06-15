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
                        <h2>아이디 찾기 결과</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 제목 끝 -->

    <!-- 아이디  찾기 결과 -->
    <section class="signup spad">
        <div class="container">
            <div style="text-align:center;color:white;">
          		<c:choose>
          			<c:when test="${empty userid}">
          				<span>해당 이름과 이메일을 가진 아이디가 존재하지 않습니다</span>
          			</c:when>
					<c:otherwise>
						<span>아이디를 찾았습니다</span><br>
						<span>아이디 : ${userid}</span>
					</c:otherwise>
          		</c:choose>
          		<br>
          		<a class="site-btn" href="/user/login_form">로그인 화면으로</a>
          		<a class="site-btn" href="/user/find_user_id_and_pwd">비밀번호 찾기</a>
            </div>
        </div>
    </section>
    <!-- 아이디 찾기 결과 끝 -->
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>