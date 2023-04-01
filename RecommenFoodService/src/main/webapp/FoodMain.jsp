<%@page
	import="org.eclipse.jdt.internal.compiler.ast.Annotation.AnnotationTargetAllowed"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.io.InputStream"%>
<%@page import="ikujo.model.MemberDTO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/yerimimg/logoimg.ico">
<link href="FoodMain.css" rel="stylesheet">
<link href="FoodMain2.css" rel="stylesheet">
<link href="FoodMain3.css" rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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

<!-- real search 코드 -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<!-- 스크롤업 -->
<style>
#scrollUp {
	position: absolute;
	z-index: 2147483647;
	top: 1545px;
}
</style>
</head>
<body>
	<%@ include file="./include.jsp"%>


	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area" style="background-image: url(img/메인5.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>음식 등록</h2>
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
							<li class="breadcrumb-item"><a href="#"></a>음식 등록</li>
							<!-- <li class="breadcrumb-item active" aria-current="page">Single
								Post Blog</li> -->
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->



	<!------ Include the above in your HEAD tag ---------->
	<%-- <form action="InsertFood.do" method="post">
		<%
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		session.setAttribute("id", info.getUserid());
		session.setAttribute("name", info.getUserNm());
		String foodNm = request.getParameter("food");
		%>
		<%
		if (foodNm != null) {
		%>
		음식명 : <input type="text" name="foodNm" value="<%=foodNm%>">
		<%
		} else {
		%>
		음식명 : <input type="text" name="foodNm">
		<%
		}
		%>
		<input type="submit" value="등록하기">
	</form>
	<a href="./SelectFood.jsp"><button>조회하기</button></a>
	<br> --%>


	<!-- real search 코드 -->
	<!-- <section class="login-block">
    <div class="container">
	<div class="row">
		<div class="col-md-4 login-sec" style="
    margin-bottom: 0px;
    margin-top: -50;
    border-top-width: 50px;
    padding-top: 10px;
    margin-left: 150px;
  ">
		    <h2 class="text-center">음 식 등 록</h2>
		    <div class="login-form">
  <div class="form-group">
    <label for="exampleInputEmail1" class="text-uppercase">날짜</label>
    <input type="date" class="form-control" name="f_date"> -->
	<!-- <input type="text" class="form-control" placeholder=""> -->

	<%
	info = (MemberDTO) session.getAttribute("info");
	session.setAttribute("id", info.getUserid());
	session.setAttribute("name", info.getUserNm());
	String foodNm = request.getParameter("food");
	%>
	<%
	if (foodNm != null) {
	%>

	<form action="InsertFood.do" method="post" onsubmit="return formSub();">
		<!-- real search 코드 -->
		<section class="login-block">
			<div class="container">
				<div class="row">
					<div class="col-md-4 login-sec"
						style="margin-bottom: 0px; margin-top: -50; border-top-width: 50px; padding-top: 10px; margin-left: 100px; left: 80px;">
						<h2 class="text-center">음 식 등 록</h2>
						<div class="login-form">
							<div class="form-group">
								<label for="exampleInputEmail1" class="text-uppercase">날짜</label>
								<input type="date" class="form-control" name="udate">
								<!-- <input type="text" class="form-control" placeholder=""> -->
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1" class="text-uppercase">음식
									이름</label>
								<!-- <input type="password" class="form-control" placeholder=""> -->
								<input type="text" name="foodNm" value="<%=foodNm%>"
									class="form-control" placeholder="음식명">
							</div>
							<div class="form-check">
								<!--     <label class="form-check-label">
	      <input type="checkbox" class="form-check-input">
	      <small>Remember Me</small>
	    </label> -->
								<button type="submit" class="btn btn-login float-right "
									style="border-right-width: 1px; margin-right: 45px; margin-top: 20px; padding-top: 0px;">등록</button>

							</div>
	</form>
	<%
	}
	%>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
	<script type="text/javascript">
	function formSub(){
		if($("input[name=udate]").val()!='' && $("input[name=foodNm]").val() != '')
		{
			return true;
	}
		else{
			if($("input[name=udate]").val()=='' && $("input[name=foodNm]").val() == ''){
				/* alert('음식이름과 날짜를 미입력했습니다') */	
				Swal.fire({
		  title: '음식이름과 날짜를 미입력했습니다',
		  icon: 'warning',
		  confirmButtonColor: '#3085d6',
		  confirmButtonText: '확인',
		})
			}
			else if($("input[name=udate]").val()==''){
				/* alert('날짜를 미입력했습니다') */
						Swal.fire({
		  title: '날짜를 미입력했습니다',
		  icon: 'warning',
		  confirmButtonColor: '#3085d6',
		  confirmButtonText: '확인',
		})
			}
			else{
				/* alert('음식이름을 미입력했습니다')	 */
								Swal.fire({
		  title: '음식이름을 미입력했습니다',
		  icon: 'warning',
		  confirmButtonColor: '#3085d6',
		  confirmButtonText: '확인',
		})
			}
			return false;
			}
		}
	</script>
	</div>
	<div class="copy-text" style="margin-bottom: 20px;"
		style=" margin-bottom: 20px; left: 70px;"/*가운데정렬*/
	>
		밥줘 영양줘 <i class="fa fa-heart"></i> by <a href="./SelectFood.jsp">음식
			조회</a>
	</div>
	</div>


	<!-- 이미지 -->

	<!-- <div class="col-md-8 banner-sec"> -->
	<div style="margin-left: 100px;">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators" style="margin-left: 160px;">
				<li data-target="#carouselExampleIndicators" data-slide-to="1"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="5"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="6"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="7"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="8"></li>
			</ol>


			<div class="carousel-inner" role="listbox">

				<div class="carousel-item active" style="margin-top: 100px;">
					<img class="d-block img-fluid" src="./img/foodmain/food1.jpg"
						width=360px height=450px alt="First slide"
						style="margin-left: 100px;">
					<div class="carousel-caption d-none d-md-block"></div>
				</div>


				<div class="carousel-item" style="margin-top: 100px;">
					<img class="d-block img-fluid" src="./img/foodmain/food2.jpg"
						width=360px height=450px alt="First slide"
						style="margin-left: 100px;">
					<div class="carousel-caption d-none d-md-block"></div>
				</div>


				<div class="carousel-item" style="margin-top: 100px;">
					<img class="d-block img-fluid" src="./img/foodmain/food3.jpg"
						width=360px height=450px alt="First slide"
						style="margin-left: 100px;">
					<div class="carousel-caption d-none d-md-block"></div>
				</div>


				<div class="carousel-item" style="margin-top: 100px;">
					<img class="d-block img-fluid" src="./img/foodmain/food4.jpg"
						width=360px height=450px alt="First slide"
						style="margin-left: 100px;">
					<div class="carousel-caption d-none d-md-block"></div>
				</div>


				<div class="carousel-item" style="margin-top: 100px;">
					<img class="d-block img-fluid" src="./img/foodmain/food5.jpg"
						width=360px height=450px alt="First slide"
						style="margin-left: 100px;">
					<div class="carousel-caption d-none d-md-block"></div>
				</div>


				<div class="carousel-item" style="margin-top: 100px;">
					<img class="d-block img-fluid" src="./img/foodmain/food6.jpg"
						width=360px height=450px alt="First slide"
						style="margin-left: 100px;">
					<div class="carousel-caption d-none d-md-block"></div>
				</div>


				<div class="carousel-item" style="margin-top: 100px;">
					<img class="d-block img-fluid" src="./img/foodmain/food7.jpg"
						width=360px height=450px alt="First slide"
						style="margin-left: 100px;">
					<div class="carousel-caption d-none d-md-block"></div>
				</div>


				<div class="carousel-item" style="margin-top: 100px;">
					<img class="d-block img-fluid" src="./img/foodmain/food8.jpg"
						width=360px height=450px alt="First slide"
						style="margin-left: 100px;">
					<div class="carousel-caption d-none d-md-block"></div>
				</div>






				<!-- 	    <div class="carousel-item">
      <img class="d-block img-fluid" src="./img/food2/jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <div class="banner-text">
            <h2>This is Heaven</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation</p>
        </div>	
    </div>
  </div>  -->

			</div>

		</div>
	</div>
	</div>
	</section>



	<%-- 원래 코드
 	<section id="tabs" class="project-tab">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<nav>
						<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
							<a class="nav-item nav-link active" id="nav-home-tab"
								data-toggle="tab" href="#nav-home" role="tab"
								aria-controls="nav-home" aria-selected="true">지난 음식 등록</a>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">
							<table class="table" cellspacing="0">
								<thead>
									<tr>
										<th>날짜</th>
										<th>음식</th>
										<th>조회 / 등록</th>
									</tr>
								</thead>
								<tbody>


									<tr>
										<td><input type="date"></td>
										<%
										info = (MemberDTO) session.getAttribute("info");
										session.setAttribute("id", info.getUserid());
										session.setAttribute("name", info.getUserNm());
										String foodNm = request.getParameter("food");
										%>
										<%
										if (foodNm != null) {
										%>
										<form action="InsertFood.do" method="post">
											<td><input type="text" placeholder="음식명" name="foodNm"
												value="<%=foodNm%>"></td>
											<td><input type="submit" value="등록하기" class="btn"></td>
										</form>
										<%
										}
										%>
										<!-- <td><input type="text" placeholder="음식명" name="foodNm"></td> -->
										<td>
										
										    <div class="container h-100">
										      <div class="d-flex justify-content-center h-100">
										        <div class="searchbar">
										          <input class="search_input" type="text" name="" placeholder="돋보기 버튼을 클릭">
										          <a href="SelectFood.jsp" class="search_icon" id="search"><i class="fas fa-search"></i></a>
										        </div>
										      </div>
										    </div>
													
										</td>

									</tr>

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div> --%>

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
							<!--  <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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
							<!--  <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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
							<!-- <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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
							<!-- <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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
							<!-- <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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
							<!--  <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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


	<!-- search 템플릿 -->
	<script>
		var i = 0;
		$(document)
				.ready(
						function() {
							$('#add_more')
									.on(
											'click',
											function() {
												var colorR = Math.floor((Math
														.random() * 256));
												var colorG = Math.floor((Math
														.random() * 256));
												var colorB = Math.floor((Math
														.random() * 256));
												i++;
												var html = '<div id="append_no_'+i+'" class="animated bounceInLeft">'
														+ '<div class="input-group mt-3">'
														+ '<div class="input-group-prepend">'
														+ '<span class="input-group-text br-15" style="color:rgb('+colorR+','+colorG+','+colorB+'">'
														+ '<i class="fas fa-user-graduate"></i></span>'
														+ '</div>'
														+ '<input type="text" placeholder="Student Name"  class="form-control"/>'
														+ '</div>'
														+ '<div class="input-group mt-3">'
														+ '<div class="input-group-prepend">'
														+ '<span class="input-group-text br-15" style="color:rgb('+colorR+','+colorG+','+colorB+'">'
														+ '<i class="fas fa-phone-square"></i></span>'
														+ '</div>'
														+ '<input type="text" placeholder="Student Phone" class="form-control"/>'
														+ '</div>'
														+ '<div class="input-group mt-3">'
														+ '<div class="input-group-prepend">'
														+ '<span class="input-group-text br-15" style="color:rgb('+colorR+','+colorG+','+colorB+'">'
														+ '<i class="fas fa-at"></i></span>'
														+ '</div>'
														+ '<input type="email" placeholder="Student Email" class="form-control"/>'
														+ '</div></div>';

												$('#dynamic_container').append(
														html);
												$('#remove_more').fadeIn(
														function() {
															$(this).show();
														});
											});

							$('#remove_more').on(
									'click',
									function() {

										$('#append_no_' + i).removeClass(
												'bounceInLeft').addClass(
												'bounceOutRight').fadeOut(
												function() {
													$(this).remove();
												});
										i--;
										if (i == 0) {
											$('#remove_more').fadeOut(
													function() {
														$(this).hide()
													});
											;
										}

									});
						});
	</script>

</body>
</html>