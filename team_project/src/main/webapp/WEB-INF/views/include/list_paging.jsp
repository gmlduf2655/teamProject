<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 임희열 : 리스트 페이징 부분 겹치게 쓰는 부분이 많아서 include로 넣었습니당 -->
<!-- 글 목록 페이징 부분-->
<div class="row mb-3">
	<div class="col-md-12">
		<nav>
			<ul class="pagination justify-content-center" id="pagination">
				<c:if test="${pagingDto.startPage > 1}">
					<li class="page-item"><a class="page-link move_page"
						href="/point/point_list?userno=1&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">처음으로</a></li>
					<li class="page-item"><a class="page-link move_page"
						href="/point/point_list?userno=${pagigDto.startPage-1}&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">이전</a></li>
				</c:if>
				<c:forEach var="i" begin="${pagingDto.startPage}"
					end="${pagingDto.endPage}">
					<li
						<c:choose>
							<c:when test="${i == pagingDto.page}">
								class="page-item active"
							</c:when>
							<c:otherwise>
								class="page-item"		
							</c:otherwise>
						</c:choose>>
						<a class="page-link move_page"
						href="/point/point_list?userno=${param.page}&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">${i}</a>
					</li>
				</c:forEach>
				<c:if test="${pagingDto.endPage != pagingDto.totalPage}">
					<li class="page-item"><a class="page-link move_page"
						href="/point/point_list?userno=${pagigDto.endPage+1}&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">다음</a></li>
					<li class="page-item"><a class="page-link move_page"
						href="/point/point_list?userno=${pagigDto.totalPage}&page=${i}&searchType=${param.searchType}&keyword=${param.keyword}">마지막으로</a></li>
				</c:if>
			</ul>
		</nav>
	</div>
</div>
<!-- 글 목록 페이징 부분 끝 -->