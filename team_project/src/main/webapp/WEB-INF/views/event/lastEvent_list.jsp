<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>

    <!-- Normal Breadcrumb Begin -->
    <section class="normal-breadcrumb set-bg" data-setbg="/resources/images/img/normal-breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="normal__breadcrumb__text">
                        <h2>지난 이벤트</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Normal Breadcrumb End -->

<div class="container-fluid" style="padding: 50px">
	<div class="row">
	<div class="col-md-2"></div>
		<div class="col-md-8">
			<div class="row">

				<c:forEach items="${lastEventlist}" var="eventVo">
					<div class="col-md-3">
						<div class="product__item">
							<div class="product__item__pic set-bg"
								<c:choose>
								<c:when test="${empty eventVo.event_image}"> 
									data-setbg="/resources/images/no_image.jpg" 
								</c:when>
								<c:otherwise>
									data-setbg="/event/displayImage?filename=${eventVo.event_image}"
								</c:otherwise>
								</c:choose>
							>
								
								<div class="view">
									<i class="fa fa-eye"></i> ${eventVo.event_count}
								</div>
							</div>
							<div class="product__item__text">
								<h5>
									<a href="/event/event_read?event_no=${eventVo.event_no}">${eventVo.event_title}</a>
								</h5>
									<label style="color:white">이벤트 종료일 : ${eventVo.event_start_date}</label>
							</div>
						</div>
					</div>
				</c:forEach>

			</div>
		</div>
		<div class="col-md-2"></div>
	</div>
		<div class="float-right">
			<p>
				<a class="btn btn-primary btn-large" href="/event/write_form">게시글 쓰기</a>
			</p>
		</div>
</div>










<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>