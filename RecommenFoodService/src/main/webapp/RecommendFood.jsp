<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Random"%>
<%@page import="ikujo.model.FoodDTO"%>
<%@page import="ikujo.model.FoodDAO"%>
<%@page import="ikujo.model.ShowFoodDAO"%>
<%@page import="ikujo.model.ShowFoodDTO"%>
<%@page import="ikujo.model.NutrientsDTO"%>
<%@page import="ikujo.model.NutrientsDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	String ip = (String) session.getAttribute("ip");
	String id = (String) session.getAttribute("id");
	MemberDTO memDto = (MemberDTO) session.getAttribute("info");
	String category = request.getParameter("category");
	System.out.println("[넘어온값]: "+category);
%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/yerimimg/logoimg.ico">
<style type="text/css">
#recommendFood {
	height: 500px;
	width: 500px;
	/* background-color: yellow; */
}
#recommendNutrients {
	height: 500px;
	width: 500px;
	background-color: blue;
}
#nav-home-tab{ /*영양보충제추천,사용자와비슷한유저가 구매한 영양제추천 css*/
color: #F15F5F;
border: none;
}
.menutab { 
/* border:1px solid; */
text-align: center;
}
.tab1{/*메뉴추천탭,영양제추천탭,디저트랜덤탭 스타일 */
box-sizing: border-box;
background-color: white;
color: /* maroon; */#F15F5F;
font : bold;
/* padding: 15px 25px; */
padding: 7px;
text-align: center;
text-decoration: none;
display: inline-block;
border-radius: 20px;
border: 3px solid #f199bc;
}

.table th, .table tr{
text-align: center;}

input{ /*input(선택버튼) 꾸미기 스타일!  */
box-sizing: border-box;
background:white;
border: 3px solid #f199bc;
color: #F15F5F;
font : bold;
border-radius: 10px;
text-align: center;
padding: 7px;
margin:10px;
display: table-cell;
}

/*영양제 부분 양 옆 배치 스타일 */
.col-md-121{
flex: 1;
}
.row1{ /* div안에 버튼(디저트랜덤뽑기눌러주세요) 가운데로 오게하기 */
display:flex;
}
.row2{
display:block;
justify-content: center;
text-align: center;
}
#desert{
border-radius: 10px;
background-color: transparent;
color :#F15F5F;
border:none;
display: inline-block;
}



