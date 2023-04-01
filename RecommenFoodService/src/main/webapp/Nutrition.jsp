
<%@page import="ikujo.model.NutrientsDAO"%>
<%@page import="ikujo.model.NutrientsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/yerimimg/logoimg.ico">

<style type="text/css">

/* .project-tab {
	padding: 10%;
	margin-top: -8%;
}

.project-tab #tabs {
	background: #007b5e;
	color: #eee;
}

.project-tab #tabs h6.section-title {
	color: #eee;
}

.project-tab #tabs .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active
	{
	color: #0062cc;
	background-color: transparent;
	border-color: transparent transparent #f3f3f3;
	border-bottom: 3px solid !important;
	font-size: 16px;
	font-weight: bold;
}

.project-tab .nav-link {
	border: 1px solid transparent;
	border-top-left-radius: .25rem;
	border-top-right-radius: .25rem;
	color: #0062cc;
	font-size: 16px;
	font-weight: 600;
}

.project-tab .nav-link:hover {
	border: none;
}

.project-tab thead {
	background: #f3f3f3;
	color: #333;
}

.project-tab a {
	text-decoration: none;
	color: #333;
	font-weight: 600;
} */
/*=============================스타일 수정=========================  */
.project-tab a {
     color:#F15F5F;
    background-color :#FFD8D8 ;
    border-color: transparent red;
    border-bottom: 3px solid !important;
    font-size: 16px;
    font-weight: bold;
} 
.project-tab .nav-link:hover {
    border: solid;
} 
.tab-content{
text-align: center;
}
.table tr th{
background-color: white;
}
.table td{
text-align: center;
}
.table th{
color : #F15F5F;
text-align: center;
}
#Nutrients td{/* td 안에 세로가운데정렬  */
vertical-align:middle;
}

</style>

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
<!-- 찡 -->

<body>
	<%@ include file="./include.jsp"%>
	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		style="background-image: url(img/yerimimg/메인5.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>영양보충제</h2>
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
							<li class="breadcrumb-item"><a href="#"> 영양 보충제 </a></li>
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
						<!-- 각 영양분을 클릭하면 그 영양보충제의 정보만 나올 수 있게 해야함 -->
						<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
							<a class="nav-item nav-link keyword" id="nav-home-tab"
								data-toggle="tab" href="#nav-home" role="tab"
								aria-controls="nav-home" aria-selected="true">마그네슘</a> <a
								class="nav-item nav-link keyword" id="nav-profile-tab"
								data-toggle="tab" href="#nav-profile" role="tab"
								aria-controls="nav-profile" aria-selected="false">비타민B</a> <a
								class="nav-item nav-link keyword" id="nav-contact-tab"
								data-toggle="tab" href="#nav-contact" role="tab"
								aria-controls="nav-contact" aria-selected="false">비타민C</a> <a
								class="nav-item nav-link keyword" id="nav-contact-tab"
								data-toggle="tab" href="#nav-contact" role="tab"
								aria-controls="nav-contact" aria-selected="false">철</a> <a
								class="nav-item nav-link keyword" id="nav-contact-tab"
								data-toggle="tab" href="#nav-contact" role="tab"
								aria-controls="nav-contact" aria-selected="false">칼륨</a> <a
								class="nav-item nav-link keyword" id="nav-contact-tab"
								data-toggle="tab" href="#nav-contact" role="tab"
								aria-controls="nav-contact" aria-selected="false">칼슘</a>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">
							<table class="table" cellspacing="0">
								<!-- 이미지를 누르면 해당 링크로 이동  -->
								<thead>
									<tr>
										<th>영양보충제 사진</th>
										<th>영양보충제 이름</th>
										<th>가격</th>
									</tr>
								</thead>
								<tbody id="Nutrients">
									<%
									String keyword = "mg";
									ArrayList<NutrientsDTO> nutriCate = (ArrayList) new NutrientsDAO().showNutreCate(keyword);

									for (int i = 0; i < nutriCate.size(); i++) {
									%>
									<!-- tr과 td for문으로 돌려서 모든 영양제 이미지, 정보, 사이트링크 넣기 -->
									<tr>
										<td><a href="<%=nutriCate.get(i).getLink()%>"><img src="<%=nutriCate.get(i).getImg()%>"
											width="200px" height="200px"></a></td>
										<td><%=nutriCate.get(i).getNutnm()%></td>
										<td><%=nutriCate.get(i).getPrice()%>￦</td>
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
	
	
	<!--여기부터 하단 사진 맨위스크롤,, -->
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
                          <!--   <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i> Follow me</a> -->
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
	<!--여기까지 하단 사진 맨위스크롤,, -->
	
	
	<script type="text/javascript">
		$('.keyword').on('click', function() {
			var keyword = $(this).text()
			if(keyword == "비타민B"){
				 keyword = "vitaminb"
			}else if(keyword =="비타민C"){
				 keyword = "vitaminc"
			}else if(keyword =="철"){
				 keyword = "fe"
			}else if(keyword =="칼륨"){
				 keyword="k"
			}else if(keyword == "칼슘"){
				 keyword="ca"
			}else if(keyword =="마그네슘"){
				keyword ="mg"
			}
			console.log(keyword)
			// 클래스가 키워드인 친구를 클릭했을때 이너 텍스트로 키워드로 가져온다
			$.ajax({
				/* 어디로 보낼건지? */
				url : "NutrientsAjax",
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
		
		function makeTable(key) {
			$("#Nutrients").children().remove();
		for (var i = 0; i < key.length; i++) {
			console.log("g")
			$("#Nutrients").append("<tr> </tr>");
	 		$("#Nutrients tr").last().append("<td>" + "<a href='"+key[i].link+"'>'"+"<img src='"+key[i].img+"'width=200px height=200px>"+"</a></td>");
			$("#Nutrients tr").last().append("<td>" + key[i].nutnm+ "</td>");
			$("#Nutrients tr").last().append("<td>" + key[i].price + "￦</td>");
			
		}
	}
		
	</script>




</body>
</html>