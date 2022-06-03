<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header -->
<%@ include file="/WEB-INF/views/include/header.jsp"%>


<div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="jumbotron">
				<h2>당첨자 발표</h2>
				<p>
					<a class="btn btn-primary btn-large" href="#">이벤트 게시판으로</a>
				</p>
			</div>
			<table class="table">
				<thead>
					<tr>
						<th>#</th>
						<th>Product</th>
						<th>Payment Taken</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>TB - Monthly</td>
						<td>01/04/2012</td>
						<td>Default</td>
					</tr>
					<tr class="table-active">
						<td>1</td>
						<td>TB - Monthly</td>
						<td>01/04/2012</td>
						<td>Approved</td>
					</tr>
					<tr class="table-success">
						<td>2</td>
						<td>TB - Monthly</td>
						<td>02/04/2012</td>
						<td>Declined</td>
					</tr>
					<tr class="table-warning">
						<td>3</td>
						<td>TB - Monthly</td>
						<td>03/04/2012</td>
						<td>Pending</td>
					</tr>
					<tr class="table-danger">
						<td>4</td>
						<td>TB - Monthly</td>
						<td>04/04/2012</td>
						<td>Call in to confirm</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>


<!-- footer -->
<%@ include file="/WEB-INF/views/include/footer.jsp"%>