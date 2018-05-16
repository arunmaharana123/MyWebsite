<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html lang="en">
<head>
<!-- Meta Tag -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Favicon -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/resources/my_template/images/favicon.png">
<link rel="apple-touch-icon" sizes="144x144" type="image/x-icon"
	href="<%=request.getContextPath()%>/resources/my_template/images/apple-touch-icon.jpg">

<!-- All CSS Plugins -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/my_template/css/plugin.css">

<!-- Main CSS Stylesheet -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/my_template/css/style.css">

<!-- Google Web Fonts  -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- All Javascript Plugins  -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/my_template/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/my_template/js/plugin.js"></script>

<!-- Main Javascript File  -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/my_template/js/scripts.js"></script>
<style type="text/css">
p {
	text-align: justify;
	text-justify: inter-word;
}

@media only screen and (max-width: 991px) {
	div.container {
		padding-left: 0rem;
		padding-right: 0rem;
	}
	div.row {
		margin-right: 0px;
		margin-left: 0px
	}
}
</style>
</head>

<body id="changeColor">

	<div id="main" style="width: 100%;">
		<div class="container">
			<div class="row">
				<div class="col-md-3">
					<tiles:insertAttribute name="header" />
				</div>
				<div class="col-md-9">
					<div class="col-md-12 page-body">
						<tiles:insertAttribute name="error" />
						<tiles:insertAttribute name="body" />
					</div>
					<div class="col-md-12 page-body margin-top-50 footer">
						<tiles:insertAttribute name="footer" />
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Back to Top Start -->
	<a href="#" class="scroll-to-top"><i class="fa fa-long-arrow-up"></i></a>
	<!-- Back to Top End -->

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
</body>
</html>
