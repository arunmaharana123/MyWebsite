<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- SEO -->
<title>${Tags } Posts by Arun Maharana</title>
<meta name="author" content="Arun Maharana">
<meta name="url" content="http://www.arunmaharana.com/post/tag/${Tags }">
<meta name="copyright" content="arunmaharana.com">

<div class="row">
	<div class="sub-title">
		<h2>Latest Posts</h2>
		<a href="<c:url value='/post/tag' ></c:url>"><i class="fa fa-tags"></i></a>
	</div>
	<div class="col-md-12 content-page">
		<!-- Blog Post Start -->
		<c:if test="${empty fn:length(Topics) }">No posts for Tag:${Tags }</c:if>
		<c:forEach items="${Topics }" var="pst">
			<div class="col-md-12 blog-post">
				<div class="post-title">
					<a href="<c:url value='/post/${pst.id}/${pst.urlTitle}' ></c:url>"><h1>${pst.title }</h1></a>
				</div>
				<div class="post-info">
					<span><fmt:formatDate value="${pst.datetime }"
							pattern="dd MMM yyyy" /> / by <a
						href="<c:url value='/profile/${pst.userId}/${pst.createdBy}' ></c:url>"
						target="_blank">${pst.createdBy }</a></span>
				</div>
				<p>${pst.shortDescription }</p>
				<a href="<c:url value='/post/${pst.id}/${pst.urlTitle}' ></c:url>"
					class="button button-style button-anim fa fa-long-arrow-right"><span>Read
						More</span></a>
			</div>
		</c:forEach>
	</div>
</div>
<!-- Blog Post (Right Sidebar) End -->
