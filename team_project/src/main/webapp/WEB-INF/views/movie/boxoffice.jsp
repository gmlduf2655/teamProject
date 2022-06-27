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
	text-decoration: underline;
}
/* .slider{
	position: relative;
	font-family: tahoma;
	opacity:0;
	animation: slideUp ease 3s infinite 1s;
}
@keyframes slideUp {
  0% {transform: translateY(0);}
  100% {transform: translateY(-5px);opacity:1;}
} */
</style>
</head>
<body>
<div class="row">
		<div class="col-md-12">
			<div id="releaseCont"  style="background-color:rgba(255, 255, 255, 0.1); border-radius:10px;">
				<br><table style="color: white;"class="slider">
					<c:forEach begin="0" end="9" var="i">
					<tr style="padding-bottom: 10px;"  >
						<td style="text-align: right;">&nbsp;${i+1}.</td>
						<td id="rank${i}">&nbsp;</td> 
					</tr>
					</c:forEach>
				</table><br>
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
				$('#rank'+i).append("<a style='color: white;' class='aclass' href='/movie/movieInfo?movie_code="+j.movieCd+"'>" +j.movieNm+"</a>"); 
			});
		}
	});
</script>
</body>
</html>