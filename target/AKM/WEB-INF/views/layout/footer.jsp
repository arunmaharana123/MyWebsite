<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<footer>
	<ul class="menu-link">
		<li><a href="<c:url value='/home' ></c:url>">Home</a></li>
		<li><a href="<c:url value='/profile' ></c:url>">Profile</a></li>
		<li><a href="<c:url value='/about' ></c:url>">About</a></li>
		<li><a href="<c:url value='/contact' ></c:url>">Contact</a></li>
	</ul>
	<div align="center">
		© Copyright 2017-18 arunmaharana.com. All rights reserved
	</div>

	<!-- UiPasta Credit Start -->
	<div class="uipasta-credit">
		Design By <a href="<c:url value='/profile' ></c:url>" target="_blank">Arun Maharana</a>
	</div>
	<!-- UiPasta Credit End -->


</footer>
<!-- Footer End -->