<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- 나중에 빼기 -->
  <!-- Css Styles -->
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css">
   <!--  <link rel="stylesheet" href="/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/css/style.css" type="text/css">  -->
    
<!-- 나중에 빼기 -->


<!-- header -->
<%-- <%@ include file="/WEB-INF/views/include/header.jsp"%> --%>
<title>영화정보 입력 관리자 페이지</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 	
<script type="text/javascript">
//db 저장 알림창
var db_update_result = "${db_update_result}";
var db_save_result = "${db_save_result}";
var db_delete_result = "${db_delete_result}";
if(db_update_result == "true"){
	alert("db 수정 완료");
} else if (db_update_result == "false"){
	alert("db 수정 실패");
}
if(db_save_result == "true"){
	alert("db 저장 완료");
} else if (db_save_result == "false"){
	alert("db 저장 실패");
}if(db_delete_result == "true"){
	alert("db 삭제 완료");
} else if (db_delete_result == "false"){
	alert("db 삭제 실패");
}

$(function(){
	//우리서버에 db 저장
	$("#dbSave").click(function(e){
		//e.preventDefault();
		$("form").attr("action", "/dbcontrol/dbSave");
		$("form").attr("method", "post");
		
	});
	//우리서버에 db 수정
	$("#dbUpdate").click(function(e){
		//e.preventDefault();
		$("form").attr("action", "/dbcontrol/dbUpdate");
		$("form").attr("method", "post");
	});
	//우리서버에 db 삭제
	$("#dbDelete").click(function(e){
		//e.preventDefault();
		$("form").attr("action", "/dbcontrol/dbDelete");
		$("form").attr("method", "get");
	});
	//우리서버 db List 출력
	$("#btndbList").click(function(){
		//e.preventDefault();
		$("#btndbList").attr("href","/dbcontrol/dbList").submit();
		console.log("#btndbList");
	});
	
	//우리서버 영화 db 검색
	var sType;
	$("#searchType").change(function(){
		sType = $(this).val();
		console.log("#searchType, sType" ,  sType);
		});
	$("#btndbSearch").click(function(){
		var sKeyword = $("#moviename").val();
		$("#btndbSearch").attr("href","/dbcontrol/dbSearch?sType="+sType+"&sKeyword="+sKeyword).submit();
		
	});
	
	
});
</script>
</head>
<body>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8" align="center">
		<br><br><br>
			<!-- 영화코드, 시놉시스, 포스터 다운위한 이동 새창 -->
			<a target="_blank"
			href="https://www.kobis.or.kr/kobis/business/mast/mvie/searchMovieList.do">영화코드
			가져오기</a><br><br>
			<input type="text" name="moviecode" id="moviecode">
			<button type="submit" class="btn btn-sm btn-outline btn-success"
				id="dbSearch">진흥원DB검색</button>
		</div>
		
		<div class="col-md-2"></div>
	</div>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8"  align="center">
			<form action="" enctype="multipart/form-data">
				<div id="releaseCont">
					<hr>
						<div class="active" id="list">
							<!-- <p><a href="#"></a><p> -->
						</div>
				</div>
				<hr>
				<br>
				<button type="submit" class="btn btn-primary btndbRelation"
					id="dbSave" style="display: none;">db저장</button>
				<button type="submit" class="btn btn-warning btndbRelation"
					id="dbUpdate" style="display: none;">db수정</button>
				<button type="submit" class="btn btn-danger btndbRelation"
					id="dbDelete" style="display: none;">db삭제</button>
			</form>
		</div>
		<div class="col-md-2"></div>
	</div>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8" align="center">
		<hr>
			<a type="button" class="btn btn-outline-primary"
					id="btndbList">우리서버DB리스트</a>
			<br>
			<br>
			<br>
			<select id="searchType">
				<option>선택
				<option value="movie_code">영화코드
				<option value="movie_name">영화제목
			</select>
			<input type="text" name="moviename" id="moviename">
			<a type="button" class="btn btn-outline-primary"
					id="btndbSearch">우리서버 영화 검색</a>
		</div>
		<div class="col-md-2"></div>
	</div>
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
		<br>
				<table class="table" >
					<thead>
						<tr>
							<th>#</th>
							<th>영화코드</th>
							<th>영화제목</th>
							<th>포스터유무</th>
							<th>시놉시스유무</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="movieVo" varStatus="status">
							<tr>
								<td>${status.count}</td>
								<td><c:out value="${movieVo.movie_code}"/></td>
								<td><c:out value="${movieVo.movie_name}"/></td>
								<td>
									<c:choose>
									<c:when test="${not empty movieVo.movie_image_name}">
										있음</c:when>
									<c:otherwise>
										없음
									</c:otherwise>
									</c:choose>	
								</td>
								<td>
									<c:choose>
									<c:when test="${not empty movieVo.movie_synopsis}">
										있음</c:when>
									<c:otherwise>
										없음
									</c:otherwise>
									</c:choose>	
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		<div class="col-md-2"></div>
	</div>
