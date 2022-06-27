<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> 
<title>영화정보</title>
<script>

var date = new Date("${movieVo.opening_date}");
var year = date.getFullYear();
var month = date.getMonth()+1;
var day = date.getDay();
month = month >= 10 ? month : '0' + month;
day = day >= 10 ? day : '0' + day;
$(function(){
	//박스오피스 정보 우리 서버에 없을때
	var movieInfoByMovieCodeExist = "${movieInfoByMovieCodeExist}";
	if (movieInfoByMovieCodeExist == "false"){
		alert("정보가 없습니다\n 빠른시일내에 준비하도록 하겠습니다");
		
	}
	//상영일자출력
	var opendate = year + "-" + month + "-" + day;
	$("#date").append(opendate);
	//댓글 불러오기
	getCommentList();
	//댓글쓰기
	$("#commentSubmit").click(function(){
		var url = "/moviecomment/commentInsert";
		var movie_comment = $("#movie_comment").val();
		var movie_code = ${movieVo.movie_code};
		var movie_name = "${movieVo.movie_name}";
		var profile_image = "${loginUserVo.profile_image}";
		var userid = "${loginUserVo.userid}";
		var sData = {
				"movie_comment" : movie_comment,
				"movie_code" : movie_code,
				"movie_name" : movie_name,
				"userid" : userid,
				"profile_image" : profile_image
		};
		$.post(url, sData, function(rData){
			console.log(rData);
			if(rData == "true"){
				$("#comment_list").children().remove();	
				$("#movie_comment").val("");
				setTimeout(function() {   
					getCommentList();
		          }, 100);
			}
		});
	});
	
	//댓글 수정하기
	$("#comment_list").on("click", ".commentUpdate" ,function(){
		var div = $(this).prev(); //input상자
		div.removeAttr("disabled").attr("style","background-color : white;border: none; width:100%; resize: none;");
		div.next().hide();
		div.next().next().show();
	});
	//수정댓글 저장하기
	$("#comment_list").on("click", ".commentUpdateSubmit" ,function(){
		//사용자 아이디 체크 후 수정요청
		var userid = $(this).parent().find("h6").text();
		console.log("userid" , userid);
		if("${loginUserVo.userid}" == userid){
			var div = $(this).prev().prev(); //input상자
			var movie_comment = div.val();
			var cno = $(this).attr("data-cno");
			var url = "/moviecomment/commentUpdate";
			var sData = {
					"cno" : cno,
					"movie_comment" : movie_comment
			};
			$.post(url, sData, function(rData){
				if(rData == "true"){
					$("#comment_list").children().remove();	
					setTimeout(function() {   
						getCommentList();
			          }, 100);
				}
			});
		} else {
			alert("사용자가 다릅니다");
		}
	});
	//댓글 삭제 
	$("#comment_list").on("click", ".commentDelete" ,function(){
		console.log("click, commentDelete");
		var userid = $(this).parent().find("h6").text();
		//사용자 아이디 체크 후 삭제요청
		if("${loginUserVo.userid}" == userid){
			var cno = $(this).attr("data-cno");
			var url = "/moviecomment/commentDelete";
			var sData = {
					"cno" : cno
			};
			$.get(url, sData, function(rData){
				if(rData == "true"){
					$("#comment_list").children().remove();	
					setTimeout(function() {   
						getCommentList();
			          }, 100);
					
				}
			});
		} else {
			alert("사용자가 다릅니다");
		}
	});
 	//무한 스크롤
    var page = 1;
    $(window).scroll(function() {
        if ($(window).scrollTop() == $(document).height() - $(window).height()) {
          console.log(++page);
          setTimeout(function() {   
				getCommentList();
	          }, 100);
        }
    });
	
	//초기 화면 좋아요 출력
	getislike();
	getcountlike();
	
	//좋아요클릭(삭제)
	$("#btnlikecount").click(function(e){
		e.preventDefault();
		console.log("btnlikecount 클릭");
		var url = "/movielike/insertLike";
		var movie_no = "${movieVo.movie_no}";
		var userid = "${loginUserVo.userid}";
		var sData = {
				"movie_no" : movie_no,
				"userid" : userid
		};
		$.post(url, sData, function(rData){
			console.log("btnlikecount 클릭 rData" ,rData);
			getislike();
			getcountlike();
		});
	});
	//좋아요 갯수 불러오기
	function getcountlike(){
		var url = "/movielike/likeCount";
		var sData = {
				"movie_no" : "${movieVo.movie_no}"
		};
		$.get(url, sData, function(rData){
			console.log("초기 좋아요 카운트 rData" ,rData);
			$("#likeCount").text(rData);
		});
	}
	
	//초기 좋아요 user 여부
	function getislike(){
		var url = "/movielike/islike";
		var movie_no = "${movieVo.movie_no}";
		var userid = "${loginUserVo.userid}";
		var sData = {
				"movie_no" : movie_no,
				"userid" : userid
		};
		$.get(url, sData, function(rData){
			console.log("초기 좋아요 유저여부 rData" ,rData);
			if(rData == "true"){
				$("#faclass").attr("class" , "fa fa-thumbs-up" );
			} else {
				$("#faclass").attr("class" , "fa fa-thumbs-o-up" );
			}
		});
	}
	
	
$("#comment_list").children().remove();	
});

