<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<%@ include file="/WEB-INF/views/include/daycount.jsp"%>
<script>
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

var audiAcc = null; 
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
			console.log("i",i);
			console.log("j",j);
			/* audiAcc = j.audiAcc;
			$("#audiAcc").val(audiAcc); */
		});r4
		
		
	}
});
</script>
<div class="container-fluid">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="row">

				<c:forEach items="${list}" var="movieVo">
					<div class="col-md-3">
						<div class="product__item">
							<div class="product__item__pic set-bg"
								
								<c:choose>
								<c:when test="${empty movieVo.movie_image_name}"> 
									data-setbg="/resources/images/no_image.jpg" 
								</c:when>
								<c:otherwise>
									data-setbg="/movie/displayImage?filename=${movieVo.movie_image_name}"
								</c:otherwise>
								</c:choose>
								>
								<div class="ep">개봉일 ${movieVo.opening_date}</div>
								<div class="view">
									<i class="fa fa-eye"></i><div id="audiAcc"></div>
								</div>
							</div>
							<div class="product__item__text">
								<h5>
									<a href="/movie/movieInfo?movie_code=${movieVo.movie_code}">${movieVo.movie_name}</a>
								</h5>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
		
</div>
 

<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>