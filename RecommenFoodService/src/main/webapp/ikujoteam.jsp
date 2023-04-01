<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,600,400italic,700' rel='stylesheet' type='text/css'>
<link href="https://fonts.googleapis.com/css?family=Sacramento" rel="stylesheet">
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/yerimimg/logoimg.ico">
<style type="text/css">
.project-tab{
margin-left:auto; 
margin-right:auto;
}

</style>
<!-- Animate.css -->
	<link rel="stylesheet" href="css/yerim/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/yerim/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/yerim/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/yerim/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/yerim/owl.carousel.min.css">
	<link rel="stylesheet" href="css/yerim/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/yerim/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>

 <!-- 폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dongle:wght@700&display=swap" rel="stylesheet">

<!-- 폰트 스타일 적용 -->
<style>
	*{
		font-family: 'Dongle', sans-serif;
	}
</style>	


</head>
<body>
<%@ include file="./include.jsp"%>

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		style="background-image: url(img/메인5.jpg);"> <!--여기 사진 변경하기   -->
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>만든이</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="breadcumb-nav">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="./Main.jsp"><i
									class="fa fa-home" aria-hidden="true"></i> 홈</a></li>
							<li class="breadcrumb-item"><a href="ikujoteam.jsp"> 만든이 </a></li>
							<!-- <li class="breadcrumb-item active" aria-current="page">Single
								Post Blog</li> -->
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->
	
	<!-- 여기부터는 만든사람 사진 , 이름 -->
<!-- 
	<section id="tabs" class="project-tab">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div
						style="width: 200px; height: 150px; border: 1px solid red; float: left; margin-right: 10px;">
						첫번째 영역: 왼쪽에 위치시킴 => float:left 오른쪽에 바깥여백을 줌 => margin-right:10px;
						여기에 그림이나 글자 또는 광고 등을 넣음</div>
					<div
						style="width: 200px; height: 150px; border: 1px solid green; float: left;">
						두번째 영역: 첫번째 영역 옆에 나란히 붙임 => float:left 여기에 그림이나 글자 또는 광고 등을 넣음</div>
						

				</div>
			</div>
		</div>
	</section>
 -->

	<section id="tabs" class="project-tab">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-12 col-md-offset-0">
						<ul class="timeline animate-box">
							<li class="animate-box">
								<div class="timeline-badge"
									style="background-image: url(img/yerimimg/권도형.jpg);"></div>
								<!--여기에 사진  -->
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h3 class="timeline-title">김수민</h3>
										<!-- 	<span class="date">December 25, 2015</span> -->
									</div>
									<div class="timeline-body">
										<p>
											email:ekzm9354@gmail.com<br> 역할:팀장님<br> 맡은부분:Back&Front<br> 별칭: 권도형<br>
										</p>
									</div>
								</div>
							</li>
							<li class="timeline-inverted animate-box">
								<div class="timeline-badge"
									style="background-image: url(img/yerimimg/다운로드.jfif);"></div>
								<!--여기에 사진  -->
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h3 class="timeline-title">고준영</h3>
										<!-- <span class="date">December 28, 2015</span> -->
									</div>
									<div class="timeline-body">
										<p>
											email:gva031033@gmail.com<br> 역할:팀원<br> 맡은부분:Front<br> 별칭:잼민이<br>
										</p>
									</div>
								</div>
							</li>
							<li class="animate-box">
								<div class="timeline-badge"
									style="background-image: url(img/yerimimg/리타.jfif);"></div>
								<!--여기에 사진  -->
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h3 class="timeline-title">김수지</h3>
										<!-- <span class="date">January 1, 2016</span> -->
									</div>
									<div class="timeline-body">
										<p>
											email:suji04000809@gmail.com<br> 역할:중재 담당<br> 맡은부분:Front<br> 별칭: 리타<br>
										</p>
									</div>
								</div>
							</li>

							<li class="timeline-inverted animate-box">
								<div class="timeline-badge"
									style="background-image: url(img/yerimimg/ggz.jpg);"></div>
								<!--여기에 사진  -->
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h3 class="timeline-title">남예림</h3>
										<!-- <span class="date">December 28, 2015</span> -->
									</div>
									<div class="timeline-body">
										<p>
											email:yeah.rrim@gmail.com<br> 역할:팀원<br> 맡은부분:Front<br> 별칭:옒<br>
										</p>
									</div>
								</div>
							</li>

							<li class="animate-box">
								<div class="timeline-badge"
									style="background-image: url(img/yerimimg/총사령관.jpeg);"></div>
								<!--여기에 사진  -->
								<div class="timeline-panel">
									<div class="timeline-heading">
										<h3 class="timeline-title">엄태균</h3>
										<!-- <span class="date">January 1, 2016</span> -->
									</div>
									<div class="timeline-body">
										<p>
											email:qopxc1103@gmail.com<br> 역할:팀원<br> 맡은부분:Back&Front<br> 별칭: 총사령관<br>
										</p>
									</div>
								</div>
							</li>


						</ul>
					</div>
				</div>
			</div>
		</div>










		<!-- 여기까지는 만든사람 사진 , 이름 -->








		<div style="margin: 100px 0px 100px 0px"></div>

		<!--여기부터 하단 사진 맨위스크롤,, -->
		<!-- ****** Instagram Area Start ****** -->
		<div
			class="instargram_area owl-carousel section_padding_100_0 clearfix"
			id="portfolio">

			<!-- Instagram Item -->
			<div class="instagram_gallery_item">
				<!-- Instagram Thumb -->
				<img src="img/instagram-img/1.jpg" alt="">
				<!-- Hover -->
				<div class="hover_overlay">
					<div class="yummy-table">
						<div class="yummy-table-cell">
							<div class="follow-me text-center">
								<!-- <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
									Follow me</a> -->
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Instagram Item -->
			<div class="instagram_gallery_item">
				<!-- Instagram Thumb -->
				<img src="img/instagram-img/2.jpg" alt="">
				<!-- Hover -->
				<div class="hover_overlay">
					<div class="yummy-table">
						<div class="yummy-table-cell">
							<div class="follow-me text-center">
								<!-- <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
									Follow me</a> -->
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Instagram Item -->
			<div class="instagram_gallery_item">
				<!-- Instagram Thumb -->
				<img src="img/instagram-img/3.jpg" alt="">
				<!-- Hover -->
				<div class="hover_overlay">
					<div class="yummy-table">
						<div class="yummy-table-cell">
							<div class="follow-me text-center">
								<!-- <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
									Follow me</a> -->
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Instagram Item -->
			<div class="instagram_gallery_item">
				<!-- Instagram Thumb -->
				<img src="img/instagram-img/4.jpg" alt="">
				<!-- Hover -->
				<div class="hover_overlay">
					<div class="yummy-table">
						<div class="yummy-table-cell">
							<div class="follow-me text-center">
								<!-- <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
									Follow me</a> -->
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Instagram Item -->
			<div class="instagram_gallery_item">
				<!-- Instagram Thumb -->
				<img src="img/instagram-img/5.jpg" alt="">
				<!-- Hover -->
				<div class="hover_overlay">
					<div class="yummy-table">
						<div class="yummy-table-cell">
							<div class="follow-me text-center">
								<!-- <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
									Follow me</a> -->
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Instagram Item -->
			<div class="instagram_gallery_item">
				<!-- Instagram Thumb -->
				<img src="img/instagram-img/6.jpg" alt="">
				<!-- Hover -->
				<div class="hover_overlay">
					<div class="yummy-table">
						<div class="yummy-table-cell">
							<div class="follow-me text-center">
								<!-- <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
									Follow me</a> -->
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Instagram Item -->
			<div class="instagram_gallery_item">
				<!-- Instagram Thumb -->
				<img src="img/instagram-img/1.jpg" alt="">
				<!-- Hover -->
				<div class="hover_overlay">
					<div class="yummy-table">
						<div class="yummy-table-cell">
							<div class="follow-me text-center">
								<!-- <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
									Follow me</a> -->
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Instagram Item -->
			<div class="instagram_gallery_item">
				<!-- Instagram Thumb -->
				<img src="img/instagram-img/2.jpg" alt="">
				<!-- Hover -->
				<div class="hover_overlay">
					<div class="yummy-table">
						<div class="yummy-table-cell">
							<div class="follow-me text-center">
								<!-- <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
									Follow me</a> -->
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
		<!-- ****** Our Creative Portfolio Area End ****** -->



 <!-- Footer-->
	<div class="container">
		<div class="row">
			<div class="col-12">
				<!-- Copywrite Text -->
				<div class="copy_right_text text-center">
					<p>
