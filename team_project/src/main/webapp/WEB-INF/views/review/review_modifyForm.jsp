<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>


<!-- 상단 타이틀 -->
    <section class="normal-breadcrumb set-bg" style="height: 100px">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>평점/리뷰</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!-- 상단 타이틀 끝 -->

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
	
	// 영화 db 검색
	$("#btndbSearch").click(function(){
		
		$("#modalTable tbody").empty();
		var sType = $("#searchType").val();
		var sKeyword = $("#sKeyword").val();
		console.log("sType:", sType);
		console.log("keyword:", sKeyword);
		
		var url = "/review/dbSearch";
		var sData = {
				"sType" : sType,
				"sKeyword" : sKeyword
		}
		$.get(url, sData, function(rData){
			var that = rData;

			$.each(rData, function(){
				$("#modalTable").attr("style", "text-align: center");
				$("#modalTable").append("<tr><td>'" + this.movie_name + "'</td><td><button class='btn btn-sm btn-info' data-mcode='" + this.movie_code + "'data-iname='" +this.movie_image_name+"'data-mname='"+this.movie_name+"'id='modalChoiceMovie'>선택</button></td></tr>");
			
			});
		});
		
	});
	
	// 모달창 닫기 버튼 무르면 모달창 닫게 하기
	$("#btnClose").click(function(){
		console.log("클릭");
		$('#modal-container-670703').modal('hide');
	});
	
	
	
	$("#modalTable").on("click", "#modalChoiceMovie", function(){
		console.log("클릭");
		var movie_code = $(this).attr("data-mcode");
		var movie_image_name = $(this).attr("data-iname");
		var movie_name = $(this).attr("data-mname");
		console.log("movie_code:", movie_code);
		console.log("movie_image_name:", movie_image_name);
		console.log("movie_name:", movie_name);
		$("input[name=movie_code]").attr("value", movie_code);
		$("input[name=movie_image_name]").attr("value", movie_image_name);
		$("input[name=movie_name]").attr("value", movie_name);
		$('#modal-container-670703').modal('hide');
		
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
  <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
  
  <!-- 별 아이콘 -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  
</head>
<body style="background-color: #0b0c2a;">


<div class="row">
		<div class="col-md-12">
			 
			
			<div class="modal fade" id="modal-container-670703" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="myModalLabel">영화 검색</h5> 
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body">
							<select id="searchType">
								<option value="movie_name">영화제목
							</select>
							<input type="text" name="skeyword" id="sKeyword"> <a type="button" class="btn btn-primary" id="btndbSearch">검색</a>
						</div>
						
						<div id="modalDiv" style="margin: auto;">
						<table border="1"  style="text-align: center; display: none;" id="modalTable">
						<thead>
						<tr>
							<th style="width: 300px;">영화 제목</th>
							<th style="width: 100px;">선택</th>
						</tr>
						</thead>
						<tbody>
						
						<tr>
							<td></td>
							<td></td>
						</tr>
						
						</tbody>
						</table>
						</div>
						
						<div class="row">
		
		
		
</div>
						<div class="modal-footer">
							 
							<button type="button" id="btnClose" class="btn btn-primary">
								닫기
							</button> 
							
						</div>
					</div>
					
				</div>
				
			</div>
			
		</div>
	</div>


<div class="container" style="background-color:rgba(255, 255, 255, 0.5); border-radius:10px; padding: 30px;">

<form role="writeForm" action="/review/review_modifyRun" method="post" id="frmCreate" enctype="multipart/form-data">
	<input type="hidden" name="review_star" id="review_star" value="0"/>
	<input type="hidden" name="review_no" id="review_no" value="${reviewVo.review_no}"/>
	
	<label for="review_title"> 제목 </label> 
	<input type="text" class="form-control" id="review_title" name="review_title" 
		value="${reviewVo.review_title}"/>
		 <hr>
	<label> 영화 찾기 </label><br>
	<input type="text" name="movie_name" data-mname="" value="${reviewVo.movie_name}" readonly/>
	<a id="modal-670703" href="#modal-container-670703" role="button" class="btn btn btn-info" data-toggle="modal"
		>검색</a>
	<hr>
	
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
	<hr>
	
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