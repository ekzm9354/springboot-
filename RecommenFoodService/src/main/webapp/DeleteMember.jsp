<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon2.ico">
<title>Login 07</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet" href="css/style.css">
<!-- 폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Dongle:wght@700&display=swap"
	rel="stylesheet">

<!-- 폰트 스타일 적용 -->
<style>
* {
	font-family: 'Dongle', sans-serif;
}
</style>
</head>

<link href="Login.css" rel="stylesheet">

<body>
	<form action="DeleteMember.do" method="POST" class="joinForm">
		<section class="ftco-section">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-md-6 text-center mb-5">
						<h2 class="heading-section">회 원 탈 퇴</h2>
					</div>
				</div>
				<div class="row justify-content-center">
					<div class="col-md-12 col-lg-10">
						<div class="wrap d-md-flex">
							<div
								class="text-wrap p-4 p-lg-5 text-center d-flex align-items-center order-md-last">
								<!-- 사진넣기 -->
								<img src="./img/logintomato.jpg" width="180" height="200">
								<!-- 								<div class="text w-100">
									<h2>글씨 가능</h2>
									<p>글씨 가능</p>
									<a href="#" class="btn btn-white btn-outline-white">Sign Up</a>
								</div> -->
							</div>
							<div class="login-wrap p-4 p-lg-5">
								<div class="d-flex">
									<div class="w-100">
										<h3 class="mb-4"></h3>
									</div>
									<!-- 소셜미디어		
									<div class="w-100">
										<p class="social-media d-flex justify-content-end">
											<a href="#"
												class="social-icon d-flex align-items-center justify-content-center"><span
												class="fa fa-facebook"></span></a> <a href="#"
												class="social-icon d-flex align-items-center justify-content-center"><span
												class="fa fa-twitter"></span></a>
										</p>
									</div> -->
								</div>

								<div class="form-group mb-3"
									style="padding-top: 0px; padding-bottom: 20px;">
									<label class="label" for="name"></label> 한번 탈퇴하시면 계정을 되돌릴 수
									없습니다 <br> 그래도 계정을 탈퇴하시겠습니까?
								</div>

								<!-- 									<div class="form-group mb-3">
										<img src="./img/버거로고.jpg">
									</div> -->

								<div class="form-group">
									<button type="submit"
										class="form-control btn btn-primary submit px-3">네</button>
								</div>
								<!-- <div class="form-group d-md-flex">
										<div class="w-50 text-left">
											<label class="checkbox-wrap checkbox-primary mb-0">Remember
												Me <input type="checkbox" checked> <span
												class="checkmark"></span>
											</label>
										</div>
										<div class="w-50 text-md-right">
											<a href="#">Forgot Password</a>
										</div> -->
							</div>
						</div>
					</div>
				</div>
			</div>

		</section>
	</form>

	<script src="js/jquery.min.js"></script>
	<script src="js/popper.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>

	<!-- 		<h2>회원탈퇴를 하시겠습니까?</h2>
		<input type="submit" class="btn" value="D E L T E" /> -->
	</form>
</body>
</html>