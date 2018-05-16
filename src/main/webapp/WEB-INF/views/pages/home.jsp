<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- SEO -->
<title>Latest Posts by Arun Maharana</title>
<meta name="author" content="Arun Maharana">
<meta name="url" content="http://www.arunmaharana.com">
<meta name="copyright" content="arunmaharana.com">
<style type="text/css">
@media only screen and (max-width: 991px) {
	div.col-md-12 {
		padding-left: 5px;
		padding-right: 5px;
	}
	h1 {
		font-size: 18px;
		text-justify: inter-word;
	}
}
</style>
<div class="row" style="margin-bottom: 30px;">
	<div class="sub-title" style="padding-bottom: 0px;">
		<h2>Latest Posts</h2>
		<a href="<c:url value='/post/tag' ></c:url>"><i class="fa fa-tags"></i></a>
	</div>
	<hr>
	<div class="col-md-12">
		<!-- Blog Post Start -->
		<c:forEach items="${Topics }" var="pst">
			<div class="col-md-12">
				<div class="post-title">
					<a href="<c:url value='/post/${pst.id}/${pst.urlTitle}' ></c:url>"><h1>${pst.title }</h1></a>
				</div>
				<div class="post-info">
					<span style="font-weight: bold; font-size: 12px; color: #333;"><fmt:formatDate
							value="${pst.datetime }" pattern="dd MMM yyyy" /> / by <a
						style="font-weight: bold; font-size: 12px; color: #333;"
						href="<c:url value='/profile/${pst.userId}/${pst.createdBy}' ></c:url>"
						target="_blank">${pst.createdBy }</a></span>
				</div>
				<p>${pst.shortDescription }
					<a href="<c:url value='/post/${pst.id}/${pst.urlTitle}' ></c:url>"><span>Read
							More</span></a>
				</p>
			<hr></div>
			
		</c:forEach>
		<!-- 
		<div class="col-md-12 text-center">
			<a href="javascript:void(0)" id="" class="load-more-button">Load</a>
			<div id="post-end-message"></div>
		</div> -->
	</div>
</div>
<!-- Blog Post (Right Sidebar) End -->
