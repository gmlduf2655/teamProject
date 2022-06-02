<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">

				<c:forEach items="${eventList}" var="eventVo">
					<div class="col-md-3">
						<div class="product__item">
							<div class="product__item__pic set-bg"
								data-setbg="resources/images/no_image.jpg">
								<div class="ep">18 / 18</div>
								<div class="view">
									<i class="fa fa-eye"></i> ${eventVo.event_count}
								</div>
							</div>
							<div class="product__item__text">
								<h5>
									<a href="#">${eventVo.event_title}</a>
								</h5>
								<h5>
									<a href="#">${eventVo.event_end_date}</a>
								</h5>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
	</div>
		<div class="float-right">
			<p>
				<a class="btn btn-primary btn-large" href="/event/write_form">게시글 쓰기</a>
			</p>
		</div>
</div>










<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>