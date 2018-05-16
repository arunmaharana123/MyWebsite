<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- SEO -->
<title>Popular Tags</title>
<meta name="author" content="Arun Maharana">
<meta name="url" content="http://www.arunmaharana.com/post/tag">
<meta name="copyright" content="arunmaharana.com">
<div class="row">
	<div class="sub-title">
		<h2>All Tags</h2>
		<a href="<c:url value='/home' ></c:url>"><i class="fa fa-home"></i></a>
	</div>
	<div class="col-md-12 content-page">
		<c:forEach items="${AllTags }" var="tg">
			<a href="<c:url value='/post/tag/${tg }' ></c:url>"><kbd>${tg }</kbd></a>
		</c:forEach>

	</div>
</div>
<div class="row" style="width: 100%;">
	<div class="col-md-12 content-page">
		<div class="col-md-12">
			<!-- Blog Post Start -->
			<h4>Latest Posts</h4>
		</div>
		<c:forEach items="${Topics }" var="pst">
			<div class="col-md-12">
				<div class="post-title">
					<a href="<c:url value='/post/${pst.id}/${pst.urlTitle}' ></c:url>"><kbd
							style="font-size: 16px; color: #E91E63; background-color: #fff; border-radius: 3px; padding: 0px 0px;">${pst.title }</kbd></a>
				</div>
			</div>
		</c:forEach>
	</div>
</div>
<!-- Blog Post (Right Sidebar) End -->
