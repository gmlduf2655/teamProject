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
${list}


	
<<<<<<< HEAD
	if(prevMonth < 10){ prevMonth = "0"+ prevMonth; }
	if(yesterDay < 10){ yesterDay = "0" + yesterDay; } 
	
	var yesterDate = prevYear + "" + prevMonth + "" + yesterDay;
	yesterDate = yesterDate.trim();   
	
	
	$.ajax({
		type: "GET",
		url: "http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieList.json",
		data: {
			key: "6a124949cf23e078e5c9d213db2cf916",
// 			targetDt: yesterDate
		},
		success: function(data) {
			console.log(data);
			$.each(data.movieListResult.movieList, function(i,j){
				$('#rank'+i).append("<span class=\"movieList\">" +j.movieNm+"</span>");
				$('#rank'+i).append("<span class=\"movieList right prdtStatNm\" id=\"prdtStatNm"+ i +"\">"+j.prdtStatNm+"</span>");
				$('#rank'+i).append("<span class=\"movieList"+ j.repGenreNm +"\">"+j.repGenreNm +"</span>");
			});
			
			
		}
	});
</script>
=======
>>>>>>> branch 'master' of https://github.com/gmlduf2655/teamProject.git
</body>
</html>