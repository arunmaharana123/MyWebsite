<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>Arun Maharana | Home</title>
<link rel="icon"
	href="<%=request.getContextPath()%>/resources/main_template/images/logo.png" />
<meta content="width=device-width, initial-scale=1" name="viewport" />
<meta charset="UTF-8">
<meta name="author" content="Arun and Bhushan" />

</head>
<body class="page-login">
	<script src="<%=request.getContextPath()%>/resources/js/client.min.js"></script>

	<!-- Javascripts -->
	<script language="javascript">
		var client = new ClientJS();
		var fingerprint = client.getFingerprint(); // Calculate Device/Browser Fingerprint
		location.href = "home" + "?deviceUUID=" + fingerprint;
	</script>
</body>

</html>