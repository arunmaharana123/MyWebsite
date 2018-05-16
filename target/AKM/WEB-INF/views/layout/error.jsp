<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<div class="row">
	<c:if test="${ErrorMessage eq 'ErrorMessage' }">
		<div class="alert alert-danger">${Message }</div>
	</c:if>
	<c:if test="${SuccessMessage eq 'SuccessMessage' }">
		<div class="alert alert-success">${Message }</div>
	</c:if>
</div>