</script>
<!-- 나중에 지우기 -->
${loginUserVo.userid}
<!-- <section class="anime-details spad"> -->
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="anime__details__pic set-bg"  data-setbg="/movie/displayImage?filename=${movieVo.movie_image_name}" 
                      	  style="background-image: url(&quot;img/anime/details-pic.jpg&quot;); cursor: pointer;" onclick="window.open('/movie/poster?filename=${movieVo.movie_image_name}','', 'width=100%')">
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                                <h3>${movieVo.movie_name}</h3>
                                <span>${movieVo.movie_name_en}</span>
                            </div>
                            <!-- 좋아요 수  -->
                            <div class="anime__details__rating">
                                <div class="rating">
                                   
                                    <a href="#"><i  class="fa fa-heart"></i></a>
                                </div>
                                <span id="likeCount"></span>
                            </div>
                            <p>${movieVo.movie_synopsis}</p>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>장르:</span>${movieVo.movie_genre}</li>
                                            <li><span>제작사:</span>${movieVo.made_company}</li>
                                            <li><span>배우:</span>${movieVo.movie_actors}외</li>
                                            <li><span>감독:</span>${movieVo.movie_director}</li>
                                            <li><span>상영시간:</span>${movieVo.runningtime}분</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li  id="date"><span>개봉날짜:</span></li>
                                            <li><span>제작연도:</span>${movieVo.make_year}</li>
                                            <li><span>제작국가:</span>${movieVo.made_country}</li>
                                            <li><span>관람등급:</span>${movieVo.movie_audits}</li>
                                            <!-- <li><span></span></li> -->
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="anime__details__btn">
                            	<a href="#" id="btnlikecount" class="follow-btn"><i id="faclass" class="fa fa-thumbs-o-up"></i> 좋아요</a>
                                <a href="/ticket/ticketing" class="follow-btn"><span>예매하기</span></a>
                                
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 메인끝 -->
                <!-- 예고편, 스틸컷  -->
                <div  class="row">
                	<div class="col-lg-8 col-md-8">
                	<c:if test="${not empty movieVo.movie_video_add}">
	                 <div class="section-title">
	                      <h5>예고편</h5>
	                 </div>
	                 </c:if>
                 </div>
                 <div class="col-lg-4 col-md-4">
                 	<c:if test="${not empty stillcutlist}">
		                 <div class="section-title">
		                      <h5>스틸컷</h5>
		                 </div>
	              	</c:if>   
                 </div>
                </div>
                <div class="row">
                
                	<div class="col-lg-8 col-md-8">
                	<c:if test="${not empty movieVo.movie_video_add}">
                		<iframe src='https://tv.naver.com/embed/${movieVo.movie_video_add}' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' WIDTH='740' HEIGHT='416' allow='autoplay' allowfullscreen></iframe>
                	</c:if>
                	</div>
                	 <div class="col-lg-4 col-md-4">
                	 	<!-- 스틸컷 자리 -->
                	 	<c:forEach items="${stillcutlist}" var="stillcutlist" varStatus="status">
                	 			 <%-- <img id="stillopen" onclick="window.open('/movie/poster?filename=${stillcutlist.still_cut_name}','', 
                	 			 					'width = 100,status=no,toolbar=no,scrollbars=no,location = no')" 
                	 			 	src="/movie/displayImage?filename=${stillcutlist.still_cut_name}"
                	 				style="width: 150px; cursor: pointer;"> --%>
                	 			 <img id="stillopen" onclick="window.open('/movie/poster?filename=${stillcutlist.still_cut_name}', '_blank', 'toolbar=no, scrollbars=no, resizable=no, top=500, left=500')" 
                	 			 	src="/movie/displayImage?filename=${stillcutlist.still_cut_name}"
                	 				style="width: 150px; cursor: pointer;">
                	 			
                	 	</c:forEach>
                	 </div>
                </div>
                 <!-- 예고편, 스틸컷  -->
               
                <!-- 댓글입력 -->
                <div class="row">
                    <div class="col-lg-8 col-md-8">
                     <div class="anime__details__form">
                            <div class="section-title">
                                <h5>댓글 달기</h5>
                            </div>
                            <form action="#">
                                <textarea placeholder="댓글을 입력하세요" id="movie_comment"></textarea>
                                <button type="button" id="commentSubmit"><i class="fa fa-location-arrow"></i> 입력</button>
                            </form>
                        </div>
                    
                        <div class="details__review">
                            <div class="section-title commentTitle" id="section-title" style="display: none;">
                            <br>
                                <h5>댓글</h5>
                            </div>
                            
                            <div class="review__item">
	                           <div class="anime__review__item" id="comment_list">
									<div class="anime__review__item__pic">
										<img src="img/anime/review-1.jpg">
									</div>
									<div class="anime__review__item__text">
										<h6>name -</h6>
										<span> reg date</span>
										<p>content</p>
									</div>
								</div>
								<!-- 무한 스크롤 대신 버튼 구현
								<button id="addBtn" onclick="getCommentList();">더보기</button> -->
								</div>
								
								<div class="anime__review__item" style="display: none;" id="clone">
									<div class="anime__review__item__pic">
										<img src="/resources/images/usernoimage.JPG" id="userprofile">
									</div>
									<div class="anime__review__item__text">
