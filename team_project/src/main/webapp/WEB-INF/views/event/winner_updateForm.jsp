<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>


<!-- Normal Breadcrumb Begin -->
<section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="normal__breadcrumb__text">
					<h2>당첨자 발표 수정</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Normal Breadcrumb End -->


<html lang="ko">
<head>
  <title>SummerNoteExample</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
  <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="/resources/summerNote/summernote-lite.js"></script>
  <script src="/resources/summerNote/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="/resources/summerNote/summernote-lite.css">
  <!--  -->
  
</head>
<body>
<div class="container" style="background-color: white">

<form role="writeForm" action="/event/winner_modify" method="post" id="frmCreate" enctype="multipart/form-data">
	<label for="winner_title"> 제목 </label> 
	<input type="text" class="form-control" id="winner_title" name="winner_title"/>

	<label>내용</label>
	<textarea class="summernote" id="winner_content" name="winner_content"></textarea>
	
	<button type="submit" class="btn btn-primary">저장</button>
</form>
</div>
<script>
$('.summernote').summernote({
	  height: 450,
	  lang: "ko-KR"
	});
</script>
</body>
</html>


<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>