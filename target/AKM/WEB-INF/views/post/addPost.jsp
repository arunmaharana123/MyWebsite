<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css"
	rel="stylesheet">
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script
	src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>


<!-- Main CSS Stylesheet -->
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/editor/dist/summernote.css">
<!-- All Javascript Plugins  -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/editor/dist/summernote.js"></script>
<div class="row">
	<div class="col-md-12 content-page">
		<h2>Add New Post</h2>
		<hr>
		<form action="<c:url value="/post/save" ></c:url>" method="post">
			<div class="form-group">
				<label for="title">Title:</label> <input type="text"
					value="${PostInfo.title }" class="form-control" id="title"
					placeholder="Enter Title" name="title">
			</div>
			<div class="form-group">
				<label for="shortdescription">Description:</label>
				<textarea class="form-control" id="shortdescription"
					placeholder="Short description..." name="shortdescription">${PostInfo.shortDescription }</textarea>
			</div>
			<div class="form-group">
				<label for="description">Description:</label>
				<textarea class="form-control summernote" id="description"
					placeholder="Full description..." name="description">${PostInfo.description }</textarea>
			</div>
			<div class="form-group">
				<label for="tags">Tags:</label> <input type="text"
					class="form-control" id="tags" value="${PostInfo.tags }"
					placeholder="Tags separated by comma," name="tags">
			</div>
			<div class="form-group">
				<label for="postedby">Your Name:</label> <input type="text"
					class="form-control" id="postedby" placeholder="Enter Your Name"
					name="postedby" value="${PostInfo.createdBy }">
			</div>
			<div class="form-group">
				<label for="creditto">Credit To:</label> <input type="text"
					class="form-control" id="creditto" value="${PostInfo.creditTo }"
					placeholder="Enter Where you copy" name="creditto">
			</div>

			<div class="form-group">
				<label for="apikey">API Key:</label> <input type="text"
					class="form-control" id="apikey" placeholder="Enter Key"
					name="apikey">
			</div>
			<div class="form-group" align="right">
				<button type="submit" class="btn btn-success">Submit</button>
				<input type="hidden" name="updateid" value="${PostInfo.id }">
			</div>
		</form>
	</div>
</div>
<script>
	$(document).ready(function() {
		$('.summernote').summernote({
			placeholder : 'Write description',
			height : 400
		});
	});
</script>