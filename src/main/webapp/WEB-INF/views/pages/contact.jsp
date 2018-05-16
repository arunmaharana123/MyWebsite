<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- SEO -->
<title>Contact - Arun Maharana</title>
<meta name="author" content="Arun Maharana">
<meta name="url" content="http://www.arunmaharana.com/contact">
<meta name="copyright" content="arunmaharana.com">
<div class="row">
	<div id="map" style="height: 400px;"></div>
	<div class="sub-title">
		<h2>Contact Me</h2>
		<a href="<c:url value='/home' ></c:url>"><i class="icon-home"></i></a>
	</div>
	<div class="col-md-12 blog-post">
		<div class="row">
			<div class="col-md-3 col-sm-3">
				<div class="contact-us-detail">
					<p>
						<i class="icon-screen-smartphone color-6"></i><a
							href="tel:+919011822778"> +91 90118 22778</a>
					</p>
				</div>
			</div>
			<div class="col-md-5 col-sm-5">
				<div class="contact-us-detail">
					<p>
						<i class="icon-envelope-open color-5"></i><a
							href="mailto:arun.maharana@outlook.com">
							arun.maharana@outlook.com</a>
					</p>
				</div>
			</div>

			<div class="col-md-4 col-sm-4">
				<div class="contact-us-detail">
					<p>
						<i class="icon-clock color-3"></i> Mon - Sat
					</p>
				</div>
			</div>

		</div>


		<div class="row margin-top-30">
			<h4>Write Us</h4>
			<hr>
			<div class="row">
				<form action="<c:url value="/contact/send" ></c:url>" method="post">

					<div class="col-sm-6">
						<div class="form-group">
							<input type="text" id="name" name="name" class="form-control"
								placeholder="Your Name" required="required">
						</div>
					</div>

					<div class="col-sm-6">
						<div class="form-group">
							<input type="email" id="email" name="email" class="form-control"
								placeholder="Your Email" required="required">
						</div>
					</div>

					<div class="col-sm-6">
						<div class="form-group">
							<input type="text" id="website" name="website"
								class="form-control" placeholder="Your Website">
						</div>
					</div>

					<div class="col-sm-6">
						<div class="form-group">
							<input type="text" id="address" name="location"
								class="form-control" placeholder="Where are You From?"
								required="required">
						</div>
					</div>

					<div class="col-sm-12">
						<select id="subject" name="subject"
							class="form-group form-control">
							<option value="" selected disabled>---Subject---</option>
							<option>Website Design & Development</option>
							<option>Search Engine Optimization</option>
							<option>Mobile Website</option>
							<option>Mobile Apps</option>
							<option>I Want to General Talk</option>
							<option>Other</option>
						</select>
					</div>

					<div class="col-sm-12">
						<div class="textarea-message form-group">
							<textarea id="message" name="message"
								class="textarea-message form-control" placeholder="Your Message"
								rows="5" required="required"></textarea>
						</div>
					</div>


					<div class="text-center">
						<button type="submit" class="load-more-button">Send</button>
					</div>

				</form>
			</div>
		</div>
	</div>
	<!-- Contact Me End -->

</div>
<script>
	function initMap() {
		var myLatLng = {
			lat : 18.5204,
			lng : 73.8567
		};

		var map = new google.maps.Map(document.getElementById('map'), {
			zoom : 5,
			center : myLatLng
		});

		var marker = new google.maps.Marker({
			position : myLatLng,
			map : map,
			title : 'Pune'
		});
	}
</script>
<script async defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDf1aE0F53ArHGA2bUbiEA9LwwfN_QTkaU&callback=initMap">
	
</script>