<!-- 										<h6 id="usercom"></h6> -->
										<!-- 임희열 : 댓글에 dropdown 기능 추가했습니다.. -->
										<div class="dropdown" style="color:white">
											<button class="btn dropdown-toggle" type="button" id="dropdownMenuButton" 
											data-toggle="dropdown" style="color:white;padding-left:3px;">
											</button>
											<div class="dropdown-menu" aria-labelledby="dropdownMenuButton" style="z-index:10">
												<a class="dropdown-item move_mypage" href="#" >정보보기</a> 
												<a class="dropdown-item write_msg" href="/message/write_form?page=${param.page}&receiver=${messageVo.receiver}">글쓰기</a>
												<a class="dropdown-item report_btn" href="#">신고하기</a> 
											</div>
										</div>
										<span id="userreg" style="float: right;"></span>
										<textarea disabled rows="2" style="background-color: rgba(255,255,255,0); 
																	color: white; border: none; width:100%; resize: none;"></textarea> 
										<button type="button" class="btn btn-sm btn-danger commentUpdate"
												style="margin-bottom: 10px; ">수정</button>
										<button type="button" class="btn btn-sm btn-warning commentUpdateSubmit" 
												style="display: none; margin-bottom: 10px;">완료</button>
										<button type="button" class="btn btn-sm btn-primary commentDelete"
												style="margin-bottom: 10px;">삭제</button>
									</div>
									<br>
								</div>
							</div>
                        
                    </div>
                    
                   <div class="col-lg-4 col-md-4">
                        <div class="anime__details__sidebar">
                            <div class="section-title">
                                <h5>박스 오피스</h5>
                            </div>
                            <%@ include file="/WEB-INF/views/movie/boxoffice.jsp"%>
                            
                        </div>
                    </div>
                </div>
            </div> <!-- 컨테이너 -->
       <!--  </section> -->
