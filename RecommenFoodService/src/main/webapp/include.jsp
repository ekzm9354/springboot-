<%@page import="ikujo.model.ChattingDTO"%>
<%@page import="ikujo.model.ChattingDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<!-- Favicon -->
<link rel="icon" href="img/yerimimg/logoimg.ico">

<!-- Core Stylesheet -->
<link href="style.css" rel="stylesheet">

<!-- Responsive CSS -->
<link href="css/responsive/responsive.css" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style type="text/css">
img {
	display: block;
	margin: auto;
}
</style>

</head>
</head>
<body>
	<!-- ****** Top Header Area Start ****** -->
	<div class="top_header_area">
		<div class="container">
			<div class="row">
				<div class="col-5 col-sm-6">
					<!--  Top Social bar start -->
					<!-- <div class="top_social_bar">
						<a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-skype" aria-hidden="true"></i></a> <a
							href="#"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
					</div> -->
				</div>
				<!--  Login Register Area -->

				<%
				MemberDTO info = (MemberDTO) session.getAttribute("info");
				if (info == null) {
				%>
				<div class="col-7 col-sm-6">
					<div
						class="signup-search-area d-flex align-items-center justify-content-end">
						<div class="login_register_area d-flex">
							<!-- 로그인  -->
							<div class="login">
								<a href="./Login.jsp">로그인</a>
							</div>
							<div class="register">
								<a href="./Join.jsp">회원가입</a>
							</div>
						</div>


					</div>
				</div>
				<%
				} else {
				%>

				<div class="col-7 col-sm-6">
					<div
						class="signup-search-area d-flex align-items-center justify-content-end">
						<div class="login_register_area d-flex">
							<%
							String userid = info.getUserid();
							ArrayList<ChattingDTO> CheckChatting = (ArrayList) new ChattingDAO().ChattingCheck(userid);
							
							if (CheckChatting.size() > 0) {
							%>
							<div class="login">
							<a href="ChattingCheck.jsp">새로운 메세지가 있습니다</a>
							</div>
							<%
							}else{
							%>
							<div class="login">
							<a>새로운 메세지 없음</a>
							</div>
							<%} %>
							<!-- 로그인  -->
							<div class="login">
								<a href="./Logout.do">로그아웃</a>
							</div>
							<div class="login">
								<a href="./UpdateMember.jsp">회원정보 수정</a>
							</div>
							<div class="register">
								<a href="./DeleteMember.jsp">회원탈퇴</a>
							</div>
						</div>

					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>
	</div>
	<!-- ****** Top Header Area End ****** -->

	<!-- ****** Header Area Start ****** -->
	<header class="header_area">
		<div class="container">
			<div class="row">
				<!-- Logo Area Start -->
				<div class="col-12">
					<div class="logo_area text-center">
						<a href="Main.jsp" class="yummy-logo"> <!-- 수지 : 페이지 로고 추가 -->
							<img src="./img/mainlogo.jpg" width=150 height=150>
						</a>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<nav class="navbar navbar-expand-lg">
						<button class="navbar-toggler" type="button"
							data-toggle="collapse" data-target="#yummyfood-nav"
							aria-controls="yummyfood-nav" aria-expanded="false"
							aria-label="Toggle navigation">
							<i class="fa fa-bars" aria-hidden="true"></i> Menu
						</button>
						<!-- Menu Area Start -->
						<%
						if (info == null) {
						%>
						<div class="collapse navbar-collapse justify-content-center"
							id="yummyfood-nav">
							<ul class="navbar-nav" id="yummy-nav">
								<!-- 드롭바 없애기 -->
								<li class="nav-item"><a class="nav-link" href="#"onclick="location.href='./Login.jsp'">프로필</a></li>
								<!-- 드롭바 여기까지 수정 -->
								<li class="nav-item" id="insertFood"><a class="nav-link"
									href="./Login.jsp">메뉴 추천</a></li>
								<li class="nav-item" id="insertFood"><a class="nav-link"
									href="./Login.jsp">음식 등록</a></li>
								<li class="nav-item"><a class="nav-link" href="#"
									onclick="location.href='foodcate.jsp'">음식</a></li>
								<!--예림:메인에서 클릭하면 음식카테고리로 넘어가는거 만들었어요  -->
								<li class="nav-item"><a class="nav-link" href="#">디저트 </a></li>
								<li class="nav-item"><a class="nav-link" href="#">영양보충제</a>
								</li>

								<li class="nav-item"><a class="nav-link" href="#">만남의 장</a></li>
								<li class="nav-item"><a class="nav-link"
									href="ikujoteam.jsp">만든이</a></li>

							</ul>
						</div>
						<%
						} else {
						%>
						<div class="collapse navbar-collapse justify-content-center"
							id="yummyfood-nav">
							<ul class="navbar-nav" id="yummy-nav">
								<!-- 								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#"
									onclick="location.href='UserProfile.jsp'" id="yummyDropdown"
									role="button" aria-haspopup="true" aria-expanded="false">프로필</a>
								</li> -->
								<li class="nav-item"><a class="nav-link" href="#"
									onclick="location.href='UserProfile.jsp'">프로필</a></li>
								<li class="nav-item"><a class="nav-link" href="#"
									onclick="location.href='RecommendFood.jsp'">메뉴 추천</a></li>
								<li class="nav-item" id="insertFood"><a class="nav-link"
									href="SelectFood.jsp">음식 등록</a></li>
								<li class="nav-item"><a class="nav-link" href="#"
									onclick="location.href='foodcate.jsp'">음식</a></li>
								<!--예림:메인에서 클릭하면 음식카테고리로 넘어가는거 만들었어요  -->
								<li class="nav-item"><a class="nav-link"
									href="Dessert2.jsp">디저트 </a></li>
								<li class="nav-item"><a class="nav-link"
									href="Nutrition.jsp">영양보충제</a></li>
								<li class="nav-item"><a class="nav-link" href="Chat.jsp">만남의
										장</a></li>

								<li class="nav-item"><a class="nav-link"
									href="ikujoteam.jsp">만든이</a></li>


							</ul>
						</div>
						<%
						}
						%>
					</nav>
				</div>
			</div>
		</div>
	</header>

	<!-- ****** Header Area End ****** -->

	<!-- 로그인으로로 -->
	<script type="text/javascript">
	
	
	$(document).on('click','#yummy-nav',()=>{
	
	if(<%=info%> == null){
		console.log("info null")
		var link = "Login.jsp";
		location.href=link;
		location.replace(link);
		window.open(link);
	}
	
	})
	
	
	
	</script>
</body>

</html>