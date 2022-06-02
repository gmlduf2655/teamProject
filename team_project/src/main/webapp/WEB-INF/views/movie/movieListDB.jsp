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
<form action="/crawling/dbSave" method="get">
	<div id="releaseCont">
		<ol class="releaseList">
			<c:forEach begin="0" end="99" var="i">
				<li class="active" id="list${i}">
					<a href="#"></a>
				</li>
			</c:forEach>
		</ol>
	</div>
	<button type="submit">db저장</button>
</form>

<script type="text/javascript">

	
	$.ajax({
	
		type: "GET",
		url: "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieList.json",
		data: {
			key: "6a124949cf23e078e5c9d213db2cf916",
			curPage:2,
			itemPerPage:100
		},
		success: function(data) {
			console.log(data);
			$.each(data.movieListResult.movieList, function(i,j){
				$('#list'+i).append("<span class=\'movieList\' name='movie_code'>영화코드:" +j.movieCd+"</span><br>");
				$('#list'+i).append("<span class=\'movieList\' name='movie_name'>영화제목:" +j.movieNm+"</span><br>");
				$('#list'+i).append("<span class=\'movieList\' name='movie_name'>영화원제:" +j.movieNmEn+"</span><br>");
				$('#list'+i).append("<span class=\'movieList\' name='movie_name_en'>제작년도:" +j.prdtYear+"</span><br>");
				$('#list'+i).append("<span class=\'movieList\' name='opening_date'>개봉일:" +j.openDt+"</span><br>");
				$('#list'+i).append("<span class=\'movieList\' name='runningtime'>영화종류:" +j.typeNm+"</span><br>");
				$('#list'+i).append("<span class=\'movieList\' name='make_year'>제작국가:" +j.nationAlt+"</span><br>");
				$('#list'+i).append("<span class=\'movieList\' name='runningtime'>영화장르:" +j.genreAlt+"</span><br>");
				$('#list'+i).append("<span class=\'movieList\' name='made_country'>제작국가:" +j.repNationNm+"</span><br>");
				$('#list'+i).append("<span class=\'movieList\' name='movie_genre'>대표장르:" +j.repGenreNm+"</span><br>");
				$('#list'+i).append("<span class=\'movieList\' name='movie_director'>영화감독:" +j.directors[0].peopleNm+"</span><br>");
				/* $('#list'+i).append("<span class=\'movieList\' name='made_company'>제작사 :" + 
						if(j.companys[0].lenth == null){
							"없음";
						} else {
							j.companys[0].companyNm
						}
						+"</span><br>"); */
			});
			
		}
	});
</script>
</body>
</html>