<script>
//댓글 불러오기
function getCommentList(){
	
	//try
	var startRow = $(".anime__review__item__text").length;
	var movie_code = "${movieVo.movie_code}";
	$.ajax({
		url :"/moviecomment/commentList",
		type : "get",
		dataType : "json",
		data : {
			"startRow" : startRow,
			"movie_code" : movie_code
		},
		success : function(rData){
			console.log("ajax", rData);
			if(rData.length < 10){
				$("addBtn").remove();
				if(rData != 0){
					 $(".commentTitle").removeAttr("style");
				 }
				 $.each(rData, function(index,value){
						var div = $("#clone").children().clone();
						var img = div.find("img");
						var h6 = div.find("h6");
						var dropdownMenuButton = div.find("#dropdownMenuButton");
						var textarea = div.find("textarea");
						var span = div.find("span");
						var admin_delete = this.admin_delete;
						console.log("admin_delete" , admin_delete);
						if(this.profile_image != null){
							img.attr("src" , "/user/get_profile_image?filename=" + this.profile_image);
						}
						h6.text(this.userid);
						dropdownMenuButton.text(this.userid);
						span.text(this.regdate).css("color", "white");
						textarea.val(this.movie_comment);
						div.find(".commentDelete").attr("data-cno",this.cno);
						div.find(".commentUpdateSubmit").attr("data-cno",this.cno); 
						if("${loginUserVo.userid}" == this.userid){
							div.find(".commentUpdate").show();
							div.find(".commentDelete").show();
							if(admin_delete == "Y"){
								textarea.val("관리자가 삭제한 댓글 입니다");
							}
						} else {
							div.find(".commentUpdate").hide();
							div.find(".commentDelete").hide();
							if(admin_delete == "Y"){
								div.hide();
							}
						} 
						 $("#comment_list").append(div);
					});
			}
		}
	});
	
}; //getCommentList

// 유저 정보 보기
$(document).on("click", ".move_mypage", function(e){
	e.preventDefault();
	var userid = $(this).parents("div").prev().eq(0).text();
	userid = userid.trim();
	// 새로운 탭으로 다른 유저 마이페이지로 이동함
	$.ajax({
		type : "post",
		async : "true",
		url : "/user/get_userno_by_userid",
		data : {
			userid : userid
		},
		success : function(rData){
			var openNewWindow = window.open("about:blank");
			openNewWindow.location.href = "/mypage/main?userno=" + rData;
		}
	});
});

// 유저에게 글쓰기
$(document).on("click", ".write_msg", function(e){
	e.preventDefault();
	var userid = $(this).parents("div").prev().eq(0).text();
	userid = userid.trim();
	var openNewWindow = window.open("about:blank");
	openNewWindow.location.href = "/message/write_form?page=1&receiver=" + userid;
});

// 유저 신고
$(document).on("click", ".report_btn", function(e){
	e.preventDefault();
	var userid = $(this).parents("div").prev().eq(0).text();
	userid = userid.trim();
	var open = window.open("/report/report_user_form?reported_user=" + userid, "신고 하기", "width=600, height=800");
});

</script>
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>