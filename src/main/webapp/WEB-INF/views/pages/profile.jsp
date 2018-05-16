<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- SEO -->
<div class="row">
	<div class="sub-title">
		<h2>My Portfolio</h2>
		<a href="<c:url value='/home' ></c:url>"><i class="icon-home"></i></a>
	</div>
	<div class="row portfolio">
		<div class="col-sm-6 custom-pad-1">
			<div class="image-carousel">
				<img
					src="<%=request.getContextPath()%>/resources/my_template/images/arun/arun_maharana11.jpg"
					class="img-responsive" alt="Arun Maharana"> <img
					src="<%=request.getContextPath()%>/resources/my_template/images/arun/arun_maharana12.jpg"
					class="img-responsive" alt="Arun Maharana"> <img
					src="<%=request.getContextPath()%>/resources/my_template/images/arun/arun_maharana13.jpg"
					class="img-responsive" alt="Arun Maharana"> <img
					src="<%=request.getContextPath()%>/resources/my_template/images/arun/arun_maharana14.jpg"
					class="img-responsive" alt="Arun Maharana"> <img
					src="<%=request.getContextPath()%>/resources/my_template/images/arun/arun_maharana15.png"
					class="img-responsive" alt="Arun Maharana">
			</div>
		</div>

		<div class="col-sm-6 custom-pad-2">
			<div class="table-responsive">
				<table class="table table-bordered">
					<tbody>
						<tr>
							<td><b>Name</b></td>
							<td>Arun Maharana</td>
						</tr>

						<tr>
							<td><b>Address</b></td>
							<td>Kumarpni, Odisha, India</td>
						</tr>

						<tr>
							<td><b>Job</b></td>
							<td>Java Developer, 3 Years Exp.</td>
						</tr>

						<tr>
							<td><b>Skills</b></td>
							<td>Java, Spring, Hibernate, Tiles, MySQL, HTML, CSSetc.</td>
						</tr>

						<tr>
							<td><b>Profile</b></td>
							<td><a href="http://www.arunmaharana.info" target="_blank"
								title="arunmaharana.info">View Profile</a></td>
						</tr>
						<tr>
							<td><b>Mail</b></td>
							<td><a href="mailto:arun.maharana@outlook.com"
								target="_blank" title="Mail">arun.maharana@outlook.com</a></td>
						</tr>

						<tr>
							<td><b>About Me</b></td>
							<td>Its right because you think its right. Its may not right
								if you do not think, its right.</td>
						</tr>
					</tbody>
				</table>

			</div>
		</div>
	</div>
	<!-- Portfolio Detail End -->


	<!-- Intro Start -->
	<div class="post-title margin-bottom-30">
		<h1>
			Let's take a look on <span class="main-color">My Work</span>
		</h1>
	</div>
	<!-- Intro End -->

	<!-- Portfolio Detail Start -->
	<div class="row portfolio">
		<div class="col-sm-6 custom-pad-1">
			<div class="image-carousel">
				<img
					src="<%=request.getContextPath()%>/resources/my_template/images/arun/arun_maharana_1.png"
					class="img-responsive" alt="Arun Maharana"> <img
					src="<%=request.getContextPath()%>/resources/my_template/images/arun/arun_maharana_2.png"
					class="img-responsive" alt="Arun Maharana"> <img
					src="<%=request.getContextPath()%>/resources/my_template/images/arun/arun_maharana_3.png"
					class="img-responsive" alt="Arun Maharana"> <img
					src="<%=request.getContextPath()%>/resources/my_template/images/arun/arun_maharana_4.png"
					class="img-responsive" alt="Arun Maharana"> <img
					src="<%=request.getContextPath()%>/resources/my_template/images/arun/arun_maharana_5.png"
					class="img-responsive" alt="Arun Maharana">
			</div>
		</div>


		<div class="col-sm-6 custom-pad-2">
			<div class="table-responsive">
				<table class="table table-bordered">
					<tbody>

						<tr>
							<td><b>Skills</b></td>
							<td>Java, SpringMVC, Hibernate, MySQL, HTML, CSS, Java
								Script, etc.</td>
						</tr>

						<tr>
							<td><b>Duration</b></td>
							<td>15 Days</td>
						</tr>

						<tr>
							<td><b>URL</b></td>
							<td><a href="http://www.arunmaharana.info" target="_blank"
								title="arunmaharana.info">Click Here</a></td>
						</tr>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</div>
