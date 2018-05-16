<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- SEO -->
<title>${Post.title } by Arun Maharana</title>
<meta name="description" content="${Post.shortDescription }">
<meta name="author" content="Arun Maharana">
<meta name="url"
	content="http://www.arunmaharana.com/post/${Post.id}/${Post.urlTitle}">
<meta name="copyright" content="arunmaharana.com">
<meta name="keywords" content="${Post.tags }">


<!-- Open Graph data -->
<meta property="og:title" content="${Post.title }" />
<meta property="og:type" content="article" />
<meta property="og:url" content="http://www.arunmaharana.com/" />
<meta property="og:image"
	content="<%=request.getContextPath()%>/resources/my_template/images/arun/arun_maharana.jpg" />
<meta property="og:description" content="${Post.shortDescription }" />
<meta property="og:site_name" content="ArunMaharana" />
<meta property="article:published_time" content="${Post.datetime }" />
<meta property="article:tag" content="${Post.tags }" />


<style>
.jssocials-share-link {
	border-radius: 50%;
}

@media only screen and (max-width: 991px) {
	div.col-md-12 {
		padding-left: 5px;
		padding-right: 5px;
	}
	h1 {
		color: #FF9800; font-size : 24px;
		text-justify: inter-word;
		font-size: 24px;
	}
}
</style>
<div class="row" style="width: 100%;">
	<div class="sub-title">
		<h1>${Post.title }</h1>
	</div>
	<div class="col-md-12">
		Share:
		<div id="socialshares"></div>
	</div>
	<!-- Blog Post Start -->
	<div class="col-md-12 blog-post">
		<div class="post-info">
			<span><fmt:formatDate value="${Post.datetime }"
					pattern="dd MMM yyyy" /> / by <a
				href="<c:url value='/profile' ></c:url>" target="_blank">${Post.createdBy }</a></span>
		</div>
		<p>${Post.description }</p>
	</div>

	<div class="col-md-12">
		<div id="disqus_thread"></div>
	</div>
</div>
<div class="row" style="width: 100%;">
	<hr>
	<div class="col-md-12">
		<!-- Blog Post Start -->
		<h4>Latest Posts</h4>
	</div>
	<c:forEach items="${Topics }" var="pst">
		<div class="col-md-12">
			<div class="post-title" style="margin-bottom: 30px;">
				<a href="<c:url value='/post/${pst.id}/${pst.urlTitle}' ></c:url>"><kbd
						style="font-size: 16px; color: #E91E63; background-color: #fff; border-radius: 3px; padding: 0px 0px;">${pst.title }</kbd></a>
			</div>
		</div>
	</c:forEach>
</div>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/social-share/jquery-latest.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/social-share/jssocials.min.js"></script>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/social-share/jssocials.css" />
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/social-share/jssocials-theme-flat.css" />
<script>
	$("#socialshares").jsSocials(
			{
				showLabel : false,
				showCount : false,
				shareIn : "popup",
				shares : [ "email", "twitter", "facebook", "googleplus",
						"linkedin", "whatsapp" ]
			});
</script>
<script>
	(function() { // DON'T EDIT BELOW THIS LINE
		var d = document, s = d.createElement('script');
		s.src = 'https://arunmaharana.disqus.com/embed.js';
		s.setAttribute('data-timestamp', +new Date());
		(d.head || d.body).appendChild(s);
	})();
</script>
<noscript>
	Please enable JavaScript to view the <a
		href="https://disqus.com/?ref_noscript">comments powered by
		Disqus.</a>
</noscript>