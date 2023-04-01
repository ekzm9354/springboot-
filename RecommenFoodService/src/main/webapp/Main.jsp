<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="ikujo.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>밥줘 영양줘</title>



<!-- Favicon -->
<link rel="icon" href="img/yerimimg/logoimg.ico">

<!-- Core Stylesheet -->
<link href="style.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="css/responsive/responsive.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- <script language="javascript">
  function showNutients() { window.open("MainNtrients.jsp", "showNutients", "width=400, height=300, left=100, top=50"); }
  </script>
 -->

<!-- 폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Dongle:wght@400;700&display=swap"
	rel="stylesheet">

<!-- 폰트 스타일 적용 -->
<style>
* {
	font-family: 'Dongle', sans-serif;
}

.kimch {
	
}
.kimch2{
height: 300px;
width:50%;
margin-left:25%;
margin-right: 25%;
}
.a1{
float:left;
width:33.3%;
height: 300px;
}
.a2{
float:left;
width:35.3%;
height: 300px;
}
.a3{
float:left;
width:31.3%;
height: 300px;
}
</style>

<!-- 스크롤업 -->
<style>
#scrollUp {
	position: absolute;
	z-index: 2147483647;
	top: 4400px;
}
</style>

</head>

<link href="Main.css" rel="stylesheet">

<body>

	<%@ include file="./include.jsp"%>
	<%
	System.out.print(info);
	%>

	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area" style="background-image: url(img/메인5.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center"></div>
				</div>
			</div>
		</div>
	</div>

	<div style="padding: 20px"></div>

	<!-- 	<div class="breadcumb-nav">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item"><a href="#"><i
									class="fa fa-home" aria-hidden="true"></i> 홈</a></li>
							<li class="breadcrumb-item"><a href="#"></a></li>
							<li class="breadcrumb-item active" aria-current="page">Single
								Post Blog</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div> -->
	<!-- ****** Breadcumb Area End ****** -->

	<!-- ****** Welcome Post Area Start ****** -->





	<!-- 검색창  -->

	<p class="kimch" style="text-align: center; font-size: 100px">내 몸은
		내가 지킨다...</p>
	<img width="900px"
		src="https://health.chosun.com/site/data/img_dir/2022/03/03/2022030302148_0.jpg">
	<br>
	<br>
	<br>

	<div class=kimch2 style="text-align: center;">
		<div class="a1">

			<h3>step 1</h3>
			<img width="70px"
				src="https://st.depositphotos.com/1010146/4609/v/600/depositphotos_46094115-stock-illustration-analytics-icon.jpg">
			<p style="font-size: 40px">맞춤형 메뉴 추천</p>
			<p style="font-size: 30px">개인의 영양소를 고려한 메뉴 추천!</p>
		</div>
		<div class="a2">
			<h3>step 2</h3>
			<img width="70px"
				src="https://thumbs.dreamstime.com/b/nutritional-supplements-icon-outline-style-nutritional-supplements-icon-outline-nutritional-supplements-vector-icon-web-design-182122775.jpg
		">
			<p style="font-size: 40px">영양보충제 추천</p>
			<p style="font-size: 30px">부족한 영양소는 영양보충제를 통해!</p>
		</div>
		<div class="a3">
			<h3>step 3</h3>
			<img width="70px"
				src="data:image/png;base64,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">
			<p style="font-size: 40px">채팅서비스</p>
			<p style="font-size: 30px">서로의 입맛을 공유해보세요!</p>
		</div>
	</div>

	<br>
	<img width="900px"
		src="https://m.dmall.co.kr/magazine/mob/v03/img1.png">

	<p style="text-align: center; font-size: 50px">
		당신에게 부족한 영양소를<br>알고리즘을 통해 추천합니다.
	</p>




	
	<!-- <div style="text-align: center; background-color: #add8e6">
		<section>
			<p style="text-align: center; font-size: 120px">
				건강한 식습관 <br> 건강한 생활
			</p>
		</section>
	</div>

 -->




	<!-- ****** Welcome Area End ****** -->

	<!-- ****** Categories Area Start ****** -->
	<section class="categories_area clearfix" id="about">
		<div class="container">
			<div class="row">
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single_catagory wow fadeInUp" data-wow-delay=".3s">
						<img src="./img/음식.jpg" alt="">
						<div class="catagory-title">
							<a id="food" href="#">
								<h5 id="foodtext">음식</h5>
							</a>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single_catagory wow fadeInUp" data-wow-delay=".6s">
						<img src="./img/디저트.jpg" alt="">
						<div class="catagory-title">
							<a id="dessert" href="#">
								<h5 id="desserttext">디저트</h5>
							</a>
						</div>
					</div>
				</div>
				<div class="col-12 col-md-6 col-lg-4">
					<div class="single_catagory wow fadeInUp" data-wow-delay=".9s">
						<img src="./img/영양보충제.jpg" alt="">
						<div class="catagory-title">
							<a id="nutrients" href="#">
								<h5 id="nutrientstext">영양 보충제</h5>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div id="show"></div>
	<!-- ****** Categories Area End ****** -->


	<script type="text/javascript">
		document.querySelector('#nutrients').addEventListener('click',
				function() {
					if ($('#nutrientstext').text() == '영양 보충제') {
						$('#nutrientstext').text('닫기')
						showNutrients()
					} else {
						$('#nutrientstext').text('영양 보충제')
						$("#show").empty()
					}
				})

		function showNutrients() {
			$("#show").innerHtml
			$.ajax({
				type : "GET",
				url : "./MainNtrients.jsp",
				dataType : "html",
				error : function() {
					alert("통신실패!!!!");
				},
				success : function(Parse_data) {
					$("#show").append(Parse_data); //div에 받아온 값을 넣는다.
				}

			});
		}

		/*------------------------음식--------------------------------------------------  */

		document.querySelector('#food').addEventListener('click', function() {
			if ($('#foodtext').text() == '음식') {
				$('#foodtext').text('닫기')
				showFoods()
			} else {
				$('#foodtext').text('음식')
				$("#show").empty()
			}
		})

		function showFoods() {
			$("#show").innerHtml
			$.ajax({
				type : "GET",
				url : "./MainFood.jsp",
				dataType : "html",
				error : function() {
					alert("통신실패!!!!");
				},
				success : function(Parse_data) {
					$("#show").append(Parse_data); //div에 받아온 값을 넣는다.
				}

			});
		}

		/*------------------------간식--------------------------------------------------  */
		document.querySelector('#dessert').addEventListener('click',
				function() {
					if ($('#desserttext').text() == '디저트') {
						$('#desserttext').text('닫기')
						showDessert()
					} else {
						$('#desserttext').text('디저트')
						$("#show").empty()
					}
				})

		function showDessert() {
			$("#show").innerHtml
			$.ajax({
				type : "GET",
				url : "./MainDessert.jsp",
				dataType : "html",
				error : function() {
					alert("통신실패!!!!");
				},
				success : function(Parse_data) {
					$("#show").append(Parse_data); //div에 받아온 값을 넣는다.
				}

			});
		}
	</script>


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
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
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
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
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
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
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
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
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
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
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
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
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
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
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
							<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i>
								Follow me</a>
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
            <div class="container"><p class="m-0 text-center text-white">
            	메뉴 추천 | 영양보충제 추천 <i class="fa fa-heart-o" aria-hidden="true"></i>
						by <a href="Main.jsp" target="_blank">밥줘 영양줘</a>
            </p></div>
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
</body>
</html>