<%@page import="ikujo.model.FoodcateDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.FoodDAO"%>
<%@page import="ikujo.model.FoodcateDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Title -->
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/yerimimg/logoimg.ico">
<style type="text/css">
.tab-content{
text-align: center;
}
.table td, .table th{
text-align: center;
}
.table th{
color: #F15F5F;
}
.table tr th{
background-color: white;
}

.project-tab a {
    color:#F15F5F;
	background-color :#FFD8D8 ;
   /*  background-color: transparent ;
    border-color: transparent #F15F5F; */
    border-bottom: 3px solid !important;
    border-bottom-color : #F15F5F;
    font-size: 16px;
    font-weight: bold;
}

.project-tab .nav-link:hover {
    border: solid;
}
#foods td{/* td 안에 세로가운데정렬  */
vertical-align:middle;
}
/*여기부터  ************************************************************************  */
/* @import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
div,tr,th,td{
font-family: 'Black Han Sans', sans-serif;
} */
/*여기까지 구글웹폰트 스타일css  ************************************************************************ */
						
/* .keyword:active{
background-color : pink
animation-fill-mode:forwards;} */
/* .project-tab #tabs .nav-tabs .nav-item .nav-link.show , .nav-tabs .nav-link keyword.active{
	color: red;
    background-color: transparent;
    border-color: transparent transparent #F3F3F3;
    border-bottom: 3px solid !important;
    font-size: 16px;
    font-weight: bold;
} */
</style>
<!-- <script src="jquery-3.6.0.min.js"></script> -->
<!--여기부터 ************************************************************************ -->
<!-- <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet"> -->
<!--여기까지 구글 웹폰트 링크  ************************************************************************ -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
						<h2>음식</h2>
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
							<li class="breadcrumb-item"><a href="#"> 음식 카테고리 </a></li>
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
							<a class="nav-item nav-link keyword" id="rice_tab" data-toggle="tab" href="#rice" role="tab" 
							aria-controls="rice" aria-selected="true">밥류</a> 
							<a class="nav-item nav-link keyword" id="soup_tab" data-toggle="tab" href="#soup" role="tab"
							aria-controls="soup" aria-selected="false">국류</a> 
							<a class="nav-item nav-link keyword" id="noodle_tab" data-toggle="tab" href="#noodle" role="tab"
							aria-controls="noodle" aria-selected="false">면류</a> 
							<a class="nav-item nav-link keyword" id="bread_tab" data-toggle="tab" href="#bread" role="tab" aria-controls="bread"
							aria-selected="false">빵류</a> 
							<a class="nav-item nav-link keyword" id="meat_tab" data-toggle="tab" href="#meat" role="tab" aria-controls="meat"
							aria-selected="false">고기류</a> 
							<a class="nav-item nav-link keyword" id="fried_tab" data-toggle="tab" href="#fried" role="tab" aria-controls="fried"
							aria-selected="false">튀김류</a> 
							<a class="nav-item nav-link keyword" id="others_tab" data-toggle="tab" href="#others" role="tab"
							aria-controls="others" aria-selected="false">기타류</a>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="rice" role="tabpanel"
							aria-labelledby="rice_tab">
							<table class="table" cellspacing="0">
								<!--밥류 -->
								<thead>
									<tr>
										<th>음식 사진</th>
										<th>음식 이름</th>
										<th>칼로리</th>
										<th>탄수화물</th>
										<th>단백질</th>
										<th>지방</th>
									</tr>
								</thead>
								<tbody id="foods">

									<%
									String key = "밥류";
									ArrayList<FoodcateDTO> riceList = (ArrayList) new FoodcateDAO().selectCate(key);
									for (int i = 0; i < riceList.size(); i++) {
									%>
									<tr>
										<td><img src="file/<%=riceList.get(i).getImg() %>" width="200px" height="200px"></td>
										<td><%=riceList.get(i).getFoodnm()%></td>
										<td><%=riceList.get(i).getKcal()%>Kcal</td>
										<td><%=riceList.get(i).getCarbohydrate()%>g</td>
										<td><%=riceList.get(i).getProtein()%>g</td>
										<td><%=riceList.get(i).getFat()%>g</td>
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
	
	    <!-- ****** Instagram Area Start ****** -->
    <div class="instargram_area owl-carousel section_padding_100_0 clearfix" id="portfolio">

        <!-- Instagram Item -->
        <div class="instagram_gallery_item">
            <!-- Instagram Thumb -->
            <img src="img/instagram-img/1.jpg" alt="">
            <!-- Hover -->
            <div class="hover_overlay">
                <div class="yummy-table">
                    <div class="yummy-table-cell">
                        <div class="follow-me text-center">
                           <!--  <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> 이쿠조 </a> -->
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
                           <!--  <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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
                          <!--   <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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
	
	
	
	<script type="text/javascript">
		$('.keyword').on('click', function() {
			
			var keyword = $(this).text()
			console.log(keyword)
			// 클래스가 키워드인 친구를 클릭했을때 이너 텍스트로 키워드로 가져온다
			$.ajax({
				/* 어디로 보낼건지? */
				url : "FoodCate2",
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
				$("#foods").children().remove();
			for (var i = 0; i < key.length; i++) {
				$("#foods").append("<tr> </tr>");
		 		$("#foods tr").last().append("<td>" + "<img src= 'file/"+key[i].img+"' width=200px height=200px>" + "</td>");
		 		$("#foods tr").last().append("<td>" + key[i].foodnm + "</td>");
				$("#foods tr").last().append("<td>" + key[i].kcal + "Kcal</td>");
				$("#foods tr").last().append("<td>" + key[i].carbohydrate + "g</td>");
				$("#foods tr").last().append("<td>" + key[i].protein + "g</td>");
				$("#foods tr").last().append("<td>" + key[i].fat + "g</td>"); 
			}
		}
		
		

	     
	</script>
</body>
</html>