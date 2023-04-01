<%@page import="java.util.Base64.Decoder"%>
<%@page import="org.python.icu.impl.number.Parse"%>
<%@page
	import="org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation"%>
<%@page import="java.net.URLDecoder"%>
<%@page import="org.springframework.boot.web.servlet.server.Encoding"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>

<html lang="en">
<head>
<title>Sound of Mind</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/resources/assets/css/community.css" />
<!-- animated -->
<link rel="stylesheet" href="/resources/assets/css/community2.css" />

<!-- bootsnipp -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css">


<style type="text/css">
#header {
	display: -moz-flex;
	display: -webkit-flex;
	display: -ms-flex;
	display: flex;
	border-bottom: solid 5px #6495ED;
	padding: 6em 0 1em 0;
	position: relative;
}

.bg-dark {
	background-color: #6495ED !important;
}

.nav-link {
	display: initial;
	padding: 0.5rem 1rem;
	border-bottom: black;
	color: black !important;
}

.pagination {
	display: block;
	text-align: center;
}
</style>

<!-- animated -->
<style type="text/css">
#lia {
      position: relative;
      padding: 0.6em 2em;
      font-size: 18px;
      border: none;
      outline:none;
      color: #333;
      display: inline-block;
      text-decoration: none;
      z-index: 3;
}
</style>

