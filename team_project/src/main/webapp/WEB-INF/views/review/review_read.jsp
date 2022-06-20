<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<!-- Normal Breadcrumb Begin -->
<section class="normal-breadcrumb set-bg"
	data-setbg="/resources/images/img/normal-breadcrumb.jpg">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<div class="normal__breadcrumb__text">
					<h2>영화 평점/리뷰</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Normal Breadcrumb End -->

<script>
	// 평점 별
	$(function() {
		var starNum = $(".rating").data("rate");
		//		console.log("starNum:", starNum);
		$(".make_star i").css("color", "black");
		$(".make_star i:nth-child(-n" + starNum + ")").css("color", "orange");
	});
	// 좋아요
	$(function() {
		// 화면 셋팅
		isLike();
		countLike();

		// 좋아요 클릭(삭제)
		$("#good").click(function(e){
			e.preventDefault();
			console.log("좋아요 클릭");
			var url = "/review/createLike";
			var review_no = "${reviewVo.review_no}";
			var userid = "${loginUserVo.userid}";
			var sData = {
					"review_no" : review_no,
					"userid" : userid
				};
			console.log("좋아요 클릭 sData:", sData);
			$.post(url, sData, function(rData) {
				console.log("좋아요 클릭 rData:", rData);
				isLike();
				countLike();
			});
		});

		// 좋아요 갯수 불러오기
		function countLike() {
			var url = "/review/countLike";
			var sData = {
				"review_no" : "${reviewVo.review_no}"
			};
			$.get(url, sData, function(rData) {
				console.log("countLike, rData", rData);
				$("#likeCount").text(rData);
			});
		}

		// 좋아요 여부
		function isLike() {
			var url = "/review/isLike";
			var review_no = "${reviewVo.review_no}";
			var userid = "${loginUserVo.userid}";
			var sData = {
				"review_no" : review_no,
				"userid" : userid
			};
			$.get(url, sData, function(rData) {
				console.log("isLike, rData", rData);
				if (rData == "true") {
					$("#good").find("i").css("color", "red");
				} else {
					$("#good").find("i").css("color", "black");
				}
			});
		}
	});

	$(document).ready(function() {
		var frmPaging = $("#frmPaging");

		// 댓글 삭제
		$("#btnDelete").click(function(e) {
		e.preventDefault();
		var review_no = $(this).attr("href");
		$("#frmPaging").find("input[name=review_no]").val(review_no);
		frmPaging.attr("action","/review/review_delete");
		frmPaging.attr("method", "get");
		frmPaging.submit();
		});

		// 댓글 저장
		$("#btnCommentInsert").click(function() {
		var comment_content = $("#comment_content").val();
//		console.log(comment_content);
		var userid = $("#userid").val();
		var review_no = "${reviewVo.review_no}";
		var sData = {
			"comment_content" : comment_content,
			"review_no" : review_no,
			"userid" : userid
		}
		console.log("sData:", sData);

		var url = "/reviewComment/insertComment";
		$.post(url, sData, function(rData) {
		console.log(rData);
		if (rData == "true") {
			getCommentList();
			$("#comment_content").val("");
		}
		});
	});

		
	// 댓글 리스트
	function getCommentList() {
	var review_no = "${reviewVo.review_no}";
	var url = "/reviewComment/commentList/" + review_no;
	$.get(url, function(rData) {
//	console.log("rData:", rData);
	$("#comment_list").children().remove();
	$.each(rData, function() {
	var clone = $("#clone").children().clone();
	var name = clone.find("h6");
	var regDate = clone.find("span");
	var content = clone.find("p");
	name.text(this.userid);
	regDate.text(this.comment_reg_date);
	content.text(this.comment_content);
		if (this.profile_image != null) {
			$("#userprofile").attr("src", "/user/get_profile_image?filename=" + this.profile_image);
		}
	clone.find(".btnCommentDelete").attr("data-cno", this.comment_no);
	clone.find(".btnCommentModify").attr("data-cno", this.comment_no);
	clone.find(".btnCommentModifyRun").attr("data-cno", this.comment_no);
		if ("${loginUserVo.userid}" == this.userid) {
			clone.find(".btnCommentModify").show();
			clone.find(".btnCommentDelete").show();
		} else {
			clone.find(".btnCommentModify").hide();
			clone.find(".btnCommentDelete").hide();
		}

		$("#comment_list").append(clone);
		});
	});
}

	// 댓글 삭제 버튼
	$("#comment_list").on("click", ".btnCommentDelete", function() {
//	console.log("댓글 삭제 버튼 클릭됨");
	var comment_no = $(this).attr("data-cno");
	var url = "/reviewComment/deleteComment/" + comment_no;
	$.get(url, function(rData) {
	console.log(rData);
		if (rData == "true") {
		getCommentList();
		}
	});
});

	// 댓글 수정 버튼
	$("#comment_list").on("click", ".btnCommentModify", function() {
//	console.log("댓글 수정 버튼 클릭됨");
	$(this).hide();
	$(this).next(".btnCommentModifyRun").show();
	var content = $(this).prevAll("p").text();
//	var content = $("#comment_list").children().clone().find("p").eq(0).text();
	console.log(content);
//  var modifyP = $("#comment_list > div:nth-child(2) > p");
	var modifyP = $(this).prevAll("p");
	$(modifyP).html("<input type='text' class='contentModify' value='"+ content + "'/>");
	});

// 댓글 수정 저장 버튼
	$("#comment_list").on("click", ".btnCommentModifyRun", function() {
	var comment_content = $(".contentModify").val();
	var comment_no = $(this).attr("data-cno");
//	console.log("comment_no:"+comment_no);
//	console.log("comment_content:"+comment_content);
	var sData = {
		"comment_content" : comment_content,
		"comment_no" : comment_no
	}
	var url = "/reviewComment/updateComment";
	$.post(url, sData, function(rData) {
		console.log("rData:", rData);
		if (rData == "true") {
		getCommentList();
		}
	});
});

	getCommentList();
});
</script>

