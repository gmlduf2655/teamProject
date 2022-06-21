<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<script src="/resources/js/stillcut.js"></script> 
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
	var frmPaging = $("#frmPaging");
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

});
//진흥원에서  영화API 검색 자료 가져오기
$(document).ready(function(){
	$('#dbSearch').click(function(){
	console.log("dbSearch");
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
			/* $('#list').append("<hr><span>영화코드:</span><input type='text' class='form-control movieList' style='width:500px; display:inline-block; ' name='movie_code' value='" + rdata.movieCd +"'><br>");
			$('#list').append("<span>영화제목:</span><input type='text' class=\'form-control movieList\' style='width:500px; display:inline-block; ' name='movie_name' value='" + rdata.movieNm +"'><br>");
			$('#list').append("<span>영화원제:</span><input type='text' class=\'form-control movieList\' style='width:500px;display:inline-block; ' name='movie_name_en' value='" + rdata.movieNmEn +"'><br>");
			$('#list').append("<span>제작연도:</span><input type='text' class=\'form-control movieList\' style='width:500px;display:inline-block; ' name='make_year' value='" + rdata.prdtYear +"'><br>");
			$('#list').append("<span>러닝타임:</span><input type='text' class=\'form-control movieList\' style='width:500px;display:inline-block; ' name='runningtime' value='" + rdata.showTm +"'><br>");
			$('#list').append("<span>개봉날짜:</span><input type='text' class=\'form-control movieList\' style='width:500px;display:inline-block; ' name='opening_date' value='" + rdata.openDt +"'><br>");
			$('#list').append("<span>제작회사:</span><input type='text' class=\'form-control movieList\' style='width:500px;display:inline-block; ' name='made_company' value='" + rdata.companys[0].companyNm +"'><br>");
			$('#list').append("<span>제작국가:</span><input type='text' class=\'form-control movieList\' style='width:500px;display:inline-block; ' name='made_country' value='" + rdata.nations[0].nationNm +"'><br>");
			$('#list').append("<span>영화감독:</span><input type='text' class=\'form-control movieList\' style='width:500px;display:inline-block; ' name='movie_director' value='" + rdata.directors[0].peopleNm +"'><br>");
			$('#list').append("<span>영화장르:</span><input type='text' class=\'form-control movieList\' style='width:500px;display:inline-block; ' name='movie_genre' value='" + rdata.genres[0].genreNm +"'><br>");
			$('#list').append("<span>영화배우:</span><input type='text' class=\'form-control movieList\' style='width:500px;display:inline-block; ' name='movie_actors' value='" + rdata.actors[0].peopleNm +"'><br>");
			$('#list').append("<span>영화등급:</span><input type='text' class=\'form-control movieList\' style='width:500px;display:inline-block; ' name='movie_audits' value='" + rdata.audits[0].watchGradeNm +"'><br>");
			$('#list').append("<span>메인예고:</span><input type='text' class=\'form-control movieList\' style='width:500px;display:inline-block; ' name='movie_video_add' placeholder='v/ 이후 주소를 넣어주세요'><br>");
			$('#list').append("<span>영화시놉:</span><textarea class=\'form-control movieList\' style='width:500px; height:200px; display:inline-block; ' name='movie_synopsis'></textarea><br>");
			$('#list').append("<span><label for='file'> 포스터  :</label><input type='file' id='file' name='file' /></span><hr>"); /* class='form-control-file'  */
			var apilist = `
				<hr><span>영화코드:</span><input type='text' class='form-control movieList' style='width:500px; display:inline-block; ' name='movie_code' value='` + rdata.movieCd +`'><br>
				<span>영화제목:</span><input type='text' class='form-control movieList' style='width:500px; display:inline-block; ' name='movie_name' value='` + rdata.movieNm +`'><br>
				<span>영화원제:</span><input type='text' class='form-control movieList' style='width:500px;display:inline-block; ' name='movie_name_en' value='` + rdata.movieNmEn +`'><br>
				<span>제작연도:</span><input type='text' class='form-control movieList' style='width:500px;display:inline-block; ' name='make_year' value='` + rdata.prdtYear +`'><br>
				<span>러닝타임:</span><input type='text' class='form-control movieList' style='width:500px;display:inline-block; ' name='runningtime' value='` + rdata.showTm +`'><br>
				<span>개봉날짜:</span><input type='text' class='form-control movieList' style='width:500px;display:inline-block; ' name='opening_date' value='` + rdata.openDt +`'><br>
				<span>제작회사:</span><input type='text' class='form-control movieList' style='width:500px;display:inline-block; ' name='made_company' value='` + rdata.companys[0].companyNm +`'><br>
				<span>제작국가:</span><input type='text' class='form-control movieList' style='width:500px;display:inline-block; ' name='made_country' value='` + rdata.nations[0].nationNm +`'><br>
				<span>영화감독:</span><input type='text' class='form-control movieList' style='width:500px;display:inline-block; ' name='movie_director' value='` + rdata.directors[0].peopleNm +`'><br>
				<span>영화장르:</span><input type='text' class='form-control movieList' style='width:500px;display:inline-block; ' name='movie_genre' value='` + rdata.genres[0].genreNm +`'><br>
				<span>영화배우:</span><input type='text' class='form-control movieList' style='width:500px;display:inline-block; ' name='movie_actors' value='` + rdata.actors[0].peopleNm +`'><br>
				<span>영화등급:</span><input type='text' class='form-control movieList' style='width:500px;display:inline-block; ' name='movie_audits' value='` + rdata.audits[0].watchGradeNm +`'><br>
				<span>영화시놉:</span><textarea class='form-control movieList' style='width:500px; height:200px; display:inline-block; ' name='movie_synopsis'></textarea><br>
				<span>메인예고:</span><input type='text' class='form-control movieList' style='width:500px;display:inline-block; ' name='movie_video_add' placeholder='v/ 이후 주소를 넣어주세요'><br>
				<span><label for='file'> 포스터  :</label><input type='file' id='file' name='file' /></span><hr>`;
			var stillcut = `
					<style>
					#fileDrop{
						width: 50%;
						height: 100px;
						background-color: lightgray;
						margin-left: 80px;
						border: 1px dashed blue;
					}
					.divUploaded{
						width: 150px;
						float: left;
					}
					</style>`;
					$('#list').append(apilist);
					$('#list').append(stillcut); 
					$('#fileinfo').removeAttr("style");
		}		
});
	
});//dbSearch
//진흥원 api 스틸컷 추가 파일 드롭 이동 방지
$("#fileDrop").on("dragenter dragover", function(e){
	e.preventDefault();
	
});
//스틸샷 첨부파일 등록
$("#fileDrop").on("drop", function(e){
	e.preventDefault();
	var file = e.originalEvent.dataTransfer.files[0]; //콘솔에서 확인가능
	console.log(file);
	//post multipart/form-data
	var formData = new FormData(); //<form>
	var movie_code = $(this).parent().parent().find("input[name=movie_code]").val();
	formData.append("file", file); //등록전 파일 등록된상태
	var url = "/dbcontrol/fileupload/" + movie_code;
	
	$.ajax({
		"processData" : false,
		"contentType" : false,
		"url"		: url,
		"method"	: "post",
		"data"		: formData,
		"success"	: function(rData){
			console.log("rData", rData);
			var cloneDiv = $(".divUploaded").eq(0).clone();
			var filename = getFilename(rData);
			cloneDiv.find("span").text(filename);
			cloneDiv.attr("data-filename", rData);
			if(isImage(filename)){
				cloneDiv.find("img").attr("src", "/dbcontrol/displayImage?filename=" + rData);
				cloneDiv.find("a.a_delete").attr("data-filename", rData);
			}
			cloneDiv.appendTo($("#uploadedList")).show();
		}
	}); 
});
 