</head>
<body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main -->
		<div id="main" style="background-color: white;">
			<div class="inner" style="background-color: white;">
				<!-- Header -->
				<header id="header">
					<a href="index.do" class="logo"><strong>Sound</strong> of Mind
					</a>
					<ul class="icons">
						<c:if test="${user==null && Kakao == null && Naver == null}">
							<li><a href="login.do"><span class="label">Login</span></a></li>
							<li><a href="join.do"><span class="label">Sign Up</span></a></li>
						</c:if>
						<c:if test="${user!=null && Social == null}"> 
						${user.name}님 
						<li><a href="logout.do"><span class="label">Logout</span></a></li>
							<%-- <li><a href="delete.do?id=${user.id}" ><span class="label">회원탈퇴</span></a></li> --%>
						</c:if>
						<c:if test="${user==null && Kakao != kakao}">
							${id}님
							<li><a href="logout.do"><span class="label">Logout</span></a></li>
						</c:if>
						<c:if test="${user==null && Naver != naver}">
							${Naveremail}님
							<li><a href="logout.do"><span class="label">Logout</span></a></li>
						</c:if>
					</ul>

				</header>

				<!-- 상단 메뉴  & 검색 -->
				<nav class="navbar navbar-expand navbar-light bg-white"
					style="height: 81px;">
					<div class="container">
						<div class="collapse navbar-collapse">
							<ul class="navbar-nav">
								<li class="nav-item active"><a href="community.do" class="nav-link">
										<img src="/resources/assets/img/board.png" width="27px"
										height="27px">
										자유게시판
								</a></li>
								<li class="nav-item"><a href="news.do" class="nav-link"> <img
										src="/resources/assets/img/news3.png" width="27px"
										height="27px">
										뉴스
								</a></li>
								<li class="nav-item"><a href="chatting.do" class="nav-link"> <img
										src="/resources/assets/img/chat3.png" width="27px"
										height="27px">
										채팅
								</a></li>
							</ul>
							<!-- 검색 -->
							<section id="search" class="alt"
								style="width: 50%; margin-left: 20px; margin-right: 20px;">
								<form action="#">
									<input type="text" name="query" id="query" placeholder="검색"
										style="margin-top: 30px;" />
								</form>
							</section>
							<ul class="navbar-nav d-none d-md-block">
								<li class="nav-item"><a class="nav-link"> <img
										src="/resources/assets/img/write2.png" width="32px"
										height="32px" onclick="boardWrite()">
										글쓰기
								</a></li>
							</ul>
						</div>
					</div>
				</nav>


				<!-- Table -->
				<div class="table-wrapper"
					style="margin-right: 20px; margin-top: 25px;">
					<table>
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>글쓴이</th>
								<th>작성일</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="comushow" items="${comushow}">
								<tr>
									<td>${comushow.rownum}</td>
									<td onclick="board(`${comushow.s_index}`,`${comushow.click}`)">${comushow.title}</td>
									<td class="userid">${comushow.id}</td>
									<td>${comushow.date}</td>
									<td>${comushow.click}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>


				<!-- 조회수 높은 10개의 게시글 출력 -->
				<div class="box"
					style="margin-top: 25px; width: 25%; float: right; margin-right: 10px; overflow: hidden; text-overflow: ellipsis; white-space: nowrap; margin-bottom: 10px;">
					<h5>Best Board</h5>
					<c:forEach var="clickBest" items="${clickBest}">
					${clickBest.rownum}. ${clickBest.title} <br>
					</c:forEach>
				</div>
				<div class="box"
					style="margin-top: 10px; width: 25%; float: right; margin-right: 10px;">
					<h5>Message Board</h5>
					<h6>받는 이</h6>
					<p>
						<input type="text" name="messegeId" id="messegeId">
					</p>
					<div class="row uniform">
						<h6 style="padding-left: 22px;">메세지</h6>
						<div class="box" style="width: 980px; margin-left: 22px;">
							<textarea name="demo-name" id="demo-name" placeholder="내용을 입력하세요" style="width: 100%; height: 202px; margin-bottom: 20px; resize: none;"></textarea>
							<!-- 업로드버튼 -->
							<ul class="actions small">
								<li><button class="button small"
										onclick="ToMessage(`${user.id}`)">보내기</button></li>
							</ul>
						</div>
					</div>

				</div>


				<!-- 
				<!-- 페이지 넘김
				<ul class="pagination">
					<li><span class="button disabled">Prev</span></li>
					<li><a href="#" class="page active">1</a></li>
					<li><a href="#" class="page">2</a></li>
					<li><a href="#" class="page">3</a></li>
					<li><span>&hellip;</span></li>
					<li><a href="#" class="page">8</a></li>
					<li><a href="#" class="page">9</a></li>
					<li><a href="#" class="page">10</a></li>
					<li><a href="#" class="button">Next</a></li>
				</ul>
 -->

			</div>

		</div>
		<!-- Sidebar. -->
		<div id="sidebar">
			<div class="inner">
				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>MENU</h2>
					</header>
					<ul>
						<li><span class="opener">COMMUNITY</span>
							<ul>
								<li><a href="community.do">BOARD</a></li>
								<li><a href="news.do">NEWS</a></li>
								<li><a href="chatting.do">CAHTTING</a></li>
								<li><a href="map.do">가까운 복지관 찾기</a></li>
							</ul></li>
						<li><a href="mypage.do">MY PAGE</a></li>
						<!--폰트 셋팅 부분-->
						<li><span class="opener" id="switcher">FONT SIZE</span>
							<ul>
								<li><span id="switcher-large">크게</span></li>
								<li><span id="switcher-small">작게</span></li>
							</ul></li>
						<li><a href="elements.html">SEND FEEDBACK</a></li>
						<li><a href="socket">Web Socket</a></li>
					</ul>
				</nav>

				<!-- Footer. -->
				<footer id="footer">
					<p class="copyright">
						&copy; Untitled. All rights reserved. Demo Images: <a
							href="https://unsplash.com">Unsplash</a>. Design: <a
							href="https://html5up.net">HTML5 UP</a>.
					</p>
				</footer>
			</div>
		</div>
	</div>
	<!-- Scripts -->
	<script src="/resources/assets/js/jquery.min.js"></script>
	<script src="/resources/assets/js/browser.min.js"></script>
	<script src="/resources/assets/js/breakpoints.min.js"></script>
	<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
	<script src="/resources/assets/js/util.js"></script>
	<script src="/resources/assets/js/main.js"></script>
	<script type="text/javascript">
		function board(s_index, click) {
			location.href = "board.do?s_index=" + s_index + "&click=" + click
		}
	</script>
	<script type="text/javascript">
		if (window.performance.navigation.type == 2) {
			location.reload();
		}
		if (window.performance.getEntriesByType("navigation")[0].type == "back_forward") {
			location.reload();
		}
	</script>
	<script type="text/javascript">
		$('.userid').click(function() {
			var userid = $(this).text()
			$('input[name=messegeId]').attr('value', userid)
		})
	</script>
	<script type="text/javascript">
		function ToMessage(to_id) {
			var from_id = $('#messegeId').val()
			console.log(from_id)
			var chat = $('#demo-name').val()
			console.log(chat)
			console.log(to_id)
			$.ajax({
				url : 'ToMessage.do',
				data : {
					to_id : to_id,
					from_id : from_id,
					chat : chat
				},
				type : "GET",
				success : function() {
					console.log('success')
					$('#demo-name').val('')
					$('#messegeId').val('')
				},
				error : function() {
					console.log('fail')
				}
			})
		}
	</script>
	<script type="text/javascript">
		function boardWrite() {
			location.href = "http://localhost:8085/boardWrite.do"
		}
	</script>
	
	
	<!-- bootsnipp -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script type="text/javascript">
	 $(document).ready(function() {
         $("li.nav-item").click(function (e) {
             e.preventDefault();
             $(".nav-item").removeClass("active");
             $(this).addClass("active");   
         });
     });
	</script>
	
	<!-- icon -->
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>

</body>
</html>