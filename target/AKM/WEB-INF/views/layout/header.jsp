<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<style>
@media only screen and (max-width: 991px) {
	#header-mypic, #header-mydetails {
		display: none;
	}
	#header-menus {
		margin-bottom: 10px;
		padding: 20px;
	}
}
@media only screen and (min-width: 991px) {
	#header-menus {
		display: none;
	}
}
</style>
<div class="about-fixed">
	<div class="my-pic" id="header-mypic">
		<img
			src="<%=request.getContextPath()%>/resources/my_template/images/arun/arun_maharana.jpg"
			alt="Arun Maharana">
		<!-- <a href="javascript:void(0)"
			class="collapsed" data-target="#menu" data-toggle="collapse"><i
			class="icon-menu menu"></i></a>
		<div id="menu" class="collapse">
			<ul class="menu-link">
				<li><a href="#">Profile</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Contact</a></li>
			</ul>
		</div> -->
	</div>
	<div id="header-menus" class="my-detail">
		<a style="font: 16px;" href="<c:url value='/home' ></c:url>">Latest
			posts by Arun Maharana</a>
	</div>
	<div class="my-detail" id="header-mydetails">
		<div class="white-spacing">
			<h1>
				<a href="<c:url value='/home' ></c:url>">Arun Maharana</a>
			</h1>
			<span>Full Stack Developer</span>
		</div>

		<ul class="social-icon">
			<li><a href="https://facebook.com/arunmaharana123"
				target="_blank" class="facebook"><i class="fa fa-facebook"></i></a></li>
			<li><a href="https://twitter.com/arunmaharana123"
				target="_blank" class="twitter"><i class="fa fa-twitter"></i></a></li>
			<li><a href="https://in.linkedin.com/in/arunmaharana123"
				target="_blank" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
			<li><a href="https://github.com/arunmaharana123" target="_blank"
				class="github"><i class="fa fa-github"></i></a></li>
		</ul>

	</div>
</div>