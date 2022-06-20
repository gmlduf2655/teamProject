<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<!-- 임희열 : 썸머노트 기능을 사용하기 위해 필요한 것들-->
<link rel="stylesheet" href="/resources/summerNote/summernote-lite.css">
<script src="/resources/summerNote/summernote-lite.js"></script>
<script src="/resources/summerNote/summernote-ko-KR.js"></script>
<style>
	label{
		color:white;
	}
	.note-editable{
		background-color:white;
	}
</style>
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
		
		// 파일 첨부
		$("#message_file").change(function(e){
			console.log(e.target.files[0]);
			var file = e.target.files[0];
			var filename = file.name;
			console.log(filename);
			var formData = new FormData();
			formData.append("file", file);
			
			$.ajax({
				processData : false,
				contentType : false,
				type : "post",
				async : "true",
				url : "/message/uploadFile",
				data : formData,
				success : function(rData){
					console.log("rData : " + rData);
					$("#attach_files").append("<div><span class='mr-3'>"+ filename +"</span><a class='a_filename' data-filename="+ rData +">x삭제</a></div>");	
				}
			});
		});
		
		// 첨부 파일 삭제 클릭시
		$("#attach_files").on("click", ".a_filename", function(e){
			e.preventDefault();
			var filename = $(this).attr("data-filename");
			$(this).parent("div").replaceWith("");
			console.log($(this).parent("div"))
			console.log(filename);
		});
		
		// 메세지 전송
		$("#form_btn").click(function(){
			console.log($(".note-editable").find("img"));
			console.log($("#sns_type").val());
			var imgs = $(".note-editable").find("img");
			var a_filenames = $("#attach_files").find(".a_filename");
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
			$.each(a_filenames, function(){
				var filename = $(this).attr("data-filename");
				var html = "<input type='hidden' name='message_files' value='"+ filename +"'>";
				$("#message_form").append(html);
				filenames.push(filename);
				console.log("1");
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

    <!-- 제목 -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>메세지 작성</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- 제목 끝 -->

    <!-- 메세지 답장 작성 -->
    <section class="signup spad">
				<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<form id="message_form" role="form" method="post" action="/message/reply_run">
					<input type="hidden" name="message_content" id="message_content" >
					<div class="form-group">
						<label for="sender"> 보내는 이 </label> 
						<input type="text" class="form-control" name="sender" id="sender" value="${messageVo.receiver}" readonly>
					</div>
					<div class="form-group">
						<label for="receiver"> 받는 이 </label> 
						<input type="text" class="form-control" name="receiver" id="receiver" value="${messageVo.sender}"/>
					</div>
					<div class="form-group">
						<label for="message_title"> 제목 </label> 
						<input type="text" class="form-control" name="message_title" id="message_title" value="[re]:${messageVo.message_title}"/>
					</div>
					<div class="form-group">
						<label style="color:white;">첨부파일</label><br>
						<label class="btn btn-primary" for="message_file"> 첨부파일 </label> 
						<input type="file" class="form-control-file" id="message_file" style="display:none;"/>
						<div class="help-block form-control" style="height:100px;" id="attach_files">
							<span>여기에 파일이 들어갑니다</span>
						</div>
					</div>
					<div class="form-group">
						<label for="message_title"> 내용 </label> 
						<textarea rows="10" class="form-control summernote" >
						${messageVo.message_content}
						<br>
						----------------------------------------------
						</textarea>
					</div>
					<button type="button" class="btn btn-primary" id="form_btn">전송</button>
				</form>
			</div>
			<div class="col-md-2"></div>
		</div>
    </section>
    <!-- 메세지 답장 작성 끝 -->
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>