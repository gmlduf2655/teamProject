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
                        <h2>당첨자 발표 작성</h2>
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
<!-- 				<h2>당첨자 등록 폼</h2> -->
<!-- 				<p> -->
<!-- 					<a class="btn btn-primary btn-large" href="/event/winner_info">당첨자 목록으로</a> -->
<!-- 				</p> -->
<!-- 			</div> -->
			<form role="writeForm" action="/event/winner_writeRun" method="post" id="frmCreate" enctype="multipart/form-data">
				<div class="form-group">
					<label for="winner_title"> 제목 </label> 
					<input type="text" class="form-control" id="winner_title" name="winner_title"/>
				</div>
				
				<div class="form-group">
					<label for="winner_content"> 내용 </label> 
					<textarea class="form-control" id="winner_content" name="winner_content"></textarea>
				</div>
				
					<div class="form-group">
						<label for="winner_image"> 이미지 업로드 </label> 
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