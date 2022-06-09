<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<title>영화정보</title>
<style>

</style>
<script>

var date = new Date("${movieVo.opening_date}");
var year = date.getFullYear();
var month = date.getMonth()+1;
var day = date.getDay();
month = month >= 10 ? month : '0' + month;
day = day >= 10 ? day : '0' + day;
$(function(){
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
		var userid = "user01";
		var sData = {
				"movie_comment" : movie_comment,
				"movie_code" : movie_code,
				"userid" : userid
		};
		$.post(url, sData, function(rData){
			console.log(rData);
			if(rData == "true"){
				getCommentList();
			}
		});
	});
	
	//댓글 수정하기
	$("#comment_list").on("click", ".commentUpdate" ,function(){
		/* var tr = $(this).parent().parent();
		var td = tr.children(); 
		td.eq(1).find(".commentInput").removeAttr("disabled");
		td.eq(3).find(".commentUpdate").hide();
		td.eq(3).find(".commentUpdateSubmit").show(); */
		var div = $(this).prev(); //input상자
		div.removeAttr("style").removeAttr("disabled");
		div.next().hide();
		div.next().next().show();
	});
	//수정댓글 저장하기
	$("#comment_list").on("click", ".commentUpdateSubmit" ,function(){
		/* var tr = $(this).parent().parent();
		var td = tr.children(); */
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
				getCommentList();
			}
		});
	});
	//댓글 삭제 
	$("#comment_list").on("click", ".commentDelete" ,function(){
		console.log("click, commentDelete");
		var cno = $(this).attr("data-cno");
		var url = "/moviecomment/commentDelete";
		var sData = {
				"cno" : cno
		};
		$.get(url, sData, function(rData){
			if(rData == "true"){
				getCommentList();
			}
		});
	});
	//댓글 리스트 불러오기
	/* function getCommentList(){
		var url = "/moviecomment/commentList";
		var movie_code = "${movieVo.movie_code}";
		sData = {
				"movie_code" : movie_code
		};
		 $.get(url, sData, function(rData){
			 console.log(rData);
			 $("#commentTable tr:gt(0)").remove();
			 $.each(rData, function(){
				var tr = $("#cloneTable tr").clone();
				var tds = tr.find("td");
				tds.eq(0).text(this.userid);
				tds.eq(1).find(".commentInput").val(this.movie_comment);
				tds.eq(2).text(this.regdate);
				tds.find(".commentDelete").attr("data-cno",this.cno);
				tds.find(".commentUpdateSubmit").attr("data-cno",this.cno);
				if("${loginUserVo.userid}" == this.userid){
					tds.eq(3).show();
					tds.eq(4).show();
				} else {
					tds.eq(3).hide();
					tds.eq(4).hide();
				} 
				$("#commentTable").append(tr);
			});
		});
	};  */
	function getCommentList(){
		var url = "/moviecomment/commentList";
		var movie_code = "${movieVo.movie_code}";
		sData = {
				"movie_code" : movie_code
		};
		 $.get(url, sData, function(rData){
			 console.log(rData);
			 $("#comment_list").children().remove();
			 $.each(rData, function(){
				var div = $("#clone").children().clone();
				var img = div.find("img");
				var h6 = div.find("h6");
				var input = div.find("input");
				/* var p = div.find("p"); */
				var span = div.find("span");
				/*	img.attr("src" , "/user/get_profile_image?filename=" + this.profile_image); */
				img.attr("src" , "//192.168.0.60/" + this.profile_image);
				console.log("src" , this.profile_image);
				h6.text(this.userid);
				span.text(this.regdate).css("color", "white");
				input.val(this.movie_comment);
				/* p.text(this.movie_comment); */
				div.find(".commentDelete").attr("data-cno",this.cno);
				div.find(".commentUpdateSubmit").attr("data-cno",this.cno); 
				if("${loginUserVo.userid}" == this.userid){
					div.find(".commentUpdate").show();
					div.find(".commentDelete").show();
				} else {
					div.find(".commentUpdate").hide();
					div.find(".commentDelete").hide();
				} 
				$("#comment_list").append(div);
				
			});
			 
		});
	}; 
	
	
});
</script>
${loginUserVo}
<!-- <section class="anime-details spad"> -->
        <div class="container">
            <div class="anime__details__content">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="anime__details__pic set-bg" data-setbg="/movie/displayImage?filename=${movieVo.movie_image_name}" style="background-image: url(&quot;img/anime/details-pic.jpg&quot;);">
                            <div class="comment"><i class="fa fa-comments"></i> 11</div>
                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                                <h3>${movieVo.movie_name}</h3>
                                <span>${movieVo.movie_name_en}</span>
                            </div>
                            <div class="anime__details__rating">
                                <div class="rating">
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star-half-o"></i></a>
                                </div>
                                <span>1.029 Votes</span>
                            </div>
                            <p>${movieVo.movie_synopsis}</p>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>장르:</span> ${movieVo.movie_genre}</li>
                                            <li><span>제작사:</span> ${movieVo.made_company}</li>
                                            <li><span>배우:</span> ${movieVo.movie_actors}외</li>
                                            <li><span>감독:</span> ${movieVo.movie_director}</li>
                                            <li><span>상영시간:</span> ${movieVo.runningtime}분</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li  id="date"><span>개봉날짜:</span></li>
                                            <li><span>제작연도:</span> ${movieVo.make_year}</li>
                                            <li><span>제작국가:</span> ${movieVo.made_country}</li>
                                            <li><span>관람등급:</span> ${movieVo.movie_audits}</li>
                                            <li><span>Views:</span>${movieVo.opening_date}</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="anime__details__btn">
                                <a href="#" class="watch-btn"><span>예매하기</span> <i class="fa fa-angle-right"></i></a>
                                <a href="#" class="follow-btn"><i class="fa fa-heart-o"></i> 좋아요</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
                            <div class="section-title" id="section-title">
                            <br>
                                <h5>댓글</h5>
                            </div>
                           
                            
                            
                            <!-- try -->
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
								</div>
								
								<div class="anime__review__item" style="display: none;" id="clone">
									<div class="anime__review__item__pic">
										<img src="img/anime/review-1.jpg" id="userprofile">
									</div>
									<div class="anime__review__item__text">
										<h6 id="usercom" ></h6>
										<span id="userreg" style="float: right;"></span>
										<!-- <p></p> -->
										<input type="text" disabled style="background-color: rgba(255,255,255,0); 
																	color: white; border: none;"> 
										<button type="button" class="btn btn-sm btn-danger commentUpdate"
												style="margin-bottom: 10px;">수정</button>
										<button type="button" class="btn btn-sm btn-warning commentUpdateSubmit" 
												style="display: none; margin-bottom: 10px;">완료</button>
										<button type="button" class="btn btn-sm btn-primary commentDelete"
												style="margin-bottom: 10px;">삭제</button>
									</div>
									<br>
								</div>
								<!-- try -->
                            
                            
                            <!-- 기존 테이블 댓글
                            <table id="cloneTable" style="display: none" >
                            	<tr>
                            		<td class="useridcom"></td>
                            		<td><input type="text" class="commentInput" 
											disabled="disabled"></td>
                            		<td></td>
                            		<td>
                            			<button type="button" class="btn btn-sm btn-danger commentUpdate">수정</button>
                            			<button type="button" class="btn btn-sm btn-warning commentUpdateSubmit" style="display: none">수정</button>
                            		</td>
                            		<td>
                            			<button type="button" class="btn btn-sm btn-primary commentDelete">삭제</button>
                            		</td>
                            	</tr>
                            </table>
                            
                            <table id="commentTable" style="color: white; padding: 100px;">
                            	<tr >
                            		<th>아이디</th>
                            		<th>댓글</th>
                            		<th>날짜</th>
                            		<th>수정</th>
                            		<th>삭제</th>
                            	</tr>
                            </table>
                             -->
                             
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
<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>