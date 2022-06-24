<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<style>
label{
color: white;
}
</style>

<!-- Normal Breadcrumb Begin -->
<!-- <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg"> -->
<!-- 	<div class="container"> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-lg-12 text-center"> -->
<!-- 				<div class="normal__breadcrumb__text"> -->
<!-- 					<h2>영화 평점/리뷰</h2> -->
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
				
				$("#modalTable").append("<tr><td>'" + this.movie_name + "'</td><td><button data-mcode='" + this.movie_code + "'data-iname='" +this.movie_image_name+"'data-mname='"+this.movie_name+"'id='modalChoiceMovie'>선택</button></td></tr>");
				
			});
		});
		
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
		
		<div class="col-md-12">
		<br>
				<table class="table" style="display: none;" >
					<thead>
						<tr>
							<th>no</th>
							<th>영화제목</th>
							<th>선택</th> 
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${movieList}" var="movieVo" varStatus="status">
							<tr>
								<td>${status.count}</td>
								<td>${movieVo.movie_name}</td>
								<td><button class="btn btn-sm btn-info">선택</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		
</div>
						<div class="modal-footer">
							 
							<button type="button" class="btn btn-primary">
								닫기
							</button> 
							
						</div>
					</div>
					
				</div>
				
			</div>
			
		</div>
	</div>





<div class="container" style="background-color:rgba(255, 255, 255, 0.5); border-radius:10px; padding: 30px;">

<form role="writeForm" action="/review/review_writeRun" method="post" id="frmCreate" enctype="multipart/form-data">
	<input type="hidden" name="review_star" id="review_star" value="0"/>
	<input type="hidden" name="userno" value="${loginUserVo.userno}"/>
	<input type="hidden" name="movie_code"  data-mcode="" value=""/>
	<input type="hidden" name="movie_image_name" data-iname="" value=""/>
	
	

	
	<label for="review_writer"> 작성자 </label> 
	<input type="text" class="form-control" id="review_writer" name="review_writer" 
		value="${loginUserVo.userid}" readonly/>
	<hr>
	<label for="review_title"> 제목 </label> 
	<input type="text" class="form-control" id="review_title" name="review_title"/>
	<hr>
	<label> 영화 찾기 </label><br>
	<input type="text" name="movie_name" data-mname="" value="" readonly/>
	<a id="modal-670703" href="#modal-container-670703" role="button" class="btn btn btn-info" data-toggle="modal">검색</a>
	
	<hr>
	<label>별점</label>
		<div class="make_star">
			<div class="rating" data-rate="">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
			</div>
		</div>
	<hr>
	<label>내용</label>
	<textarea class="summernote" id="review_content" name="review_content"></textarea>
	<button type="submit" class="btn btn-primary">작성완료</button>
</form>
</div>
<script>
$('.summernote').summernote({
	  // 에디터 높이
	  height: 350,
	  // 에디터 한글 설정
	  lang: "ko-KR",
	  // 에디터에 커서 이동 
	  focus : true,
	  toolbar: [
		    // 글꼴 설정
		    ['fontname', ['fontname']],
		    // 글자 크기 설정
		    ['fontsize', ['fontsize']],
		    // 굵기, 기울임꼴, 밑줄,취소 선, 서식지우기
		    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
		    // 글자색
		    ['color', ['forecolor','color']],
		    // 표만들기
		    ['table', ['table']],
		    // 글머리 기호, 번호매기기, 문단정렬
		    ['para', ['ul', 'ol', 'paragraph']],
		    // 줄간격
		    ['height', ['height']],
		    // 그림첨부, 링크만들기, 동영상첨부
		    ['insert',['picture','link','video']],
		    // 코드보기, 확대해서보기, 도움말
		    ['view', ['codeview','fullscreen', 'help']]
		  ],
		  // 추가한 글꼴
		fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋음체','바탕체'],
		 // 추가한 폰트사이즈
		fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
		
	});
	
function uploadSummernoteImageFile(file) {
	data = new FormData();
	data.append("file", file);
	$.ajax({
		data : data,
		type : "POST",
		url : "/review/uploadSummernoteImageFile",
		contentType : false,
		enctype : 'multipart/form-data',
		processData : false,
		success : function(data) {
			$('.summernote').summernote('insertImage', "/review/summerimages?filename=" + data);
		},
		error : function(e) {
			console.log(e)
		}
	});
}
</script>
</body>
</html>


<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>