<form id="frmPaging">
	<input type="hidden" name="review_no" value="0">
</form>

<br><div class="anime__details__review">
				<div class="section-title">
					<h5>게시글</h5>
				</div>
			</div>
<body>
<div class="container" style="background-color: white">

<form role="writeForm" action="/review/review_writeRun" method="post" id="frmCreate" enctype="multipart/form-data">
	<input type="hidden" name="review_star" id="review_star" value="${reviewVo.review_star}"/>
	
	<label for="review_title"> 제목 </label> 
	<input type="text" class="form-control" id="review_title" name="review_title" 
		value="${reviewVo.review_title}" readonly/>
	<hr>
	<label for="review_writer"> 작성자 </label> 
	<input type="text" class="form-control" id="review_writer" name="review_writer"	
		value="${reviewVo.review_writer}" readonly/>

	<hr>
	<label>별점</label>
		<div class="make_star">
			<div class="rating" data-rate="${reviewVo.review_star}">
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
				<i class="fa fa-star"></i>
			</div>
		</div>
	<hr>
	<label>내용</label><br>
		<div>${reviewVo.review_content}</div>
	<hr>
	<label id="good" data-rno="${reviewVo.review_no}">좋아요<i class="fa fa-heart"></i><span id="likeCount">0</span></label>
	<hr>
	
	<a href="/review/review_list" class="btn btn-sm btn-success">목록</a>
	
	<c:if test="${loginUserVo.userid == reviewVo.review_writer}">
	<a href="/review/review_modifyForm?review_no=${reviewVo.review_no}" class="btn btn-sm btn-warning">수정</a>
	<a href="${reviewVo.review_no}" class="btn btn-sm btn-danger" id="btnDelete">삭제</a>
	</c:if>
	
</form>




	</div>
	
<!-- 댓글 -->	
	
<div class="row">
<div class="col-md-2"></div>

		<div class="col-md-8">
		<br>
		<div class="anime__details__form">
					<div class="section-title">
						<h5>댓글 달기</h5>
					</div>
					<form>
						<input type="hidden" id="userid" name="userid" value="${loginUserVo.userid}">
						<textarea name="comment_content" id="comment_content" placeholder="댓글을 입력해 주세요"></textarea>
						<button type="button" class="btn btn-sm btn-primary" id="btnCommentInsert">
							<i class="fa fa-location-arrow"></i> 저장 </button><br>
					</form>
				</div><br>
		
		
			<div class="anime__details__review">
				<div class="section-title">
					<h5>댓글</h5>
				</div>
				
				<!-- clone table -->
				<div class="anime__review__item" style="display:none;" id="clone" >
					<div class="anime__review__item__pic">
						<img src="/resources/images/usernoimage.JPG" id="userprofile">
					</div>
					<div class="anime__review__item__text">
						<h6> </h6>
						<span style="color: white;"> </span>
							<p></p>
							
							
							<button type="button"
							class="btn btn-sm btn-warning btnCommentModify">수정</button>
							<button type="button" class="btn btn-sm btn-success btnCommentModifyRun" 
							style="display:none">수정완료</button>
							<button type="button"
							class="btn btn-sm btn-danger btnCommentDelete">삭제</button>
					</div>
					<br>
				</div>
				
				
				
				<div class="anime__review__item" id="comment_list">
					<div class="anime__review__item__pic">
						<img src="img/anime/review-1.jpg">
					</div>
					<div class="anime__review__item__text">
						<h6>name -</h6>
						<span style="color: white;"> reg date</span>
						<p>content</p>
						
					</div>
				</div>
					
					
				</div>
				
			</div>
<div class="col-md-2"></div>
</div>
</body>


<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>