//스틸샷 업로드 취소
$("#uploadedList").on("click" , ".a_delete", function(e){
	var that = $(this);
	e.preventDefault();
	var filename = that.attr("data-filename");
	var url = "/dbcontrol/deleteFile";
	var sData = {
			"filename" : filename
	};
	$.get(url, sData, function(rData){
		console.log("rData" , rData);
		if(rData == "true"){
			that.parent().remove();
		}
	});
});
 
});


</script>
<style>
	
	body {
		background-color: #eeeeee; 
	}
	
	section.product {
		padding : 0;
	}
	
	.ma {
		border-top: 50px solid #eeeeee;
	}
	
</style>

<!-- 샘플 레이아웃 데이터 -->
<div class="ma">
	<div class="row" style="background-color: #eeeeee">
		<div class="col-md-1"></div>
		<!-- 유수연 메뉴 목록  -->
		<div class="col-md-2">
			<div class="menu">
				<%-- <c:if test="">
								로그인 계정이 관리자 계정일때 관리자 메뉴 보이도록
	    			</c:if> --%>
				<%-- <jsp:include page="/WEB-INF/views/admin/manage_menu.jsp" /> --%>
				<%@ include file="/WEB-INF/views/admin/manage_menu.jsp"%>
			</div>
		</div>
		<!-- 유수연 상세내용  -->
		<div class="col-md-7">
			<!-- 유수연 각 페이지의 내용이 여기 뜨도록 해주세요 -->
			<div class="container-fluid">
				<div class="row">
				<div class="col-md-1"></div>
					<div class="col-md-10">
						<br>
						<br>
						<br>
						<!-- 영화코드, 시놉시스, 포스터 다운위한 이동 새창 -->
						<a target="_blank"
							href="https://www.kobis.or.kr/kobis/business/mast/mvie/searchMovieList.do"
							class="btn btn-primary" style="margin-bottom: 20px;">영화코드
							가져오기</a><br> <a target="_blank"
							href="https://tv.naver.com/navermovie" class="btn btn-warning">네이버예고편가져오기</a>
						<br>
						<br> <input type="text" name="moviecode" id="moviecode">
						<button type="submit" class="btn btn-sm btn-outline btn-success"
							id="dbSearch">진흥원DB검색</button>
					</div>
				<div class="col-md-1"></div>

				</div>
				<!-- 진흥원 DB검색 내용 -->
				<div class="row">
					<div class="col-md-1"></div>
					<div class="col-md-10">
						<form action="" enctype="multipart/form-data" accept-charset="UTF-8">
							<div id="releaseCont">
								<div class="active" id="list">
									<a href="#"></a>
									<div class="active" ></div>
								</div>
								<div align="left" id="fileinfo" style="display: none;">
									<label>첨부할 파일을 드래그 &amp; 드롭하세요</label>
									<div id="fileDrop"  align="left"></div>
									</div>
								
								<div class="divUploaded" style="display: none">
									<img alt="" src="/resources/images/default.png" height="100"><br>
									<span>default.png</span>
									<a class="a_delete" href="#">&times;</a>
								</div>
								<div id="uploadedList">
								</div>
								<div style="clear: both;"></div><br>
							</div>
							<div align="center">
							<button type="submit" class="btn btn-primary btndbRelation"
								id="dbSave" style="display: none;">db저장</button>
							<button type="submit" class="btn btn-warning btndbRelation"
								id="dbUpdate" style="display: none;">db수정</button>
							<button type="submit" class="btn btn-danger btndbRelation"
								id="dbDelete" style="display: none;">db삭제</button>
							</div>	
						</form><br>
					</div>
					<div class="col-md-1"></div>
				</div>
			</div>
			<!-- 유수연 각 페이지의 내용이 여기 뜨도록 해주세요 -->
		</div>
		
	</div>
	<!-- row -->
</div><!-- main div -->
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>