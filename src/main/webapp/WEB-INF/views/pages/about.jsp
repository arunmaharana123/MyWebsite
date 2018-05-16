<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- SEO -->
<title>About - Arun Maharana</title>
<meta name="author" content="Arun Maharana">
<meta name="url" content="http://www.arunmaharana.com/about">
<meta name="copyright" content="arunmaharana.com">

<div class="row">
	<div class="sub-title">
		<h2>About Us</h2>
		<a href="<c:url value='/home' ></c:url>"><i class="icon-home"></i></a>
	</div>
	<div class="col-md-12 content-page">
		<div class="col-md-12">
			<!-- My Intro Start -->
			<div class="post-title margin-bottom-30">
				<h1>
					Hi, I am <span class="main-color">Arun Maharana</span>
				</h1>

				<ul class="knowledge">
					<li class="bg-color-1">Full Stack Developer</li>
				</ul>

			</div>
			<!-- My Intro End -->


			<p>
				Here I am to provide latest posts. I think its a great work to share
				all my knowledge with you. You'll get more technical posts here. I
				am developer so trying to post bugs related posts. <br>Keep
				reading and suggesting me. <br>Thank You.
			</p>

			<!--
			<div class="video-box margin-top-40 margin-bottom-80">
				<div class="video-tutorial">
					<a class="video-popup"
						href="https://www.youtube.com/watch?v=O2Bsw3lrhvs"
						title="My Thought"> <img src="images/pic/my-pic.png" alt="">
					</a>
				</div>
				<p>Take a look about my thought on website design.</p>
			</div>
			Video End -->

			<!-- My Service Start -->
			<div class="post-title">
				<h1>
					My <span class="main-color">Services</span>
				</h1>
			</div>

			<div class="list list-style-2 margin-top-30">
				<ul>
					<li>Java Online Tutorial</li>
					<li>Java Project Development</li>
					<li>Website Development</li>
					<li>Android App Development</li>
				</ul>
			</div>
			<!-- My Service End -->

		</div>

	</div>
</div>
<!-- Blog Post (Right Sidebar) End -->
<div class="row" style="margin-bottom: 30px;">
	<div class="sub-title">
		<h2>Team</h2>
	</div>
	<div class="col-md-6 col-sm-6 col-xs-12">
		<div class="testimonial-content">
			<p>"Friendship marks a life even more deeply than love. Love
				risks degenerating into obsession, friendship is never anything but
				sharing."</p>
		</div>

		<div class="testimonial-client-info">

			<div class="testimonial-client client-thumb">
				<img
					src="<%=request.getContextPath()%>/resources/my_template/images/arun/Bhushan_Darandale.jpg"
					alt="Bhushan Darandale">
			</div>

			<div class="client-text">
				<div class="client-name">Bhushan Darandale</div>
				<span>Java Developer</span>
			</div>
		</div>
	</div>

	<div class="col-md-6 col-sm-6 col-xs-12">
		<div class="testimonial-content">
			<p>"Friendship is born at that moment when one person says to
				another: 'What! You too? I thought I was the only one."</p>
		</div>

		<div class="testimonial-client-info">

			<div class="testimonial-client client-thumb">
				<img
					src="<%=request.getContextPath()%>/resources/my_template/images/arun/surya_Kant_Rout.jpg"
					alt="Surya Kant Rout">
			</div>

			<div class="client-text">
				<div class="client-name">Suryakant Routa</div>
				<span>Software Engineer</span>
			</div>
		</div>
	</div>

	<div class="col-md-6 col-sm-6 col-xs-12">
		<div class="testimonial-content">
			<p>"Nothing makes the earth seem so spacious as to have friends
				at a distance; they make the latitudes and longitudes."</p>
		</div>

		<div class="testimonial-client-info">

			<div class="testimonial-client client-thumb">
				<img
					src="<%=request.getContextPath()%>/resources/my_template/images/arun/Pratap_Mishra.jpg"
					alt="Pratap Keshari Mishra">
			</div>

			<div class="client-text">
				<div class="client-name">Pratap K. Mishra</div>
				<span>Senior Software Engineer</span>
			</div>
		</div>
	</div>
	<div class="col-md-6 col-sm-6 col-xs-12" style="margin-bottom: 20px;">
		<div class="testimonial-content">
			<p>"Find a group of people who challenge and inspire you; spend a
				lot of time with them, and it will change your life."</p>
		</div>

		<div class="testimonial-client-info">

			<div class="testimonial-client client-thumb">
				<img
					src="<%=request.getContextPath()%>/resources/my_template/images/arun/Praksh_Panda.jpg"
					alt="Prakash Ranjan Panda">
			</div>

			<div class="client-text">
				<div class="client-name">P. R. Panda</div>
				<span>Software Engineer</span>
			</div>
		</div>
	</div>
</div>
