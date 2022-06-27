<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>


<!-- Normal Breadcrumb Begin -->
<!-- <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg"> -->
<!-- 	<div class="container"> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-lg-12 text-center"> -->
<!-- 				<div class="normal__breadcrumb__text"> -->
<!-- 					<h2>영화 평점/리뷰 수정</h2> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </section> -->
<!-- Normal Breadcrumb End -->

<script>
// 평점 별
$(function(){
	var starNum = $(".rating").data("rate");
	console.log("starNum:", starNum);
	$(".make_star i").css("color", "black");
	$(".make_star i:nth-child(-n" + starNum + ")").css("color", "orange");
	
	$(".make_star i").click(function(){
		var starNum = $(this).index() + 1;
		console.log("starNum:", starNum);
		$(".make_star i").css("color", "black");
		$(".make_star i:nth-child(-n" + starNum + ")").css("color", "orange");
		$("input[name=review_star]").val(starNum);
	});
});

var insert_result = "${insert_result}";

if (insert_result == "true"){
	alert("리뷰 작성 완료");
}

</script>


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
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
  
  <!-- 별 아이콘 -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
</head>
<body style="background-color: #0b0c2a;">
<div class="container" style="background-color:rgba(255, 255, 255, 0.5); border-radius:10px; padding: 30px;">

<form role="writeForm" action="/review/review_modifyRun" method="post" id="frmCreate" enctype="multipart/form-data">
	<input type="hidden" name="review_star" id="review_star" value="0"/>
	<input type="hidden" name="review_no" id="review_no" value="${reviewVo.review_no}"/>
	
	<label for="review_title"> 제목 </label> 
	<input type="text" class="form-control" id="review_title" name="review_title" 
		value="${reviewVo.review_title}"/>

	
	<label>별점</label>
		<div class="make_star">
			<div class="rating" data-rate="${reviewVo.review_star}">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
			</div>
		</div>

	
	<br><label>내용</label>
	<textarea class="summernote" id="review_content" name="review_content">${reviewVo.review_content}</textarea>
	
	
	<button type="submit"  class="btn btn-primary" id="btnWriteRun">수정완료</button>
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