<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Css Styles -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 	
<html>
<head>
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
	});
	//우리서버에 db 일부수정
	$("#btnUpdate").click(function(){
		$("form").attr("action", "/dbcontrol/dbUpdatedetail");
		$("form").attr("method", "post");
		$("form").submit();
	});

	//대표 이미지 미리보기
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

	// 이미지 임시 삭제
	$(document).ready(function(){
			$("#image_delete").click(function(){
			$("#preview").hide();
			$("#image_delete").hide();
		});
	});
});
</script>
</head>
<body>
<div class="row">
<div class="col-md-1"></div>
	<div class="col-md-10">
		<br><h3>영화상세정보수정</h3><hr>
			<form role="form" action="" enctype="multipart/form-data">
			<input type="hidden" name="movie_code" value="${movieVo.movie_code}" disabled>
			  <div class="form-row">
				<div class="col">
					<label for="movie_name">영화제목</label> 
					<input type="text" class="form-control" name="movie_name" disabled value="${movieVo.movie_name}"/>
				
				</div>
				<div class="col">
					<label for="movie_name_en">영화원제</label> 
					<input type="text" class="form-control" name="movie_name_en" disabled value="${movieVo.movie_name_en}"/>
				</div>
				</div>
				<div class="form-row">
				<div class="col">
					<label for="opening_date">개봉일자</label> 
						<fmt:parseDate var="opening_date" value="${movieVo.opening_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
						<input type="text" class="form-control" name="opening_date" disabled
						value="<fmt:formatDate value="${opening_date}" pattern="yyyyMMdd"/>"/>
				</div>
				<div class="col">
					<label for="endding_date">종영일자</label> 
					<fmt:parseDate var="endding_date" value="${movieVo.endding_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
					<input type="text" class="form-control" name="endding_date" disabled
							value="<fmt:formatDate value="${endding_date}" pattern="yyyyMMdd"/>"/>
				</div>
				</div>
				<div class="form-row">
				<div class="col">
					<label for="runningtime">러닝타임</label> 
					<input type="text" class="form-control" name="runningtime" disabled value="${movieVo.runningtime}"/>
				</div>
				<div class="col">
					<label for="make_year">제작일</label> 
					<input type="text" class="form-control" name="make_year" disabled value="${movieVo.make_year}"/>
				</div>
				</div>
				<div class="form-row">
				<div class="col">
					<label for="made_country">제작국가</label> 
					<input type="text" class="form-control" name="made_country" disabled value="${movieVo.made_country}"/>
				</div>
				<div class="col">
					<label for="movie_genre">장르</label> 
					<input type="text" class="form-control" name="movie_genre" disabled value="${movieVo.movie_genre}"/>
				</div>
				</div>
				<div class="form-row">
				<div class="col">
					<label for="movie_director">감독</label> 
					<input type="text" class="form-control" name="movie_director" disabled value="${movieVo.movie_director}"/>
				</div>
				<div class="col">
					<label for="made_company">제작사</label> 
					<input type="text" class="form-control" name="made_company" disabled value="${movieVo.made_company}"/>
				</div>
				</div>
				<div class="form-group">
					<label for="movie_actors">배우</label> 
					<input type="text" class="form-control" name="movie_actors" disabled value="${movieVo.movie_actors}"/>
				</div>
				<div class="form-row">
				<div class="col">
					<label for="movie_audits">관람등급</label> 
					<input type="text" class="form-control" name="movie_audits" disabled value="${movieVo.movie_audits}"/>
				</div>
				<div class="col">
					<label for="movie_video_add">예고편</label> 
					<input type="text" class="form-control" name="movie_video_add" disabled value="${movieVo.movie_video_add}"/>
				</div>
				</div>
				<div class="form-group">
					<label for="movie_synopsis">시놉시스</label> 
					<textarea class="form-control" style="height: 200px;"  disabled
					name="movie_synopsis">${movieVo.movie_synopsis}</textarea>
				</div>
				<div class="form-group">
					<label for="exampleInputFile"> 포스터 </label>
					<input type="file" class="form-control-file" disabled id="file" name="file" data-filename="${movieVo.movie_image_name}"/><br>
					<c:set var="movie_image_name" value="${movieVo.movie_image_name}"/>
					<c:if test="${not empty fn:substringAfter(movie_image_name,'_')}">
						<img id="preview" src="/dbcontrol/displayImage?filename=${movieVo.movie_image_name}" width="200px">
					</c:if>
					<c:if test="${empty fn:substringAfter(movie_image_name,'_')}">
						<img id="preview" src="/resources/images/no_image.jpg" width="200px">
					</c:if>
					<br>
					<br>
               		<a id="image_delete" style="display: none;">사진 삭제<b style="color:red;font-size:30px; cursor: pointer;">&times;</b></a>
				</div>
				
				<div class="form-group">
					<button type="button" id="btnattrAble" class="btn btn-warning">수정</button>
					<button type="button" id="btnUpdate" class="btn btn-success" style="display: none;">수정</button>
					<input type='button' class="btn btn-primary" value="닫기" onClick='window.close()'>
				</div>
			</form>
		</div>
	<div class="col-md-1"></div>	
</div>
</body>
</html>


