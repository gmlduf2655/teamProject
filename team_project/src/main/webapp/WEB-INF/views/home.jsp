<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%-- header --%>
<%@ include file="/WEB-INF/views/include/header.jsp"%>

<div class="container">
	<div class="row">
		<main class="col-lg-8">
			<%@ include file="/WEB-INF/views/include/main.jsp" %>
		</main>
		<%@ include file="/WEB-INF/views/include/aside.jsp" %>
	</div>
</div>

<%-- footer --%>
<%@ include file="/WEB-INF/views/include/footer.jsp"%>