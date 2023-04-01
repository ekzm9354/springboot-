<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.FoodDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon2.ico">
<link href="FoodMain.css" rel="stylesheet">
<link href="SelectFoodResult.css" rel="stylesheet">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- 상품 배열 -->
<link rel="stylesheet" href="shopcss.css">
<link href="https://fonts.googleapis.com/earlyaccess/notosanskr.css"
	rel="stylesheet">
	
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
		style="background-image: url(img/메인5.jpg);">
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
							<li class="breadcrumb-item"><a href="#"></a>음식 조회</li>
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


	<form action="./FoodMain.jsp">
		<!-- 상품 배열 -->
		<%
		ArrayList<String> list = (ArrayList) session.getAttribute("foodInfo");
		ArrayList<String> img = (ArrayList) session.getAttribute("foodImg");
		%>
		<div class="products">
			<h3>
				<!-- 사용자가 입력한 input 뜨게하기 -->
			</h3>

			<%
			for (int i = 0; i < list.size(); i++) {
			%>

			<div class="product-list">
				<a class="product"> <img
					src="file/<%=img.get(i)%>"
					width="225" height=225> <!-- 음식 이미지 -->
					<div class="product-name">
						<%=list.get(i) %>
					</div>
					<div class="product-price">
						<button type="submit" name="food" class="btn"
							value="<%=list.get(i)%>">선택</button>
					</div> <%
 }
 %>

				</a>
				</div>
	</form>

	<div class="clearfix"></div>
	

	<div class="footer">
		<a href="http://faceboo.com"> <!--                
		 <img src="https://bakey-api.codeit.kr/files/629/images/facebook.png" height="20">
            </a>
            <a href="http://faceboo.com">
                <img src="https://bakey-api.codeit.kr/files/629/images/instagram.png" height="20">
            </a>
            <a href="http://faceboo.com">
                <img src="https://bakey-api.codeit.kr/files/629/images/twitter.png" height="20">
            </a> -->
	</div>
</div>
	<%-- 	<form action="./FoodMain.jsp">
		<!------ Include the above in your HEAD tag ---------->
		<%
		ArrayList<String> list = (ArrayList) session.getAttribute("foodInfo");
		%>
		<section id="tabs" class="project-tab">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="tab-content" id="nav-tabContent">
							<div class="tab-pane fade show active" id="nav-home"
								role="tabpanel" aria-labelledby="nav-home-tab">
								<table class="table" cellspacing="0">
									<thead>
										<tr>
											<th>음식</th>
											<th>선택하기</th>

										</tr>
									</thead>
									<tbody>

										<%
										for (int i = 0; i < list.size(); i++) {
										%>
										<tr>
											<td><%=list.get(i)%></td>
											<td><button type="submit" name="food" class="btn"
													value="<%=list.get(i)%>">선택하기</button></td>
										</tr>
										<%
										}
										%>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</form> --%>
	<%-- 
	<%
	ArrayList<String> list = (ArrayList) session.getAttribute("foodInfo");
	%>
	<form action="./InsertFood.jsp" method="get">
		<table>
			<%
			for (int i = 0; i < list.size(); i++) {
			%>
			<tr>
				<td><%=list.get(i)%></td>
				<td><button type="submit" name="food" value="<%=list.get(i)%>">선택하기</button></td>
			</tr>
			<%
			}
			%>
		</table>
	</form> --%>

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
	<!-- <script src="js/others/plugins.js"></script> -->
	<!-- Active JS -->
	<!-- <script src="js/active.js"></script> -->


</body>
</html>