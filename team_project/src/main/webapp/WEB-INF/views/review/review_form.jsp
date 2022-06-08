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
                        <h2>영화 평점/리뷰 작성</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

<style>

</style>

<script>
// 평점 별
$(function(){
	// 옵션 선택으로 별점 매기기
	var userScore = $("#makeStar");
	userScore.change(function(){
		var userScoreNum = $(this).val();
//		console.log(userScoreNum);
		$(".make_star i").css("color", "black");
		$(".make_star i:nth-child(-n" + userScoreNum + ")").css("color", "orange");
		
// 		var url = "/review/review_writeRun";
// 		var sData = {
// 				"userScoreNum" : userScoreNum
// 		}
// 		console.log(sData);
		
// 		$.post(url, sData, function(){});
	});
	
	// 클릭으로 별점 매기기
	$(".make_star i").click(function(){
		var targetNum = $(this).index() + 1;
		$(".make_star i").css("color", "black");
		$(".make_star i:nth-child(-n" + targetNum + ")").css("color", "orange");
	
	
	});
	
	// 리뷰 작성하기 버튼
	$("#btnWriteRun").click(function(){
//		var wform = $("#frmCreate").serialize();
//		console.log(wform);
		var userScoreNum = $("#makeStar").val();
//		console.log(userScoreNum);
		var review_title = $("#review_title").val();
		var review_content = $("#review_content").val();
//		console.log(review_title);
//		console.log(review_content);
		
 		$.ajax({
 			type : "post",
 			url : "/review/review_writeRun",
 			contentType: "application/x-www-form-urlencoded; charset=UTF-8",
 			dataType: "text",
 			data : {
 				"review_title" : review_title,
 				"review_content" : review_content,
 				"userScoreNum" : userScoreNum
 			}
 		});
		
	});
	
});
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
<!--   <link rel="stylesheet" href="/resources/summerNote/summernote-lite.css"> -->
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
  
  <!-- 별 아이콘 -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
</head>
<body>
<div class="container" style="background-color: white">

<form role="writeForm" action="/review/review_writeRun" method="post" id="frmCreate" enctype="multipart/form-data">
	<label for="review_title"> 제목 </label> 
	<input type="text" class="form-control" id="review_title" name="review_title"/>

	
	<label>별점</label>
		<div class="make_star">
			<select name="" id="makeStar">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
			</select>
		<div class="rating" data-rate="">
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
			<i class="fa fa-star"></i>
		</div>
	</div>

	
	<br><label>내용</label>
	<textarea class="summernote" id="review_content" name="review_content"></textarea>
	
	
	<a href="/review/review_writeRun" type="button" class="btn btn-primary" id="btnWriteRun">저장</a>
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