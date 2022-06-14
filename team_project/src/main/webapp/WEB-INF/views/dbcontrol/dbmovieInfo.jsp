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
	//우리서버에 db 수정
	$("#btnUpdate").click(function(e){
		//e.preventDefault();
		console.log("#btnUpdate");
		$("form").attr("action", "/dbcontrol/dbUpdate");
		$("form").attr("method", "post");
		$("form").submit();
	});
	
	
});
</script>
</head>
<body>
<div class="row">
<div class="col-md-1"></div>
	<div class="col-md-10">
			<form role="form" action="" enctype="multipart/form-data">
			<input type="hidden" name="movie_code" value="${movieVo.movie_code}">
			  <div class="form-row">
				<div class="col">

					<label for="movie_name">영화제목</label> <input
						type="text" class="form-control" name="movie_name" value="${movieVo.movie_name}"/>
				
				</div>
				<div class="col">

					<label for="movie_name_en">영화원제</label> <input
						type="text" class="form-control" name="movie_name_en" value="${movieVo.movie_name_en}"/>
				</div>
				</div>
				<div class="form-row">
				<div class="col">

					<label for="opening_date">개봉일자</label> 
						<fmt:parseDate var="opening_date" value="${movieVo.opening_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
						<input type="text" class="form-control" name="opening_date"
						value="<fmt:formatDate value="${opening_date}" pattern="yyyyMMdd"/>"/>
				</div>
				<div class="col">

					<label for="endding_date">종영일자</label> 
					<fmt:parseDate var="endding_date" value="${movieVo.endding_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
					<input type="text" class="form-control" name="endding_date" 
							value="<fmt:formatDate value="${endding_date}" pattern="yyyyMMdd"/>"/>
				</div>
				</div>
				<div class="form-row">
				<div class="col">

					<label for="runningtime">러닝타임</label> <input
						type="text" class="form-control" name="runningtime" value="${movieVo.runningtime}"/>
				</div>
				<div class="col">

					<label for="make_year">제작일</label> <input
						type="text" class="form-control" name="make_year" value="${movieVo.make_year}"/>
				</div>
				</div>
				<div class="form-row">
				<div class="col">

					<label for="made_country">제작국가</label> <input
						type="text" class="form-control" name="made_country" value="${movieVo.made_country}"/>
				</div>
				<div class="col">

					<label for="movie_genre">장르</label> <input
						type="text" class="form-control" name="movie_genre" value="${movieVo.movie_genre}"/>
				</div>
				</div>
				<div class="form-row">
				<div class="col">

					<label for="movie_director">감독</label> <input
						type="text" class="form-control" name="movie_director" value="${movieVo.movie_director}"/>
				</div>
				<div class="col">

					<label for="made_company">제작사</label> <input
						type="text" class="form-control" name="made_company" value="${movieVo.made_company}"/>
				</div>
				</div>
				<div class="form-group">

					<label for="movie_actors">배우</label> <input
						type="text" class="form-control" name="movie_actors" value="${movieVo.movie_actors}"/>
				</div>
				<div class="form-row">
				<div class="col">

					<label for="movie_audits">관람등급</label> <input
						type="text" class="form-control" name="movie_audits" value="${movieVo.movie_audits}"/>
				</div><div class="col">

					<label for="movie_video_add">예고편</label> <input
						type="text" class="form-control" name="movie_video_add" value="${movieVo.movie_video_add}"/>
				</div>
				</div>
				<div class="form-group">

					<label for="movie_synopsis">시놉시스</label> <textarea
						class="form-control" style="height: 200px;"  name="movie_synopsis">${movieVo.movie_synopsis}</textarea>
				</div>
				
				<div class="form-group">

					<label for="exampleInputFile"> 포스터 </label> <input
						type="file" class="form-control-file" id="file" name="file"/>
					<p class="help-block">포스터 파일을 등록하세요</p>
				</div>
				<div class="form-group">
					<button type="button" id="btnUpdate" class="btn btn-warning">수정</button>
					<input type='button' class="btn btn-primary" value="닫기" onClick='window.close()'>
				</div>
			</form>
		</div>
	<div class="col-md-1"></div>	
</div>
</body>
</html>


