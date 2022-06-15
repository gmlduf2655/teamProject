<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<style>
	label{
		color:white;
	}
	.note-editable{
		background-color:white;
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
                        <h2>메세지 읽기</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 제목 끝 -->

    <!-- 메세지 읽기 -->
    <section class="signup spad">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<form role="form" method="get" action="/message/reply_form">
					<input type="hidden" name="messageno" value="${messageVo.messageno}">
					<div class="form-group">
						<label for="sender"> 보내는 이 </label> 
						<input type="text" class="form-control" id="sender" value="${messageVo.sender}" readonly>
					</div>
					<div class="form-group">
						<label for="receiver"> 받는 이 </label> 
						<input type="text" class="form-control" id="receiver" value="${messageVo.receiver}" readonly/>
					</div>
					<div class="form-group">
						<label for="message_title"> 제목 </label> 
						<input type="text" class="form-control" id="message_title" value="${messageVo.message_title}" readonly/>
					</div>
					<div class="form-group">
						<label for="message_content"> 내용 </label> 
						<div class="form-control" style="height:500px; overflow-y : scroll;">${messageVo.message_content}</div>
					</div>
					<div style="text-align:center">
						<c:if test="${loginUserVo.userid == messageVo.receiver}">
							<button type="submit" class="btn btn-primary" >답장하기</button>
						</c:if>
						<a class="btn btn-primary" id="form_btn" href="/message/delete_run?messageno=${messageVo.messageno}&type=${param.type}">삭제하기</a>
					</div>
				</form>
			</div>
			<div class="col-md-2"></div>
		</div>
    </section>
    <!-- 메세지 읽기 끝 -->
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>