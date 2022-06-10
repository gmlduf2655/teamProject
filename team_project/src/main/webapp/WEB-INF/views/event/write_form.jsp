<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>





<!-- Normal Breadcrumb Begin -->
<section class="normal-breadcrumb set-bg"
	data-setbg="/resources/images/img/normal-breadcrumb.jpg">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="normal__breadcrumb__text">
					<h2>현재 진행중</h2>
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
</head>

<body>
	<div class="container" style="background-color: white">

		<form role="writeForm" action="/event/write_run" method="post"
			id="frmCreate" enctype="multipart/form-data">
			<div class="form-group">
				<label for="event_title"> 제목 </label> <input type="text"
					class="form-control" id="event_title" name="event_title" />
			</div>

			<div class="form-group">
				<label for="event_end_date"> 이벤트 종료일 </label> <br>
				<input type="date" id="event_end_date" name="event_end_date">
			</div>

			<div class="form-group">
				<label for="event_content"> 내용 </label>
				<textarea class="summernote" id="event_content" name="event_content"></textarea>
			</div>

			<div class="form-group">
				<label for="event_image"> 이미지 업로드 </label> 
				<input type="file" class="form-control-file" id="file" name="file" />
			</div>

			<button type="submit" class="btn btn-primary">저장</button>
		</form>
	</div>

</body>
</html>


<script>
$('.summernote').summernote({
	  // 에디터 높이
	  height: 350,
	  // 에디터 한글 설정
	  lang: "ko-KR",
	  // 에디터에 커서 이동 (input창의 autofocus라고 생각하시면 됩니다.)
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
		url : "/event/uploadSummernoteImageFile",
		contentType : false,
		enctype : 'multipart/form-data',
		processData : false,
		success : function(data) {
			$('.summernote').summernote('insertImage', "/event/summerimages?filename=" + data);
		},
		error : function(e) {
 			console.log(e)
 		}
	});
}
</script>

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>