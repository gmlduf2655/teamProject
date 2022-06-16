<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Css Styles -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script> 	
<script>
$(function(){
	$("#tableList").on("click", ".opening_date_input" ,function(){
		console.log(".opening_date");
	});
	//우리서버 db List 전체 출력
	$("#btndbListtotal").click(function(){
		//e.preventDefault();
		$("#btndbListtotal").attr("href","/dbcontrol/dbList").submit();
	});
	//우리서버 db List 상영중, 예정 출력
	$("#btndbListopen").click(function(){
		//e.preventDefault();
		$("#btndbListopen").attr("href","/dbcontrol/dbListopen").submit();
	});
	//우리서버 db 종영List 출력
	$("#btndbListend").click(function(){
		//e.preventDefault();
		$("#btndbListend").attr("href","/dbcontrol/dbListend").submit();
	});
	
	//우리서버 영화 db 검색
	var sType;
	var sKeyword;
	$("#searchType").change(function(){
		sType = $(this).val();
		console.log("#searchType, sType" ,  sType);
		});
	$("#btndbSearch").click(function(){
		if(sType == null){
			alert("검색타입을 선택해 주세요");
		}else{
			sKeyword = $("#moviename").val();
			$("#btndbSearch").attr("href","/dbcontrol/dbSearch?sType="+sType+"&sKeyword="+sKeyword).submit();
		}
		
	});
	
});	
</script>
<style>
#trlist:hover {
	background-color: aliceblue;
}
</style>


<!-- 우리서버 영화 DB -->
<div class="row" >
		<div class="col-md-2"></div>
		<div class="col-md-8" align="center" style="background-color: #eeeeee;">
		<hr>
			<a type="button" class="btn btn-outline-success" id="btndbListopen">우리서버 상영중, 예정DB리스트</a>
			<a type="button" class="btn btn-outline-primary" id="btndbListtotal">우리서버 전체 DB리스트</a>
			<a type="button" class="btn btn-outline-warning" id="btndbListend">우리서버 종영 DB리스트</a>
			<br><br><br>
			<select id="searchType">
				<option value="">선택
				<option value="movie_code">영화코드
				<option value="movie_name">영화제목
			</select>
			<input type="text" name="skeyword" id="moviename">
			<a type="button" class="btn btn-outline-primary"
					id="btndbSearch">우리서버 영화 검색</a>
			
			
		</div>
		
		<div class="col-md-2"></div>
	</div>
<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
		<br>
				<table class="table">
					<thead>
						<tr>
							<th>#</th>
							<th>영화코드</th>
							<th>영화제목</th>
							<th>개봉일자</th>
							<th>종영일자</th>
							<th>등급</th>
							<th>스틸샷</th>
							<th>포스터</th>
							<th>시놉</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${list}" var="movieVo" varStatus="status">
							<tr onclick="window.open('/dbcontrol/dbsearchBymoviecode?movie_code=${movieVo.movie_code}','', 'width=800, height=800')" 
								style="cursor: pointer;" id="trlist">
								<td>${status.count}</td>
								<td><c:out value="${movieVo.movie_code}"/></td>
								<td>
								<c:set var="movie_name" value="${movieVo.movie_name}"/>
									${fn:substring(movie_name,0,15)}
								</td>
								<td>
									<fmt:parseDate var="opening_date" value="${movieVo.opening_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
									<fmt:formatDate value="${opening_date}" pattern="yyyy-MM-dd"/>
								</td>
								<td>
									<fmt:parseDate var="endding_date" value="${movieVo.endding_date}" pattern="yyyy-MM-dd HH:mm:ss"/>
									<fmt:formatDate value="${endding_date}" pattern="yyyy-MM-dd"/>
								</td>
								<td>
									<c:set var="movie_audits" value="${movieVo.movie_audits}"/>
									${fn:substring(movie_audits,0,3)}
								</td>
								<td><c:out value=""/></td>
								<td>
									<c:set var="movie_image_name" value="${movieVo.movie_image_name}"/>
									<c:if test="${not empty fn:substringAfter(movie_image_name,'_')}">
									있음</c:if>
									<c:if test="${empty fn:substringAfter(movie_image_name,'_')}">
									<b>포스터없음</b></c:if>
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




