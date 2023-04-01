<%@page import="ikujo.model.ShowFoodDAO"%>
<%@page import="ikujo.model.ShowFoodDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/yerimimg/logoimg.ico">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>

<style type="text/css">

#userprofile{
margin-left:auto; 
margin-right:auto;
/* height: 400px;
width: 1300px;  */
text-align: center;
} 
button{
border: 0;
background: transparent;
outline: ; 
color:#F15F5F;
font-weight : bold;
}

/* #scrollUp {
    bottom: 55px;
    font-size: 14px;
    right: 50%;
    width: 30px;
    background-color: #fc6c3f;
    color: #fff;
    text-align: center;
    height: 30px;
    line-height: 30px;
    border-radius: 50%;
    margin-right: -15px;
} */

.table thead th {
    vertical-align: bottom;
    border-bottom: 2px solid #F15F5F!important;
}
.bg-dark {
    background-color: #FFD8D8!important;
}
.text-white {
    color: #F15F5F!important;
}

.breadcrumb-item+.breadcrumb-item::before {
    display: inline-block;
    padding-right: 0.5rem;
    color: #F15F5F!important;
    content: ">"!important;
}
#pinnk{
	color: #F15F5F!important;
}
#red{
	color: #F15F5F!important; 
	font-size : 35px
}
</style>

<!-- 스크롤업 -->
<style>
#scrollUp {
	display: none;
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
<body>
<%@ include file="./include.jsp"%>
	<!-- ****** Breadcumb Area Start ****** -->
	<div class="breadcumb-area"
		style="background-image: url(img/메인5.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="bradcumb-title text-center">
						<h2> 사용자 프로필</h2>
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
							<li class="breadcrumb-item"><a href="UserProfile.jsp"></a> 프로필 </li>
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
					<!-- <nav>
						<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
							<a class="nav-item nav-link active" id="nav-home-tab"
								data-toggle="tab" role="tab"
								aria-controls="nav-home" aria-selected="true">유저섭취내역</a>
						</div>
					</nav> -->
					<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">
							<table class="table" >
								<thead>
									<tr>
    <!--  데이터를 요청해줄 버튼 -->
										<th> <button type="button" id="showFood">등록된 음식</button></th>
										<th><button type="button" id="showNutri">영양소 그래프</button></th>
										<th> <button type="button" id="showLabel">음식 그래프</button></th>
									</tr>
								</thead>
								</table>
								<div id="showNutriButton"></div>
								<table class="table2" id="userprofile2">
									<!-- 용자프로필 정보를 띄어줄 공간-->
									
								</table>
								<table class="table2" id="userprofile">
									<!-- 용자프로필 정보를 띄어줄 공간-->
									
								</table>
								<div style="margin:100px 0px 100px 0px"></div>
								
							
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
        <footer class="py-5 bg-dark" id="pink">
            <div class="container"><p class="m-0 text-center text-white" id="pinnk">
            	메뉴 추천 | 영양보충제 추천 <i class="fa fa-heart-o" aria-hidden="true"></i>
						by <a href="Main.jsp" target="_blank" id="red">밥줘 영양줘</a>
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
	
	
	
	
<%
 	String id =(String)session.getAttribute("id");
    ArrayList<ShowFoodDTO> foodList= new ShowFoodDAO().showFoodId(id);
    if (foodList.size()==0){
    	response.sendRedirect("./SelectFood.jsp?error=on");
    }
%>
    <script type="text/javascript" >
    function deleteTable() {
    	
  	  $("#userprofile").children().remove();
  	  $("#userprofile2").children().remove();
  	  
    }
    function deleteTable2() {
    	
  	  $("#userprofile").children().remove();  	  
    }
    
    
  $("#showLabel").click(function(){ 
	 /* $(document).on('click','#showLabel',function(){ */
       abc= $.ajax({
            type : "GET", //전송방식을 지정한다 (POST,GET)
            url : "./ShowLabel.jsp?id=<%=id %>",        
            		//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
            dataType : "html",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
            error : function(){
            },
            success : function(Parse_data){
            	deleteTable()
                $("#userprofile").append(Parse_data); //div에 받아온 값을 넣는다.
            }
        });
        
    });

	 $(document).on('click', '#showNutri' , function(){
		 deleteTable()
        $.ajax({
            type : "GET", 
            url : "./ShowNutri.jsp?id=<%=id %>",        
            dataType : "html",
            error : function(){
            },
            success : function(Parse_data){
            	deleteTable2()
                $("#userprofile2").prepend(Parse_data); //div에 받아온 값을 넣는다.
            }
       	 });
    	});	
 
 $("#showFood").click(function(){
        $.ajax({
            type : "GET", 
            url : "./ShowFood.jsp?id=<%=id %>",        
            		
            dataType : "html",
            error : function(){
            },
            success : function(Parse_data){
            	
            	deleteTable(); 
                $("#userprofile").append(Parse_data); 
            }
        });
    });
 $("#showFood").ready(function(){
        $.ajax({
            type : "GET", 
            url : "./ShowFood.jsp?id=<%=id %>",        
            		
            dataType : "html",
            error : function(){
            },
            success : function(Parse_data){
            	
            	deleteTable(); 
                $("#userprofile").append(Parse_data); 
            }
        });
    });
 

	
    </script>
    
</body>
</html>