<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>



<div class="container-fluid" style="background-color: white">


		
	<div class="row">
	
	
	
		<div class="col-md-12">
			<div class="jumbotron">
				<h2>이벤트 등록 폼</h2>
				<p>
					<a class="btn btn-primary btn-large" href="/event/event_list">이벤트 목록으로</a>
				</p>
			</div>
			<form role="form" action="/event/write_run" method="post" id="frmCreate">
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
					<input type="file" class="form-control-file" id="event_image" name="event_image" />
				</div>
				
				<button type="submit" class="btn btn-primary">저장</button>
				
			</form>
		</div>
		
	</div>
	
</div>


<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>