<!-- 						메뉴 추천 | 영양보충제 추천 <i class="fa fa-heart-o" aria-hidden="true"></i>
						by <a href="Main.jsp" target="_blank">밥줘 영양줘</a> -->
					</p>
				</div>
			</div>
		</div>
	</div>
    
     <!-- Footer-->
		<footer class="py-5 bg-dark" style="padding-top: 48px!important; padding-bottom: 48px!important;">
			<div class="container">
				<p class="m-0 text-center text-white">
					메뉴 추천 | 영양보충제 추천 <i class="fa fa-heart-o" aria-hidden="true"></i>
					by <a href="Main.jsp" target="_blank">밥줘 영양줘</a>
				</p>
			</div>
		</footer>



		<!-- ****** Footer Menu Area End ****** -->

		<!-- Jquery-2.2.4 js -->
		<script src="js/jquery/jquery-2.2.4.min.js"></script>
		<!-- Popper js -->
		<script src="js/bootstrap/popper.min.js"></script>
		<!-- Bootstrap-4 js -->
		<script src="js/bootstrap/bootstrap.min.js"></script>
		<!-- All Plugins JS -->
		<script src="js/others/plugins.js"></script>
		<!-- Active JS -->
		<script src="js/active.js"></script>
		<!--여기까지 하단 사진 맨위스크롤,, -->

		<!-- jQuery -->
		<script src="js/jquery.min.js"></script>
		<!-- jQuery Easing -->
		<script src="js/jquery.easing.1.3.js"></script>
		<!-- Bootstrap -->
		<script src="js/bootstrap.min.js"></script>
		<!-- Waypoints -->
		<script src="js/jquery.waypoints.min.js"></script>
		<!-- Carousel -->
		<script src="js/owl.carousel.min.js"></script>
		<!-- countTo -->
		<script src="js/jquery.countTo.js"></script>

		<!-- Stellar -->
		<script src="js/jquery.stellar.min.js"></script>
		<!-- Magnific Popup -->
		<script src="js/jquery.magnific-popup.min.js"></script>
		<script src="js/magnific-popup-options.js"></script>

		<!-- // <script src="https://cdnjs.cloudflare.com/ajax/libs/prism/0.0.1/prism.min.js"></script> -->
		<script src="js/simplyCountdown.js"></script>
		<!-- Main -->
		<script src="js/main.js"></script>

		<script>
    var d = new Date(new Date().getTime() + 200 * 120 * 120 * 2000);

    // default example
    simplyCountdown('.simply-countdown-one', {
        year: d.getFullYear(),
        month: d.getMonth() + 1,
        day: d.getDate()
    });

    //jQuery example
    $('#simply-countdown-losange').simplyCountdown({
        year: d.getFullYear(),
        month: d.getMonth() + 1,
        day: d.getDate(),
        enableUtc: false
    });
</script>
</body>
</html>