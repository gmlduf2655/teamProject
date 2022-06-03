<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>


<script>

</script>
<!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>현재 진행중 작성</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

<div class="container-fluid" style="background-color: white">

		
	<div class="row">
	<div class="col-md-2"></div>
		<div class="col-md-8">
<!-- 			<div class="jumbotron"> -->
<!-- 				<h2>이벤트 등록 폼</h2> -->
<!-- 				<p> -->
<!-- 					<a class="btn btn-primary btn-large" href="/event/event_list">이벤트 목록으로</a> -->
<!-- 				</p> -->
<!-- 			</div> -->
			<form role="writeForm" action="/event/write_run" method="post" id="frmCreate" enctype="multipart/form-data">
				<div class="form-group">
					<label for="event_title"> 제목 </label> 
					<input type="text" class="form-control" id="event_title" name="event_title"/>
				</div>
				
				<div class="form-group">
					<label for="event_content"> 내용 </label> 
					<textarea class="form-control" id="event_content" name="event_content"></textarea>
				</div>
				
				<div class="form-group">
					<label for="event_end_date"> 이벤트 종료일 </label> 
					<input type="date" id="event_end_date" name="event_end_date">
				</div>
				
					<div class="form-group">
						<label for="event_image"> 이미지 업로드 </label> 
						<input type="file" class="form-control-file" id="file" name="file" />
					</div>
				
				<button type="submit" class="btn btn-primary">저장</button>
				</form>
		</div>
		<div class="col-md-2"></div>
	</div>
</div>


<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>