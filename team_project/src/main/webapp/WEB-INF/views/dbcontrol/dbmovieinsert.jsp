<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Css Styles -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css">
<script src="/resources/js/stillcut.js"></script> 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 	
<html>
<head>
<style type="text/css">
#fileDrop{
	width: 50%;
	height: 100px;
	background-color: lightgray;
	margin-bottom : 10px;
	border: 1px dashed blue;
}
.divUploaded{
	width: 150px;
	float: left;
}
</style>
<script type="text/javascript">
$(function(){
	var db_updatedetail_result = "${db_updatedetail_result}";
	if(db_updatedetail_result == "true"){
		alert("DB 수정 완료");
	} else if (db_updatedetail_result == "false"){
		alert("DB 수정 실패");
	}
	//db 수정 disabled 해제
	$("#btnattrAble").click(function(){
		$(this).hide();
		$("#btnUpdate").show();
		$("input[disabled]").removeAttr("disabled");
		$("#image_delete").removeAttr("style");
		$("textarea[disabled]").removeAttr("disabled");
		$(".image_deletestill").removeAttr("style");
		$("#stillcutadd").show();
	});
	//우리서버에 db 일부수정
	$("#btnUpdate").click(function(){
		$("form").attr("action", "/dbcontrol/dbUpdatedetail");
		$("form").attr("method", "post");
		$("form").submit();
	});

	//포스터 이미지 미리보기
	$(function() {
	    $("#file").on("change", function(){
	    readURL(this);
	    });
	});
	function readURL(input) {
	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        $("#preview").attr('src', e.target.result);
	        }
	        reader.readAsDataURL(input.files[0]);
	        $("#preview").show();
	        $("#image_delete").show();
	        
	    }
	}

	//포스터 이미지 임시 삭제
	$(document).ready(function(){
			$("#image_delete").click(function(){
			$("#preview").hide();
			$("#image_delete").hide();
		});
	});

	//스틸컷 이미지 삭제
	$(document).ready(function(){
			$(".image_deletestill").click(function(){
				var image_name = $(this).attr("id");
				$(this).next().show();
				var that = $(this).parent();
				var image = $(this).prev().prev().attr("id");
				var sno = $(this).parent().find("input[data-sno]").attr("data-sno");
			var url = "/dbcontrol/deleteFile/"+sno;
			var filename = $(this).parent().find("input[data-filename]").attr("data-filename"); 
			var sData = {
					"filename" : filename
			};
			$.get(url,sData, function(rData){
				if(rData == "true"){
					that.hide();
				}
			});
		});
	});
	//스틸샷 첨부파일 등록
	$("#fileDrop").on("dragenter dragover", function(e){
	e.preventDefault();
	});
	$("#fileDrop").on("drop", function(e){
		e.preventDefault();
		var file = e.originalEvent.dataTransfer.files[0]; 
		var formData = new FormData(); 
		var movie_code = $("#movie_code").val();
		formData.append("file", file); 
		var url = "/dbcontrol/fileupload/" + movie_code;
		
		$.ajax({
			"processData" : false,
			"contentType" : false,
			"url"		: url,
			"method"	: "post",
			"data"		: formData,
			"success"	: function(rData){
				console.log("rData", rData);
				var cloneDiv = $(".divUploaded").eq(0).clone();
				var filename = getFilename(rData);
				cloneDiv.find("span").text(filename);
				cloneDiv.attr("data-filename", rData);
				if(isImage(filename)){
					cloneDiv.find("img").attr("src", "/dbcontrol/displayImage?filename=" + rData);
					cloneDiv.find("a.a_delete").attr("data-filename", rData);
				}
				cloneDiv.appendTo($("#uploadedList")).show();
			}
		}); 
	});
	 //스틸샷 업로드 취소
	$("#uploadedList").on("click" , ".a_delete", function(e){
		var that = $(this);
		e.preventDefault();
		var filename = that.attr("data-filename");
		var url = "/dbcontrol/deleteFile";
		var sData = {
				"filename" : filename
		};
		$.get(url, sData, function(rData){
			console.log("rData" , rData);
			if(rData == "true"){
				that.parent().remove();
			}
		});
	});
});
</script>
</head>
<body>
<div class="row">
<div class="col-md-1"></div>
	<div class="col-md-10">
		<br><h3>영화등록</h3><hr>
			<form role="form" action="/dbcontrol/dbmovieinsert" method="post" enctype="multipart/form-data" accept-charset="UTF-8">
			  <div class="form-row">
				<div class="col">
					<label for="movie_code">영화코드</label> 
					<input type="text" class="form-control" id="movie_code" name="movie_code"/>
				</div>
				
				</div>
			  <div class="form-row">
				<div class="col">
					<label for="movie_name">영화제목</label> 
					<input type="text" class="form-control" name="movie_name"/>
				
				</div>
				<div class="col">
					<label for="movie_name_en">영화원제</label> 
					<input type="text" class="form-control" name="movie_name_en"/>
				</div>
				</div>
				<div class="form-row">
				<div class="col">
					<label for="opening_date">개봉일자</label> 
						<input type="text" class="form-control" name="opening_date"/>
				</div>
				<div class="col">
					<label for="endding_date">종영일자</label> 
					<input type="text" class="form-control" name="endding_date"/>
				</div>
				</div>
				<div class="form-row">
				<div class="col">
					<label for="runningtime">러닝타임</label> 
					<input type="text" class="form-control" name="runningtime"/>
				</div>
				<div class="col">
					<label for="make_year">제작일</label> 
					<input type="text" class="form-control" name="make_year"/>
				</div>
				</div>
				<div class="form-row">
				<div class="col">
					<label for="made_country">제작국가</label> 
					<input type="text" class="form-control" name="made_country"/>
				</div>
				<div class="col">
					<label for="movie_genre">장르</label> 
					<input type="text" class="form-control" name="movie_genre"/>
				</div>
				</div>
				<div class="form-row">
				<div class="col">
					<label for="movie_director">감독</label> 
					<input type="text" class="form-control" name="movie_director"/>
				</div>
				<div class="col">
					<label for="made_company">제작사</label> 
					<input type="text" class="form-control" name="made_company"/>
				</div>
				</div>
				<div class="form-group">
					<label for="movie_actors">배우</label> 
					<input type="text" class="form-control" name="movie_actors"/>
				</div>
				<div class="form-row">
				<div class="col">
					<label for="movie_audits">관람등급</label> 
					<input type="text" class="form-control" name="movie_audits"/>
				</div>
				<div class="col">
					<label for="movie_video_add">예고편</label> 
					<input type="text" class="form-control" name="movie_video_add"/>
				</div>
				</div>
				<div class="form-group">
					<label for="movie_synopsis">시놉시스</label> 
					<textarea class="form-control" style="height: 200px;"
					name="movie_synopsis"></textarea>
				</div>
				<div class="form-group">
					<label for="exampleInputFile"> 포스터 </label>
					<input type="file" class="form-control-file" id="file" name="file" data-filename="${movieVo.movie_image_name}"/><br>
					<br>
					<br>
               		<a id="image_delete" style="display: none;">사진 첨부<b style="color:red;font-size:30px; cursor: pointer;">&times;</b></a>
				</div>
				<hr>
				<!-- 스틸컷 추가 -->
				<div id="stillcutadd">
					<div align="left" id="fileinfo">
						<label>스틸컷 : 첨부할 파일을 드래그 &amp; 드롭하세요</label>
						<div id="fileDrop" align="left"></div>
					</div>

					<div class="divUploaded" style="display: none;">
						<img alt="" src="" height="100"><br> <span></span> <a
							class="a_delete" href="#">&times;</a>
					</div>
					<div id="uploadedList"></div>
					<div style="clear: both;"></div>
					<br>
				</div>
				<!-- 스틸컷 추가 -->
				<div class="form-group">
					<button type="submit" class="btn btn-warning">저장</button>
					<input type='button' class="btn btn-primary" value="닫기" onClick='window.close()'>
				</div>
			</form>
		</div>
	<div class="col-md-1"></div>	
</div>
</body>
</html>


