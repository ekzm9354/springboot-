<%@page import="ikujo.model.DessertDTO"%>
<%@page import="ikujo.model.DessertDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/core-img/favicon2.ico">
<style type="text/css">
.tab-content {
	text-align: center;
}

.table td, .table th {
	text-align: center;
}
.table th{
color:#F15F5F}

.project-tab a {
    color:#F15F5F;
    background-color :#FFD8D8 ;
	/* border-color: transparent red; */
	border-bottom: 3px solid !important;
	font-size: 16px;
	font-weight: bold;
}
.table tr th{
background-color: white;
}

.project-tab .nav-link:hover {
	border: solid;
}
#dessert td{/* td 안에 세로가운데정렬  */
vertical-align:middle;
}

</style>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
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
	<div class="breadcumb-area" style="background-image: url(img/메인5.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>디저트</h2>
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
							<li class="breadcrumb-item"><a href="#"> 디저트 </a></li>
							<!-- <li class="breadcrumb-item active" aria-current="page">Single
								Post Blog</li> -->
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<!-- ****** Breadcumb Area End ****** -->
	<section id="tabs" class="project-tab">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<nav>
						<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
							<a class="nav-item nav-link keyword" id="nav-home-tab"
								data-toggle="tab" href="#nav-home" role="tab"
								aria-controls="nav-home" aria-selected="true">과일류</a> <a
								class="nav-item nav-link keyword" id="nav-profile-tab"
								data-toggle="tab" href="#nav-profile" role="tab"
								aria-controls="nav-profile" aria-selected="false">스무디류</a> <a
								class="nav-item nav-link keyword" id="nav-contact-tab"
								data-toggle="tab" href="#nav-contact" role="tab"
								aria-controls="nav-contact" aria-selected="false">우유.유제품류</a> <a
								class="nav-item nav-link keyword" id="nav-contact-tab"
								data-toggle="tab" href="#nav-contact" role="tab"
								aria-controls="nav-contact" aria-selected="false">주스라떼류</a> <a
								class="nav-item nav-link keyword" id="nav-contact-tab"
								data-toggle="tab" href="#nav-contact" role="tab"
								aria-controls="nav-contact" aria-selected="false">차류</a> <a
								class="nav-item nav-link keyword" id="nav-contact-tab"
								data-toggle="tab" href="#nav-contact" role="tab"
								aria-controls="nav-contact" aria-selected="false">커피류</a> <a
								class="nav-item nav-link keyword" id="nav-contact-tab"
								data-toggle="tab" href="#nav-contact" role="tab"
								aria-controls="nav-contact" aria-selected="false">탄산음료류</a>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">
							<table class="table" cellspacing="0">
								<thead>
									<tr>
										<th>디저트 사진</th>
										<th>디저트 이름</th>
									</tr>
								</thead>
								<tbody id="dessert">
									<%
									String keyword = "과일류";
									ArrayList<DessertDTO> dList = (ArrayList) new DessertDAO().showD(keyword);

									for (int i = 0; i < dList.size(); i++) {
									%>
									<tr>
										<td><img src="dfile/<%=dList.get(i).getImg()%>"
											width="200px" height="200px"></td>
										<td><%=dList.get(i).getDname()%></td>
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
		</div>
	</section>


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
	<!--여기까지 하단 사진 맨위스크롤,, -->


	<script type="text/javascript">
		$('.keyword').on('click', function() {

			var keyword = $(this).text()
			console.log(keyword)
			// 클래스가 키워드인 친구를 클릭했을때 이너 텍스트로 키워드로 가져온다
			$.ajax({
				/* 어디로 보낼건지? */
				url : "DessertAjax",
				/* 어떤 데이터를 보낼 것인지? */
				data : {
					keyword : keyword
				},
				/* 데이터를 어떤 형태로 받아올 것인지 */
				dataType : "json",
				/* 성공 시 */
				success : function(key) {
					console.log(key)
					makeTable(key)
				},
				/* 실패 시 */
				error : function(e) {
					alert('실패');
					console.log(e);
				}

			})

		});

		/*	$(this).addClass('active');  */
		function makeTable(key) {
			$("#dessert").children().remove();
			for (var i = 0; i < key.length; i++) {
				console.log("g")
				$("#dessert").append("<tr> </tr>");
				$("#dessert tr")
						.last()
						.append(
								"<td>"
										+ "<img src= 'dfile/"+key[i].img+"' width=200px height=200px>"
										+ "</td>");
				$("#dessert tr").last().append("<td>" + key[i].dname + "</td>");

			}
		}
	</script>

</body>
</html>