<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- header -->
<%-- <%@ include file="/WEB-INF/views/include/header.jsp"%> --%>
<title>영화정보 입력 관리자 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 	
</head>
<body>
<script type="text/javascript">
$(function(){
	$("#dbSave").click(function(e){
		//e.preventDefault();
		$("form").attr("action", "/dbControl/dbSave");
		$("form").attr("method", "post");
		console.log("클릭");
		
	});
	$("#dbUpdate").click(function(e){
		//e.preventDefault();
		$("form").attr("action", "/dbControl/dbUpdate");
		$("form").attr("method", "post");
		console.log("클릭");
	});
	$("#dbDelete").click(function(e){
		//e.preventDefault();
		$("form").attr("action", "/dbControl/dbDelete");
		$("form").attr("method", "get");
		console.log("클릭");
	});
});
</script>
	<a target="_blank"
		href="https://www.kobis.or.kr/kobis/business/mast/mvie/searchMovieList.do">영화코드
		검색</a>
	<br>
	<hr>
	<div class="row">
	<div class="col-md-12">
		<input type="text" name="moviecode" id="moviecode">
		<button type="submit" class="btn btn-outline btn-success"
			id="dbSearch">영화검색</button>
	</div>
	</div>
	<div class="col-md-2"></div>
	<div class="col-md-8">
		<form action="" enctype="multipart/form-data">
			<div id="releaseCont">
				<hr>
				<c:forEach begin="0" end="1" var="i">
					<div class="active" id="list${i}">
						<a href="#"></a>
					</div>
				</c:forEach>

			</div>

			<hr>
			<br> <br>
			<button type="submit" id="dbSave">db저장</button>
			<button type="submit" id="dbUpdate">db수정</button>
			<button type="submit" id="dbDelete">db삭제</button>
		</form>
	</div>
	<div class="col-md-2"></div>


	<script type="text/javascript">

	$(document).ready(function(){
		
		$("#dbSearch").click(function(){
			var moviecode = $("#moviecode").val();
			$.ajax({
				type: "GET",
				url: "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json",
				data: {
					key: "6a124949cf23e078e5c9d213db2cf916",
					movieCd: moviecode
				},
				success: function(data) {
					console.log("data" , data);
					var rdata = data.movieInfoResult.movieInfo;
					console.log(rdata.movieCd);
					$('#list'+0).append("영화코드:<input type='text' class=\'movieList\' name='movie_code' value='" + rdata.movieCd +"'><br>");
					$('#list'+0).append("영화제목:<input type='text' class=\'movieList\' name='movie_name' value='" + rdata.movieNm +"'><br>");
					$('#list'+0).append("영화원제:<input type='text' class=\'movieList\' name='movie_name_en' value='" + rdata.movieNmEn +"'><br>");
					$('#list'+0).append("제작연도:<input type='text' class=\'movieList\' name='make_year' value='" + rdata.prdtYear +"'><br>");
					$('#list'+0).append("러닝타임:<input type='text' class=\'movieList\' name='runningtime' value='" + rdata.showTm +"'><br>");
					$('#list'+0).append("개봉날짜:<input type='text' class=\'movieList\' name='opening_date' value='" + rdata.openDt +"'><br>");
					$('#list'+0).append("제작회사:<input type='text' class=\'movieList\' name='made_company' value='" + rdata.companys[0].companyNm +"'><br>");
					$('#list'+0).append("제작국가:<input type='text' class=\'movieList\' name='made_country' value='" + rdata.nations[0].nationNm +"'><br>");
					$('#list'+0).append("영화감독:<input type='text' class=\'movieList\' name='movie_director' value='" + rdata.directors[0].peopleNm +"'><br>");
					$('#list'+0).append("영화장르:<input type='text' class=\'movieList\' name='movie_genre' value='" + rdata.genres[0].genreNm +"'><br>");
					$('#list'+0).append("영화배우:<input type='text' class=\'movieList\' name='movie_actors' value='" + rdata.actors[0].peopleNm +"'><br>");
					$('#list'+0).append("영화등급:<input type='text' class=\'movieList\' name='movie_audits' value='" + rdata.audits[0].watchGradeNm +"'><br>");
					$('#list'+0).append("영화시놉:<textarea class=\'movieList\' name='movie_synopsis'></textarea><br>");
					$('#list'+0).append("<div><label for='file'> 포스터  :</label><input type='file' class='form-control-file' id='file' name='file' /></div>");
				}		
		});
			/*$.each(data.movieInfoResult.movieInfo, function(i,j){
					 console.log( " i" + i);
					 console.log("J" +j);
					$('#list' + 0).append("<textarea class=\'movieList\' name='movie_code' value='" + j +"'>"+ i +":" + j +"</textarea><br>");
					$('#list').append("<textarea class=\'movieList\' name='movie_name' value='" +j.movieNm +"'>" +j.movieNm+"</textarea><br>");
					$('#list').append("<textarea class=\'movieList\' name='movie_name_en' value='" +j.movieNmEn +"'>" +j.movieNmEn+"</textarea><br>");
					$('#list').append("<textarea class=\'movieList\' name='s_make_year' value='" +j.prdtYear +"'>" +j.prdtYear+"</textarea><br>");
					$('#list').append("<textarea class=\'movieList\' name='s_runningtime' value='" +j.showTm +"'>" +j.showTm+"</textarea><br>");
					$('#list').append("<textarea class=\'movieList\' name='opening_date' value='" +j.openDt +"'>" +j.openDt+"</textarea><br>");
					$('#list').append("<textarea class=\'movieList\' name='MADE_COUNTRY' value='" +j.nationNm +"'>" +j.nationAlt+"</textarea><br>");
					$('#list').append("<textarea class=\'movieList\' name='movie_genre' value='" +j.genreNm +"'>" +j.genreAlt+"</textarea><br>");
					$('#list').append("<textarea class=\'movieList\' name='movie_director' value='" +j.peopleNm +"'>" +j.repNationNm+"</textarea><br>");
					$('#list').append("<textarea class=\'movieList\' name='made_company' value='" +j.companyNm +"'>" +j.companyNm+"</textarea><br>");
					 
				}); */
			
		});
	});
</script>
<!-- footer -->
<%-- <%@ include file="/WEB-INF/views/include/footer.jsp"%> --%>