<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
<!-- 서머노트를 위해 추가해야할 부분 -->
<script src="/resources/summerNote/summernote-lite.js"></script>
<script src="/resources/summerNote/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="/resources/summerNote/summernote-lite.css">
<title>쪽지 보내기</title>
<script>
	$(document).ready(function(){
		// 썸머노트 실행
		$('.summernote').summernote({
			height: 450,
			lang: "ko-KR",
			callbacks : {     
				// 썸머노트에서 이미지 업로드시 발생하는 이벤트
				onImageUpload : function(files, editor, welEditable) {    
					console.log(files[0]);
					var file = files[0]
					var formData = new FormData();
					
					// <input type="file" name="file">
					formData.append("file", file);
					
					// processData - ?a=b&c=d
					// contentData - 텍스트 데이터
					$.ajax({
						processData : false,
						contentType : false,
						type : "post",
						async : "true",
						url : "/message/uploadFile",
						data : formData,
						success : function(rData){
							console.log("rData : " + rData);
							$(".note-editable").append("<p><img src='/message/get_image?filename="+ rData +"'></p>");
						}
					});
				}
			}

		});
		
		// 메세지 전송
		$("#form_btn").click(function(){
			console.log($(".note-editable").find("img"));
			console.log($("#sns_type").val());
			var imgs = $(".note-editable").find("img");
			filenames = [];
			$.each(imgs, function(i,v){
				console.log(i);
				console.log(v);
				console.log($(this).attr("src"));
				var img_src = $(this).attr("src");
				var index = img_src.indexOf("=");
				var src = img_src.substring(index + 1);
				filenames.push(src);
			});
			var fileData = {"filenames" : filenames};
			console.log(fileData);
			console.log(filenames);
			$.ajax({
				type : "get",
				async : "true",
				url : "/message/copy_image",
				data : { fileData : JSON.stringify(fileData)},
				success : function(rData){
					console.log(rData);
					console.log(rData.messageno);
					$("#message_form").append("<input type='hidden' name='messageno' value='"+ rData.messageno +"'>");
					$.each(imgs, function(i,v){
						$(this).attr("src", "/message/get_image?filename=" + rData.contentImgFiles[i]);
						console.log($(this).attr("src"));
					});
					$("#message_content").val($(".note-editable").html());
					$("#message_form").submit();
				}
			});
		});
		
	});
</script>
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<div class="jumbotron">
					<h2>메세지 작성</h2>
					<p>
						<a class="btn btn-primary btn-large" href="/message/message_list?page=${param.page}&type=receive">목록으로</a>
					</p>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<form id="message_form" role="form" method="post" action="/message/write_run" encType="multipart/form-data">
					<input type="hidden" name="message_content" id="message_content" >
					<div class="form-group">
						<label for="sender"> 보내는 이 </label> 
						<input type="text" class="form-control" name="sender" id="sender" value="${loginUserVo.userid}" readonly>

					</div>
					<div class="form-group">
						<label for="receiver"> 받는 이 </label> 
						<input type="text" class="form-control" name="receiver" id="receiver" />
					</div>
<!-- 					<div class="form-group"> -->
<!-- 						<label for="sns_type"> 간편로그인 </label>  -->
<!-- 						<select name="sns_type" id="sns_type"> -->
<!-- 							<option value="">아님</option> -->
<!-- 							<option value="naver">네이버</option> -->
<!-- 							<option value="google">구글</option> -->
<!-- 						</select> -->
<!-- 					</div> -->
					<div class="form-group">
						<label for="message_title"> 제목 </label> 
						<input type="text" class="form-control" name="message_title" id="message_title" />
					</div>
					<div class="form-group">
						<label for="message_title"> 내용 </label> 
						<textarea rows="10" class="form-control summernote" ></textarea>
					</div>
					<div class="form-group">
						<span class="mb-4">파일첨부</span><br>
						<label class="btn btn-primary" for="message_file"> 파일첨부 </label> 
						<input type="file" class="form-control-file" id="message_file" style="display:none;"/>
						<div class="help-block">여기에 파일이 들어갑니다</div>
					</div>
					<button type="button" class="btn btn-primary" id="form_btn">전송</button>
				</form>
			</div>
			<div class="col-md-2"></div>
		</div>
	</div>
</body>
</html>