</div>
<%-- ${list} --%>

<script type="text/javascript">
	// 진흥원에서  영화API 검색 자료 가져오기
	$(document).ready(function(){
		$("#dbSearch").click(function(){
			$('#list').children().remove();
			$(".btndbRelation").removeAttr("style");
			var moviecode = $("#moviecode").val();
			//moviecode 앞뒤로 공백제거
			moviecode = $.trim(moviecode);
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
					$('#list').append("<span>영화코드:</span><input type='text' class=\'movieList\' style='width:300px;' name='movie_code' value='" + rdata.movieCd +"'><br>");
					$('#list').append("<span>영화제목:</span><input type='text' class=\'movieList\' style='width:300px;' name='movie_name' value='" + rdata.movieNm +"'><br>");
					$('#list').append("<span>영화원제:</span><input type='text' class=\'movieList\' style='width:300px;' name='movie_name_en' value='" + rdata.movieNmEn +"'><br>");
					$('#list').append("<span>제작연도:</span><input type='text' class=\'movieList\' style='width:300px;' name='make_year' value='" + rdata.prdtYear +"'><br>");
					$('#list').append("<span>러닝타임:</span><input type='text' class=\'movieList\' style='width:300px;' name='runningtime' value='" + rdata.showTm +"'><br>");
					$('#list').append("<span>개봉날짜:</span><input type='text' class=\'movieList\' style='width:300px;' name='opening_date' value='" + rdata.openDt +"'><br>");
					$('#list').append("<span>제작회사:</span><input type='text' class=\'movieList\' style='width:300px;' name='made_company' value='" + rdata.companys[0].companyNm +"'><br>");
					$('#list').append("<span>제작국가:</span><input type='text' class=\'movieList\' style='width:300px;' name='made_country' value='" + rdata.nations[0].nationNm +"'><br>");
					$('#list').append("<span>영화감독:</span><input type='text' class=\'movieList\' style='width:300px;' name='movie_director' value='" + rdata.directors[0].peopleNm +"'><br>");
					$('#list').append("<span>영화장르:</span><input type='text' class=\'movieList\' style='width:300px;' name='movie_genre' value='" + rdata.genres[0].genreNm +"'><br>");
					$('#list').append("<span>영화배우:</span><input type='text' class=\'movieList\' style='width:300px;' name='movie_actors' value='" + rdata.actors[0].peopleNm +"'><br>");
					$('#list').append("<span>영화등급:</span><input type='text' class=\'movieList\' style='width:300px;' name='movie_audits' value='" + rdata.audits[0].watchGradeNm +"'><br>");
					$('#list').append("<span>영화시놉:</span><textarea class=\'movieList\' style='width:300px; height:200px; ' name='movie_synopsis'></textarea><br>");
					$('#list').append("<span><label for='file'> 포스터  :</label><input type='file' id='file' name='file' /></span>"); /* class='form-control-file'  */
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