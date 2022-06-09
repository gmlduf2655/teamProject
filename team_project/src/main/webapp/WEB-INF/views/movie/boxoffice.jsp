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
</style>
</head>
<body>
	<div id="releaseCont">
		<ol class="releaseRank">
			<c:forEach begin="0" end="9" var="i">
				<li class="active" id="rank${i}">
					<a href="#"></a>
				</li>
			</c:forEach>
		</ol>
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
				$('#rank'+i).append("<span class=\"boxoffice_rank\">" +j.movieNm+"</span>");
				//$('#rank'+i).append("<span class=\"boxoffice_rank right rk_inten\" id=\"rk_inten"+ i +"\">"+j.rankInten+"</span>");
				//old 일경우 이미지 new 일 경우 이미지
				//$('#rank'+i).append("<span class=\"boxoffice_rank right "+ j.rankOldAndNew +"\">"+j.rankOldAndNew +"</span>");
			});
		}
	});

</script>

</body>
</html>