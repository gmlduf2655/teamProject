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
<%@ include file="/WEB-INF/views/include/daycount.jsp"%>
<style>
.boxoffice_rank {
	color : white;
}
.active {
	color : white;
}
.aclass:hover{
	font-weight : bold;
	text-decoration: underline;
}
</style>
</head>
<body>

<div class="row">
		
		<div class="col-md-12">

			<div id="releaseCont" style="background-color:rgba(255, 255, 255, 0.1); border-radius:10px;">
				<table style="color: white;">
					<c:forEach begin="0" end="9" var="i">
					<tr style="padding-bottom: 10px;">
						<td style="text-align: right;">${i+1}.</td>
						<td id="rank${i}"></td> 
					</tr>
					</c:forEach>
				</table>
				
			</div>

		</div>
	</div>

<script type="text/javascript">
	
	$.ajax({
		type: "GET",
		url: "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json",
		data: {
			key: "6a124949cf23e078e5c9d213db2cf916",
			targetDt: yesterDate
		},
		success: function(data) {
			console.log(data);
			$.each(data.boxOfficeResult.dailyBoxOfficeList, function(i,j){
				/* $('#rank'+i).append("<span class=\"boxoffice_rank\">" +j.movieNm+"</span>"); 
				$('#rank'+i).append("<input type='hidden' name='boMovie_cd' value=" + j.movieCd+"/>");  */
				$('#rank'+i).append("<a style='color: white;' class='aclass' href='/movie/movieInfo?movie_code="+j.movieCd+"'>" +j.movieNm+"</a>"); 
				/* $('#rank'+i).append("<a class=\"boxoffice_rank\ href='/movie/movieInfo?movie_code="+j.movieCd+">" +j.movieNm+"</a>");*/
				
				//$('#rank'+i).append("<span class=\"boxoffice_rank right rk_inten\" id=\"rk_inten"+ i +"\">"+j.rankInten+"</span>");
				//old 일경우 이미지 new 일 경우 이미지
				//$('#rank'+i).append("<span class=\"boxoffice_rank right "+ j.rankOldAndNew +"\">"+j.rankOldAndNew +"</span>");
			});
		}
	});

</script>

</body>
</html>