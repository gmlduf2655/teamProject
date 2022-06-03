<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 	
</head>
<body>
<script type="text/javascript">
$(function(){
	$("#dbSave").click(function(e){
		//e.preventDefault();
		$("form").attr("action", "/crawling/dbSave");
		console.log("클릭");
		
	});
	$("#dbUpdate").click(function(e){
		//e.preventDefault();
		$("form").attr("action", "/crawling/dbUpdate");
		console.log("클릭");
	});
});
</script>
<form action="" method="get">
	<div id="releaseCont">
		
			<c:forEach begin="0" end="10" var="i">
				<div class="active" id="list${i}">${i}
					<a href="#"></a>
				</div>
			</c:forEach>
		
	</div>
	<button type="submit" id="dbSave">db저장</button>
	<button type="submit" id="dbUpdate">db수정</button>
</form>

<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			type: "GET",
			url: "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.json",
			data: {
				key: "6a124949cf23e078e5c9d213db2cf916",
				movieCd: 20188441
			},
			success: function(data) {
				console.log(data);
				var rdata = data.movieInfoResult.movieInfo;
				console.log(rdata.movieCd);
				$('#list'+0).append("<textarea class=\'movieList\' name='movie_code' value='" + rdata.movieCd +"'>"+ rdata.movieCd +"</textarea><br>");
				$('#list'+0).append("<textarea class=\'movieList\' name='movie_name' value='" + rdata.movieNm +"'>"+ rdata.movieNm +"</textarea><br>");
				$('#list'+0).append("<textarea class=\'movieList\' name='movie_name_en' value='" + rdata.movieNmEn +"'>"+ rdata.movieNmEn +"</textarea><br>");
				$('#list'+0).append("<textarea class=\'movieList\' name='s_make_year' value='" + rdata.prdtYear +"'>"+ rdata.prdtYear +"</textarea><br>");
				$('#list'+0).append("<textarea class=\'movieList\' name='s_runningtime' value='" + rdata.showTm +"'>"+ rdata.showTm +"</textarea><br>");
				$('#list'+0).append("<textarea class=\'movieList\' name='opening_date' value='" + rdata.openDt +"'>"+ rdata.openDt +"</textarea><br>");
				$('#list'+0).append("<textarea class=\'movieList\' name='made_company' value='" + rdata.companys[0].companyNm +"'>"+ rdata.companys[0].companyNm +"</textarea><br>");
				$('#list'+0).append("<textarea class=\'movieList\' name='made_country' value='" + rdata.nations[0].nationNm +"'>"+ rdata.nations[0].nationNm  +"</textarea><br>");
				$('#list'+0).append("<textarea class=\'movieList\' name='movie_director' value='" + rdata.directors[0].peopleNm +"'>"+ rdata.directors[0].peopleNm +"</textarea><br>");
				$('#list'+0).append("<textarea class=\'movieList\' name='movie_genre' value='" + rdata.genres[0].genreNm +"'>"+ rdata.genres[0].genreNm +"</textarea><br>");
				 /*  $.each(data.movieInfoResult.movieInfo, function(i,j){
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
				
				
				
			}
		});
	})
</script>
</body>
</html>