</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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

	<%
	
	if (category == null && id != null) {
		String keyword = URLEncoder.encode("밥류","UTF-8");
		id=URLEncoder.encode(id,"UTF-8");
		response.sendRedirect("http://59.0.147.198:5000/RecommendFood?id="+id+"&ip="+ip+"&category="+keyword);
	%>
	
	<%
	}
	%>
	<script>
		$(function(){
			let cate = `<%=category%>`;
			let tab = document.querySelectorAll('.menutab + div > a.nav-item.nav-link')
			
			console.log('[넘어온 카테고리]:',cate)
			
			for(let i=0; i<1; i++){
				console.log(document.querySelectorAll('.menutab + div > a.nav-item.nav-link'))
			}
			
			//이전 카테고리 활성화 삭제
			for(let i=0; i<tab.length; i++){
				//console.log(tab[i].classList)
				
				for(let j=0; j<tab[i].classList.length; j++){
					tab[i].classList.remove('active');
				}
			}
			
			//선택한 카테고리 활성화 추가
			for(let i=0; i<tab.length; i++){				
				if(tab[i].innerText === cate){
					tab[i].classList.add('active')
				}
			}
			
		})		
	</script>
	
	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		style="background-image: url(img/메인5.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2>메뉴 추천</h2>
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
							<li class="breadcrumb-item"><a href=".Main.jsp"><i
									class="fa fa-home" aria-hidden="true"></i> 홈</a></li>
							<!--  <li class="breadcrumb-item"><a href="#"></a>음식추천 시스템</li> 
							 <li class="breadcrumb-item"><a href="#"></a>영양제추천 시스템</li>  -->

							<li class="breadcrumb-item"><a href="#"></a>메뉴 추천</li>
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
					
					 <!-- 탭 클릭하면 음식추천으로 넘어가고 영양제추천으로 넘어가는식으로 만들기 -->
					<div class="menutab">
					<a class="tab1" href="#rice_tab">음식 추천으로 넘어가기</a>
					<a class="tab1" href="#nav-home-tab">영양보충제로 넘어가기</a>
					<a class="tab1" href="#desert">디저트 랜덤뽑기</a>
					</div>
				
						<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
							<a class="nav-item nav-link active keyword" id="rice_tab"
								data-toggle="tab" href="#rice" role="tab" aria-controls="rice"
								aria-selected="true">밥류</a> <a class="nav-item nav-link keyword"
								id="soup_tab" data-toggle="tab" href="#soup" role="tab"
								aria-controls="soup" aria-selected="false">국류</a> <a
								class="nav-item nav-link keyword" id="noodle_tab"
								data-toggle="tab" href="#noodle" role="tab"
								aria-controls="noodle" aria-selected="false">면류</a> <a
								class="nav-item nav-link keyword" id="bread_tab"
								data-toggle="tab" href="#bread" role="tab" aria-controls="bread"
								aria-selected="false">빵류</a> <a
								class="nav-item nav-link keyword" id="meat_tab"
								data-toggle="tab" href="#meat" role="tab" aria-controls="meat"
								aria-selected="false">고기류</a> <a
								class="nav-item nav-link keyword" id="fried_tab"
								data-toggle="tab" href="#fried" role="tab" aria-controls="fried"
								aria-selected="false">튀김류</a> <a
								class="nav-item nav-link keyword" id="others_tab"
								data-toggle="tab" href="#others" role="tab"
								aria-controls="others" aria-selected="false">기타류</a>
						</div>
						
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="rice" role="tabpanel"
							aria-labelledby="rice_tab">
							<table class="table">
								<thead>
									<tr>
										<th style="background-color: transparent">음식 사진</th>
										<th style="background-color: transparent">음식 이름</th>
										<th style="background-color: transparent">칼로리</th>
										<th style="background-color: transparent">탄수화물</th>
										<th style="background-color: transparent">단백질</th>
										<th style="background-color: transparent">지방</th>
										<th style="background-color: transparent">선택</th>
										<%
										int i = 0;
										String[] menu = request.getParameterValues("menu");
										if (menu != null) {
											for (String foodNm : menu) {
												ArrayList<ShowFoodDTO> menuList = new ShowFoodDAO().recommendFood(foodNm);
												for (ShowFoodDTO dto : menuList) {
										%>
									<tr>
										<td><img src="file/<%=dto.getImg()%>" width="200px"
											height="200px"></td>
										<td><%=dto.getFoodNm()%></td>
										<td><%=dto.getKcal()%>Kcal</td>
										<td><%=dto.getCarbohydrate()%>g</td>
										<td><%=dto.getProtein()%>g</td>
										<td><%=dto.getFat()%>g</td>
										<td>
									<form action="./RecommendFoodInsert">
										<input type="hidden" name="userId" value="<%=id%>">
										<input type="hidden" name="userNm" value="<%=memDto.getUserNm()%>">
										<input type="hidden" name="foodNm" value="<%=dto.getFoodNm()%>">
										<input type="submit" value="선택">
										
									</form>
										</td>
									</tr>
									<%}}}
										
									%>
								</thead>
								<tbody id="foods">
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script type="text/javascript">
		$('.keyword').on('click', function() {
			var keyword = $(this).text()
			console.log(keyword)
			// 클래스가 키워드인 친구를 클릭했을때 이너 텍스트로 키워드로 가져온다
	        console.log("[keyword클릭]flask로 간다")
			var link = "http://59.0.147.198:5000/RecommendFood?id=<%=id%>&ip=<%=ip%>&category=" + keyword;
			location.href = link;
			//location.replace(link);
			//window.open(link);
			
			
		});
	</script>
	<!-------------------------         영양보충제               ------------------------  -->
	<section id="tabs" class="project-tab">
		<div class="container">
			<div class="row1">
				<div class="col-md-121" >
					<nav>
						<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
							<a class="nav-item nav-link active" id="nav-home-tab"
								data-toggle="tab" href="#nav-home" role="tab"
								aria-controls="nav-home" aria-selected="true">영양보충제 추천</a>
						</div>
					</nav>
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">
							<table class="table">
								<thead>
									<tr>
										<!--  데이터를 요청해줄 버튼 -->
										<th style="background-color: transparent">영양보충제 이미지</th>
										<th style="background-color: transparent">영양보충제 이름</th>
										<th style="background-color: transparent">선택</th>
									</tr>
								</thead>
								<tbody>
									<%
									NutrientsDAO nutDao = new NutrientsDAO();
									String[] nutrients = request.getParameterValues("nutrients");
									if (nutrients != null) {
									%>
									<%
									for (String nutNm : nutrients) {
									ArrayList<NutrientsDTO> nutrientsList= nutDao.showNutrients(nutNm);
										for(NutrientsDTO nutrientsDto :nutrientsList){
									%>
									<tr>
										<td><a href="<%=nutrientsDto.getLink()%>"> <img
												src="<%=nutrientsDto.getImg()%>">
										</a></td>
										<td><%=nutrientsDto.getNutnm()%></td>
											<td>
									<form action="./RecommendNutriInsert">
										<input type="hidden" name="id" value="<%=id%>">
										<input type="hidden" name="nutNm" value="<%=nutrientsDto.getNutnm()%>">
										<input type="hidden" name="nutId" value="<%=nutrientsDto.getNutid()%>">
										<input type="submit" value="선택">
									</form>
										</td>
									</tr>
									<%
										}
									}
									}
									%>
								</tbody>
							</table>
						</div>
					</div>
				</div> <!--<div class="col-md-121" > 끝 -->
				<!--이 공간에 넣어주세요~!--------------------- 사용자와 비슷한 유저가 선택한 영양제------------------------------  -->
				<div class="col-md-121">
						<nav>
							<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
								<a class="nav-item nav-link active" id="nav-home-tab"
									data-toggle="tab" href="#nav-home" role="tab"
									aria-controls="nav-home" aria-selected="true">사용자와 비슷한 유저가 구매한
									영양보충제 추천</a>
							</div>
						</nav>
						<!--여기에 사용자와 비슷한 유저가 선택한 영양제 추천....   -->
						<div class="tab-content" id="nav-tabContent">
							<div class="tab-pane fade show active" id="nav-home"
								role="tabpanel" aria-labelledby="nav-home-tab">
								<table class="table">
									<thead>
										<tr>
											<!--  데이터를 요청해줄 버튼 -->
											<th style="background-color: transparent">영양보충제 이미지</th>
											<th style="background-color: transparent">영양보충제 이름</th>
											<th style="background-color: transparent">선택</th>
										</tr>
									</thead>
									<tbody>
									<%
									String[] nutrientsReCo = request.getParameterValues("nutrientsReCo");
									if (nutrientsReCo != null) {
							
									%>
									<%
									for (String nutNm : nutrientsReCo) {
									ArrayList<NutrientsDTO> nutrientsList= nutDao.showNutrients(nutNm);
										for(NutrientsDTO nutrientsDto :nutrientsList){
									%>
									<tr>
										<td><a href="<%=nutrientsDto.getLink()%>"> <img
												src="<%=nutrientsDto.getImg()%>">
										</a></td>
										<td><%=nutrientsDto.getNutnm()%></td>
												<td>
									<form action="./RecommendNutriInsert">
										<input type="hidden" name="id" value="<%=id%>">
										<input type="hidden" name="nutNm" value="<%=nutrientsDto.getNutnm()%>">
										<input type="hidden" name="nutId" value="<%=nutrientsDto.getNutid()%>">
										<input type="submit" value="선택">
									</form>
										</td>
							
									</tr>
									<%}}}
									
									
									%>
										
										
									</tbody>
								</table>
							</div>
						</div>
				<div style="margin:100px 0px 100px 0px"></div><!-- 빈공간 만들기  -->
				</div><!--<div class="col-md-121">끝  -->
				<!-----------------------------------여기까지 쓰세요--------------------------------------- -->
			</div><!--<div class="row1">끝  -->
		</div>
	</section>

	<!--◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈여기부터 디저트공간 ◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈ -->
	<section id="tabs" class="project-tab">
		<div class="container">
			<div class="row2">
				<div class="col-md-122" >
				<button id="desert">디저트를 랜덤으로 뽑으려면 눌러주세요! </button>
					<div id="deCate"></div><!--위에 버튼 누르면 디저트 카테고리 나옴  -->
						<div style="margin:100px 0px 100px 0px"></div>
				</div>
			</div>
		</div>
	</section>

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
	

	<!--*********************** 자바스크립트 *************************** -->
	
	<script type="text/javascript">
	
		 $(document).on('click', '#desert' , function(){
		  
		  $.ajax({
	            type : "GET", 
	            url : "dessertCate.jsp",        
	            dataType : "html",
	            error : function(){
	            },
	            success : function(Parse_data){
	            	$("#deCate").children().remove();
	                $("#deCate").prepend(Parse_data); //div에 받아온 값을 넣는다.
	            }
	       	 });
	})
	</script>
	<!--◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈여기까지 디저트공간◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈◈  -->
	
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap-4 js -->
	<script src="js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins JS --> <!--top으로 올라가는 스크롤 없애려고 주석처리~  -->
	<!-- <script src="js/others/plugins.js"></script>
	<!-- Active JS --> <!--top으로 올라가는 스크롤 없애려고 주석처리~  -->
	<!-- <script src="js/active.js"></script> -->
	
</body>
</html>