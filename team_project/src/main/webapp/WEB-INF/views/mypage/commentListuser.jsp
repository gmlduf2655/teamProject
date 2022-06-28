<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>
	<style>
		h4{
			color:white;
			margin-bottom:20px;
		}
		h3{
			color:white;
		}
		hr{
			background-color:white;
		}
		ul{
			list-style:none;
		}
		li{
			font-size:20px;
		}
		li>a{
			color:white;
		}
		.page-item.active .page-link{
		    z-index: 3;
			color:white;
			border-color:#e53637;
			background-color:#e53637;
		}
		.page-link {
		    position: relative;
		    display: block;
		    padding: 0.5rem 0.75rem;
		    margin-left: -1px;
		    line-height: 1.25;
		    color: #e53637;
		    background-color: #fff;
		    border: 1px solid #dee2e6;
		}
		.move_page{
			color:#e53637;
		}
		.checked {
		  color: orange;
		}
	</style>
    <script>

	//댓글 불러오기
	   function getCommentList(){
	  		
	  		var startRow = $(".listtr").length;
	  		var userid = "${loginUserVo.userid}";
	  		console.log(startRow);
	  		$.ajax({
	  			url :"/moviecomment/commentListuserappend",
	  			type : "get",
	  			dataType : "json",
	  			data : {
	  				"startRow" : startRow,
	  				"userid" : userid
	  			},
	  			success : function(rData){
	  				console.log("ajax", rData);
	  				if(rData.length < 10){
	  					$("addBtn").remove();
	  					 $.each(rData, function(){
	  							var tr = $(".cloneTable tr").clone();
	  							var tds = tr.find("td");
	  							tds.eq(0).text(this.cno);
	  							tds.eq(1).html("<a style='color:white' href='/movie/movieInfo?movie_code=this.movie_code'>" + this.movie_name + "</a>");
	  							tds.eq(2).text(this.movie_comment);
	  							tds.eq(3).text(this.regdate);
	  							$(".table").append(tr);
	  						});
	  				}
	  			}
	  		});
	  		
	  	}; //getCommentList

    </script>

    <!-- 댓글 내역을 보여주는 부분 -->
    <section>
    	<div class="row">
        	<div class="col-md-2" style="color:white;margin-left: 80px;">
        		<jsp:include page="/WEB-INF/views/mypage/mypage_menu.jsp" />
        	</div>
        	<div class="col-md-8">
        		<!-- nav 부분 -->
				<nav class="row mb-4" >
					<div class="col-md-4">
						<h3>댓글 내역</h3>
					</div>
					<div class="col-md-3"></div>
				</nav>
				<!-- nav 부분 끝-->
				<!-- 댓글 내역 테이블 부분 -->
	    		<div class="row">
	               	<div class="col-md-12 ">
				    	<table class="table" style="color:white;">
					    	<thead>
					    		<tr>
									<th>댓글번호</th>
									<th>영화</th>
									<th>댓글</th>
									<th>작성일</th>
					   			</tr>
					   		</thead>
					   		<tbody>
								<c:forEach var="commentVo" items="${commentlistuser}" varStatus="status">
										<tr class="listtr">
											<td>${commentVo.cno}</td>
											<td><a style="color:white"
												href="/movie/movieInfo?movie_code=${commentVo.movie_code}">${commentVo.movie_name}</a></td>
											<td>
												<c:if test="${commentVo.admin_delete=='N'}">
													${commentVo.movie_comment}
												</c:if>
												<c:if test="${commentVo.admin_delete=='Y'}">
													관리자가 삭제한 댓글입니다.
												</c:if>
											</td>
											<td>${commentVo.regdate}</td>
										</tr>
								</c:forEach>
							</tbody>
					    </table>
	    	    	<button id="addBtn" style="float: right;" class="btn btn-danger" onclick="getCommentList();">더보기</button>
 							
					</div>			
	            </div>
	            <!-- 댓글 내역 테이블 부분 끝-->
	           
		        <div style="text-align:center;">
			        <a onClick="history.go(-1)" style="cursor: pointer; color: white;" class="site-btn">마이페이지로</a>
		        </div>
        	</div>
        	<div class="col-md-2">
        			<table class="cloneTable">
			            <tr class="listtr">
			            <td></td>
			            <td></td>
			            <td></td>
			            <td></td>
			            </tr>
					</table>
        	
        	</div>
        </div>
    </section>
    <!-- 포인트 내역을 보여주는 부분 끝 -->
	
<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>