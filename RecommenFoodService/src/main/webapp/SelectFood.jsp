<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.FoodDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="style.css">

<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon2.ico">
<link href="SelectFood.css" rel="stylesheet">
<!-- html 코드 -->
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script> -->

<!-- html 코드 -->
<!-- <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->

<link href="FoodMain.css" rel="stylesheet">

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

<!-- 스크롤업 -->
<style>
#scrollUp {
	position: absolute;
	z-index: 2147483647;
	top: 1540px;
}
</style>

<!-- real html 코드 -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Blog Home - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />


</head>

<!-- css와 연결 -->
<link href="SelectFood2.css" rel="stylesheet">


<body>

	<%@ include file="./include.jsp"%>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>


<%String error = request.getParameter("error");
 if(error != null){%>
	 <script type="text/javascript">
	 Swal.fire({
		  title: '이전에 먹었던 메뉴를 먼저 등록해주세요',
		  text: "삭제하시면 다시 복구시킬 수 없습니다.",
		  icon: 'warning',
		  confirmButtonColor: '#3085d6',
		  confirmButtonText: '확인',
		})


	 /* alert('이전에 먹었던 메뉴를 먼저 등록해주세요')
	 text: "삭제하시면 다시 복구시킬 수 없습니다."  */
		
	 </script>
 <%}%>

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area" style="background-image: url(img/메인5.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>음식 조회</h2>
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
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home" aria-hidden="true"></i> 홈</a></li>
							<li class="breadcrumb-item"><a href="#"></a>음식 조회</li>
							<!-- <li class="breadcrumb-item active" aria-current="page">Single
								Post Blog</li> -->
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->


	<!-- *******real html 코드 ******* -->
	<!-- Responsive navbar-->
	<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#!">Start Bootstrap</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">Contact</a></li>
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">Blog</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        Page header with logo and tagline
        <header class="py-5 bg-light border-bottom mb-4">
            <div class="container">
                <div class="text-center my-5">
                    <h1 class="fw-bolder">Welcome to Blog Home!</h1>
                    <p class="lead mb-0">A Bootstrap 5 starter layout for your next blog homepage</p>
                </div>
            </div>
        </header> -->
	<!-- Page content-->
	<div class="container">
		<div class="row">
			<!-- Blog entries-->
			<div class="col-lg-8"
				style="padding-bottom: 50px; padding-top: 50px;">
				<!-- Featured blog post-->
				<div class="card mb-4">
					<a href="#!"> <!-- 이미지 넣는 부분 --> <!-- ****** Welcome Post Area Start ****** -->
						<section class="welcome-post-sliders owl-carousel">

							<!-- Single Slide -->
							<div class="welcome-single-slide">
								<!-- Post Thumb -->
								<img src="img/food-img/음식1.jpg" alt="">
								<!-- Overlay Text -->
								<div class="project_title">
									<div class="post-date-commnents d-flex">
										<!-- <a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a> -->
									</div>
									<a href="#">
										<h5>
											<!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street -->
										</h5>
									</a>
								</div>
							</div>
							<!-- Single Slide -->
							<div class="welcome-single-slide">
								<!-- Post Thumb -->
								<img src="img/food-img/음식2.jpg" alt="">
								<!-- Overlay Text -->
								<div class="project_title">
									<div class="post-date-commnents d-flex">
										<!-- <a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a> -->
									</div>
									<a href="#">
										<h5>
											<!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street -->
										</h5>
									</a>
								</div>
							</div>
							<!-- Single Slide -->
							<div class="welcome-single-slide">
								<!-- Post Thumb -->
								<img src="img/food-img/음식3.jpg" alt="">
								<!-- Overlay Text -->
								<div class="project_title">
									<div class="post-date-commnents d-flex">
										<!-- <a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a> -->
									</div>
									<a href="#">
										<h5>
											<!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street -->
										</h5>
									</a>
								</div>
							</div>
							<!-- Single Slide -->
							<div class="welcome-single-slide">
								<!-- Post Thumb -->
								<img src="img/food-img/음식4.jpg" alt="">
								<!-- Overlay Text -->
								<div class="project_title">
									<div class="post-date-commnents d-flex">
										<!-- <a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a> -->
									</div>
									<a href="#">
										<h5>
											<!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street -->
										</h5>
									</a>
								</div>
							</div>
							<!-- Single Slide -->
							<div class="welcome-single-slide">
								<!-- Post Thumb -->
								<img src="img/food-img/음식5.jpg" alt="">
								<!-- Overlay Text -->
								<div class="project_title">
									<div class="post-date-commnents d-flex">
										<!-- <a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a> -->
									</div>
									<a href="#">
										<h5>
											<!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street -->
										</h5>
									</a>
								</div>
							</div>
							<!-- Single Slide -->
							<div class="welcome-single-slide">
								<!-- Post Thumb -->
								<img src="img/food-img/음식6.jpg" alt="">
								<!-- Overlay Text -->
								<div class="project_title">
									<div class="post-date-commnents d-flex">
										<!-- <a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a> -->
									</div>
									<a href="#">
										<h5>
											<!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street -->
										</h5>
									</a>
								</div>
							</div>
							<!-- Single Slide -->
							<div class="welcome-single-slide">
								<!-- Post Thumb -->
								<img src="img/food-img/음식7.jpg" alt="">
								<!-- Overlay Text -->
								<div class="project_title">
									<div class="post-date-commnents d-flex">
										<!-- <a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a> -->
									</div>
									<a href="#">
										<h5>
											<!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street -->
										</h5>
									</a>
								</div>
							</div>
							<!-- Single Slide -->
							<div class="welcome-single-slide">
								<!-- Post Thumb -->
								<img src="img/food-img/음식8.jpg" alt="">
								<!-- Overlay Text -->
								<div class="project_title">
									<div class="post-date-commnents d-flex">
										<!-- <a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a> -->
									</div>
									<a href="#">
										<h5>
											<!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street -->
										</h5>
									</a>
								</div>
							</div>
							<!-- Single Slide -->
							<div class="welcome-single-slide">
								<!-- Post Thumb -->
								<img src="img/food-img/음식9.jpg" alt="">
								<!-- Overlay Text -->
								<div class="project_title">
									<div class="post-date-commnents d-flex">
										<!-- <a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a> -->
									</div>
									<a href="#">
										<h5>
											<!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street -->
										</h5>
									</a>
								</div>
							</div>
							<!-- Single Slide -->
							<div class="welcome-single-slide">
								<!-- Post Thumb -->
								<img src="img/food-img/음식10.jpg" alt="">
								<!-- Overlay Text -->
								<div class="project_title">
									<div class="post-date-commnents d-flex">
										<!-- <a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a> -->
									</div>
									<a href="#">
										<h5>
											<!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street -->
										</h5>
									</a>
								</div>
							</div>
							<!-- Single Slide -->
							<div class="welcome-single-slide">
								<!-- Post Thumb -->
								<img src="img/food-img/음식11.jpg" alt="">
								<!-- Overlay Text -->
								<div class="project_title">
									<div class="post-date-commnents d-flex">
										<!-- <a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a> -->
									</div>
									<a href="#">
										<h5>
											<!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street -->
										</h5>
									</a>
								</div>
							</div>
							<!-- Single Slide -->
							<div class="welcome-single-slide">
								<!-- Post Thumb -->
								<img src="img/food-img/음식12.jpg" alt="">
								<!-- Overlay Text -->
								<div class="project_title">
									<div class="post-date-commnents d-flex">
										<!-- <a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a> -->
									</div>
									<a href="#">
										<h5>
											<!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street -->
										</h5>
									</a>
								</div>
							</div>
							<!-- Single Slide -->
							<div class="welcome-single-slide">
								<!-- Post Thumb -->
								<img src="img/food-img/음식13.jpg" alt="">
								<!-- Overlay Text -->
								<div class="project_title">
									<div class="post-date-commnents d-flex">
										<!-- <a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a> -->
									</div>
									<a href="#">
										<h5>
											<!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street -->
										</h5>
									</a>
								</div>
							</div>
							<!-- Single Slide -->
							<div class="welcome-single-slide">
								<!-- Post Thumb -->
								<img src="img/food-img/음식14.jpg" alt="">
								<!-- Overlay Text -->
								<div class="project_title">
									<div class="post-date-commnents d-flex">
										<!-- <a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a> -->
									</div>
									<a href="#">
										<h5>
											<!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street -->
										</h5>
									</a>
								</div>
							</div>
							<!-- Single Slide -->
							<div class="welcome-single-slide">
								<!-- Post Thumb -->
								<img src="img/food-img/음식15.jpg" alt="">
								<!-- Overlay Text -->
								<div class="project_title">
									<div class="post-date-commnents d-flex">
										<!-- <a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a> -->
									</div>
									<a href="#">
										<h5>
											<!-- “I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street -->
										</h5>
									</a>
								</div>
							</div>
							<!-- Single Slide -->
							<!-- <div class="welcome-single-slide">
			Post Thumb
			<img src="img/food-img/음식16.jpg" alt="">
			Overlay Text
			<div class="project_title">
				<div class="post-date-commnents d-flex">
					<a href="#"> May 19, 2017
					</a> <a href="#"> 5 Comment
					</a>
				</div>
				<a href="#">
					<h5>
						“I’ve Come and I’m Gone”: A Tribute to Istanbul’s Street
					</h5>
				</a>
			</div>
		</div> -->


						</section> <!-- ****** Welcome Area End ****** --> <!-- <img class="card-img-top" src="https://dummyimage.com/850x350/dee2e6/6c757d.jpg" alt="..." /> --></a>
					<div class="card-body">
						<div class="small text-muted">
							<!-- 음식 조회 -->
						</div>
						<h2 class="card-title">음식 조회</h2>
						<p class="card-text">
							<!-- 먹었던 음식을 등록하세요. <br>  -->
							정확한 영양소 분석을 위해서 음식을 조회하고 정보를 등록해보세요. <br> 샐러드, 치킨, 국밥과 같이
							단어를 입력하고 음식을 조회하세요. <br> 카테고리를 선택하면 자동으로 입력창에 단어를 넣을 수 있습니다.
						</p>
						<!-- <a class="btn btn-primary" href="#!">Read more →</a> -->
					</div>
				</div>
				<!-- Nested row for non-featured blog posts
                    <div class="row">
                        <div class="col-lg-6">
                            Blog post
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">January 1, 2022</div>
                                    <h2 class="card-title h4">Post Title</h2>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla.</p>
                                    <a class="btn btn-primary" href="#!">Read more →</a>
                                </div>
                            </div>
                            Blog post
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">January 1, 2022</div>
                                    <h2 class="card-title h4">Post Title</h2>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla.</p>
                                    <a class="btn btn-primary" href="#!">Read more →</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            Blog post
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">January 1, 2022</div>
                                    <h2 class="card-title h4">Post Title</h2>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla.</p>
                                    <a class="btn btn-primary" href="#!">Read more →</a>
                                </div>
                            </div>
                            Blog post
                            <div class="card mb-4">
                                <a href="#!"><img class="card-img-top" src="https://dummyimage.com/700x350/dee2e6/6c757d.jpg" alt="..." /></a>
                                <div class="card-body">
                                    <div class="small text-muted">January 1, 2022</div>
                                    <h2 class="card-title h4">Post Title</h2>
                                    <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reiciendis aliquid atque, nulla? Quos cum ex quis soluta, a laboriosam.</p>
                                    <a class="btn btn-primary" href="#!">Read more →</a>
                                </div>
                            </div>
                        </div>
                    </div> -->
				<!-- Pagination-->
				<!-- <nav aria-label="Pagination">
                        <hr class="my-0" />
                        <ul class="pagination justify-content-center my-4">
                            <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1" aria-disabled="true">Newer</a></li>
                            <li class="page-item active" aria-current="page"><a class="page-link" href="#!">1</a></li>
                            <li class="page-item"><a class="page-link" href="#!">2</a></li>
                            <li class="page-item"><a class="page-link" href="#!">3</a></li>
                            <li class="page-item disabled"><a class="page-link" href="#!">...</a></li>
                            <li class="page-item"><a class="page-link" href="#!">15</a></li>
                            <li class="page-item"><a class="page-link" href="#!">Older</a></li>
                        </ul>
                    </nav> -->
			</div>
			<!-- Side widgets-->
			<div class="col-lg-4" style="padding-top: 50px;">
				<!-- Search widget-->
			<%-- 	<%
				String error1 = (String) session.getAttribute("error");
				String id = (String) session.getAttribute("id");
				if (error1.equals("1")) {
				%> --%>
			<!-- 	<script type="text/javascript">
				 alert('미입력 값이 있습니다')
				</script> -->

				<form action="SelectFood.do" method="post">
					<div class="card mb-4">
						<div class="card-header">Search</div>
						<div class="card-body">
							<div class="input-group">
								<input name="keyword" type="text" class="form-control"
									placeholder="food name" aria-label="Enter search term..."
									aria-describedby="button-search" />
								<!-- <input class="form-control" type="text" placeholder="Enter search term..." aria-label="Enter search term..." aria-describedby="button-search" /> -->
								<!-- <button class="btn btn-primary" id="button-search" type="button">Go!</button> -->
								<input type="submit" class="btn btn-primary" id="button-search"
									value="조회" style="margin-right: 50px; left: 70px; top: 20px;">
							</div>
						</div>
					</div>
				</form>
				<!-- Categories widget-->
				<div class="card mb-4">
					<div class="card-header">Categories</div>
					<div class="card-body">
						<div class="row">
							<div class="col-sm-6">
								<ul class="list-unstyled mb-0">
									<li><a href="#!" class="foodCategory">찌개</a></li>
									<li><a href="#!" class="foodCategory">샐러드</a></li>
									<li><a href="#!" class="foodCategory">스테이크</a></li>
								</ul>
							</div>
							<div class="col-sm-6">
								<ul class="list-unstyled mb-0">
									<li><a href="#!" class="foodCategory">치킨</a></li>
									<li><a href="#!" class="foodCategory">피자</a></li>
									<li><a href="#!" class="foodCategory">스파게티</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- Side widget-->
				<!--  <div class="card mb-4">
                        <div class="card-header">Side Widget</div>
                        <div class="card-body">You can put anything you want inside of these side widgets. They are easy to use, and feature the Bootstrap 5 card component!</div>
                    </div> -->
			</div>
		</div>
	</div>
	<!-- footer 자리 -->
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
<%-- 	<%
	}else if(error1==null){
	%> --%>
				
	<!-- html코드 -->
	<!-- <form action="SelectFood.do" method="post">
			<div class="container">
		
		<div class="row" style="margin-top:20px">
		    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
				<form role="form">
					<fieldset>
						<h2> S E A R C H</h2>
						<hr class="colorgraph">
						<div class="form-group">
		                    <h6> 예) 치킨, 샐러드, 파스타와 같이 입력해주세요</h6>
						</div>
						<div class="form-group">
		                    <input name="keyword" type="text" class="form-control input-lg" placeholder="food name" />
						</div>
						<span class="button-checkbox">
							<button type="button" class="btn" data-color="info">Remember Me</button>
		                    <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
							<a href="" class="btn btn-link pull-right">Forgot Password?</a>
						</span>
						<hr class="colorgraph">
						<div class="row">
							<div class="col-xs-6 col-sm-6 col-md-6">
		                        <input type="submit" class="btn btn-lg btn-success btn-block" value="S E A R C H" style="
									    margin-left: 0px;
									">
							</div>
							<div class="col-xs-6 col-sm-6 col-md-6">
								<a href="" class="btn btn-lg btn-primary btn-block">Register</a>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>

</div>
	</form> -->




	<!-- html 코드 -->
	<!-- 	<div class="container forget-password">
            <div class="row">
                <div class="col-md-12 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="text-center">
                                <img src="./img/음식 입력.jpg" border="0">
                                <h2 class="text-center">등록할 음식을 조회</h2>
                                <p>치킨, 샐러드, 파스타와 같이 입력하세요</p>
                                <form id="register-form" role="form" autocomplete="off" class="form" method="post"></form>
                                    <div class="form-group">
                                        <div class="input-group">
옵션                                      <select class="form-control" id="sel1">
                                                <option selected="true" disabled="disabled">Please Select Security Question</option>
                                                <option>Which is your favorite movie?</option>
                                                <option>What is your pet's name?</option>
                                                <option>What is the name of your village?</option>
                                            </select>
                                        </div>
                                    </div>
                                    
                                    <form action="SelectFood.do" method="post">
                                    <div class="form-group">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                            <input id="forgetAnswer" name="keyword" placeholder="음식명" class="form-control"  type="text">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input name="btnForget" class="btn btn-lg btn-primary btn-block btnForget" value="조회" type="submit">
                                    </div>
                                    

                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> -->

	<!-- 원래코드 	
	<form action="SelectFood.do" method="post">
	<h2>S E A R C H</h2>
		<div class="textForm">
			<input name="keyword" type="text" class="id" placeholder="음식명"> </input>
		</div>
		<div class="textForm">
			<h6>예)'치킨','샐러드','파스타' 와 같이 입력해주세요</h6>
		</div>
		<input type="submit" class="btn" value="S E A R C H" />
		<input type="text" name="keyword"><br> <input
			type="submit" value="조회하기"> 예)'치킨','샐러드','파스타' 와 같이 입력해주세요
	</form> -->



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
							<!-- <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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
							<!-- <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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
							<!--  <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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
							<!--  <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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
							<!-- <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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
							<!--  <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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
							<!-- <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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
							<!--   <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- ****** Our Creative Portfolio Area End ****** -->




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
	<footer class="py-5 bg-dark">
		<div class="container">
			<p class="m-0 text-center text-white">
				메뉴 추천 | 영양보충제 추천 <i class="fa fa-heart-o" aria-hidden="true"></i> by
				<a href="Main.jsp" target="_blank">밥줘 영양줘</a>
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

	<!-- html js -->
	<script>
		$(function() {
			$('.button-checkbox')
					.each(
							function() {
								var $widget = $(this), $button = $widget
										.find('button'), $checkbox = $widget
										.find('input:checkbox'), color = $button
										.data('color'), settings = {
									on : {
										icon : 'glyphicon glyphicon-check'
									},
									off : {
										icon : 'glyphicon glyphicon-unchecked'
									}
								};

								$button.on('click', function() {
									$checkbox.prop('checked', !$checkbox
											.is(':checked'));
									$checkbox.triggerHandler('change');
									updateDisplay();
								});

								$checkbox.on('change', function() {
									updateDisplay();
								});


								function updateDisplay() {
									var isChecked = $checkbox.is(':checked');
									// Set the button's state
									$button.data('state', (isChecked) ? "on"
											: "off");

									// Set the button's icon
									$button
											.find('.state-icon')
											.removeClass()
											.addClass(
													'state-icon '
															+ settings[$button
																	.data('state')].icon);

									// Update the button's color
									if (isChecked) {
										$button.removeClass('btn-default')
												.addClass(
														'btn-' + color
																+ ' active');
									} else {
										$button.removeClass(
												'btn-' + color + ' active')
												.addClass('btn-default');
									}
								}
								function init() {
									updateDisplay();
									// Inject the icon if applicable
									if ($button.find('.state-icon').length == 0) {
										$button.prepend('<i class="state-icon '
												+ settings[$button
														.data('state')].icon
												+ '"></i> ');
									}
								}
								init();
							});
		});

		$('.foodCategory').on('click', function() {
			var keywords = $(this).text()
			console.log(keywords)
			$('input[name=keyword]').attr('value', keywords)
		})
	</script>
	
</body>
</html>