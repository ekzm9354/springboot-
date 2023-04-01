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

<html>
<head>
<title>마음의 소리</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/resources/assets/css/main.css" />
<link rel="stylesheet" href="/resources/assets/css/loading.css" />
<link rel="stylesheet" href="/resources/assets/css/mouth.css" />
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<!-- 폰트 -->
<link href="https://webfontworld.github.io/NanumSquare/NanumSquare.css"
	rel="stylesheet">

</head>
<body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main -->
		<div id="main">
			<div class="inner">
				<!-- Header -->
				<header id="header">
					<a href="index.do" class="logo"><strong>마음의</strong> 소리 </a>
					<ul class="icons">
						<c:choose>
							<c:when test="${user==null && Kakao == null && Naver == null}">
								<li><a href="login.do"><span class="label">로그인</span></a></li>
								<li><a href="join.do"><span class="label">회원가입</span></a></li>
							</c:when>
							<c:when test="${user!=null && Social == null && Kakao == null}">
							${user.id}님 
								<li><a href="logout.do"><span class="label">로그아웃</span></a></li>
							</c:when>
							<c:when test="${user==null && Naver != null && Kakao == null}">
							${Naveremail}님 
								<li><a href="logout.do"><span class="label">로그아웃</span></a></li>
							</c:when>
							<c:when test="${user==null && Naver == null && Kakao != null}">
							${id}님 
								<li><a href="logout.do"><span class="label">로그아웃</span></a></li>
							</c:when>
						</c:choose>
					</ul>

				</header>

				<div class=fontSize style="color: black;">
					<span onclick="fontsizedown()" style="font-size: 0.5em;">가</span> <span
						onclick="fontsizeup1()" style="font-size: 1em;">가</span> <span
						onclick="fontsizeup2()" style="font-size: 1.5em;">가</span> <span
						onclick="fontsizeup3()" style="font-size: 2em;">가</span>
				</div>
				<!-- Banner -->
				<section id="banner">
					<div class="content">
						<!-- loading animation -->
						<!-- partial:index.partial.html -->
						<div class="main"
							style="margin: 0 auto; display: inline-block; position: relative;">
							<div class="monster">
								<div class="monster__face">
									<div class="monster__eyes">
										<div class="monster__eye"></div>
										<div class="monster__eye"></div>
									</div>
									<div class="monster__mouth">
										<div class="monster__top"></div>
										<div class="monster__bottom"></div>
									</div>
								</div>
							</div>

							<!-- mic -->
							<img src="/resources/assets/img/mic3.png" onclick="speaker()"
								id="Mic" style="position: absolute; width: 80%; top: 18vh;">

						</div>
					</div>


					<div class="content">

						<textarea name="inputSTT"
							style="text-align: center; padding: 60px 0; height: 160px; margin-bottom: 20px; resize: none;"
							id="speech" placeholder="음성을 입력해주세요"></textarea>
						<textarea
							style="text-align: center; padding: 60px 0; height: 160px; margin-bottom: 20px; resize: none;"
							id="emotion" placeholder="당신의 감정은?" readonly="readonly"></textarea>

						<button>
							<a href="#" style="font-size: 115%;">수정하기</a>
						</button>
						<button>
							<a href="#" style="font-size: 115%;">감정분석</a>
						</button>
					</div>

				</section>

			</div>
		</div>
		<!-- Sidebar. -->
		<div id="sidebar">
			<div class="inner">
				<!-- Menu -->
				<nav id="menu">
					<header class="major">
						<h2>메뉴</h2>
					</header>
					<ul>
						<li><span class="opener">커뮤니티</span>
							<ul>
								<li><a href="community.do">게시판</a></li>
								<li><a href="news.do">뉴스</a></li>
								<c:choose>
									<c:when test="${user==null && Kakao == null && Naver == null}">
										<li><a href="login.do">채팅</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="chatting.do">채팅</a></li>
									</c:otherwise>
								</c:choose>
								<li><a href="map.do">가까운 복지관 찾기</a></li>
							</ul></li>
						<li><a href="mypage.do">프로필</a></li>
						<li><a href="sendFeedback.do">의견 보내기</a></li>
						<li><a href="socket">그룹 채팅</a></li>
					</ul>
				</nav>
				<!-- Footer. -->
				<!-- 	<footer id="footer">
					<p class="copyright">
						청각장애인을 위한 커뮤니티 with <a href="index.do">백문불여일견</a>
					</p>
				</footer>
 -->

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
		function speaker() {
			$.ajax({
				url : "http://127.0.0.1:5000/stt",
				data : {
					num : 1
				},
				dataType:"json",
				success : function(res) {
					<!-- Flaks에서 딕셔너리 형태로 리턴 -->
					console.log(res)
					/* console.log(res.voiceParam)
					console.log(res.textParam)
					var voiceParam = res.voiceParam
					var textParam = res.textParam */
					
					$.ajax({
						url:"http://92a3-34-66-26-253.ngrok.io/ngrok",
						data:JSON.stringify(res),
						type:"POST",
						contentType: "application/json",
						dataType:"text",
						success:function(res){
							console.log(res)
							$('#speech').html('')
							$('#emotion').html('')
							var result = res.split(",")
							$('#speech').append(result[0])
							$('#emotion').append(result[1])
							var emotion = $('#emotion').val()
							
							$('#Mic').remove()
							if(emotion==='중립'){
								<!-- Mic 삭제 후 div monster </div> 태그 다음 마이크 재생성 -->
								$('.main').append('<img src=/resources/assets/img/emotion/micsoso.png onclick=speaker() id= Mic style="position: absolute; width: 80%; top: 200px;">')
								}else if(emotion==='분노'){
									$('.main').append('<img src=/resources/assets/img/emotion/micangry.png onclick=speaker() id= Mic style="position: absolute; width: 80%; top: 200px;">')
								}
								else if(emotion==='슬픔'){
									$('.main').append('<img src=/resources/assets/img/emotion/micsad.png onclick=speaker() id= Mic style="position: absolute; width: 80%; top: 200px;">')
								}
								else if(emotion==='불안'){
									$('.main').append('<img src=/resources/assets/img/emotion/micscared.png onclick=speaker() id= Mic style="position: absolute; width: 80%; top: 200px;">')
								}
								else if(emotion==='상처'){
									$('.main').append('<img src=/resources/assets/img/emotion/miching.png onclick=speaker() id= Mic style="position: absolute; width: 80%; top: 200px;">')
								}
								else if(emotion==='기쁨'){
									$('.main').append('<img src=/resources/assets/img/emotion/michappy.png onclick=speaker() id= Mic style="position: absolute; width: 80%; top: 200px;">')
								}
								else if(emotion==='당황'){
									$('.main').append('<img src=/resources/assets/img/emotion/micdisgusting.png onclick=speaker() id= Mic style="position: absolute; width: 80%; top: 200px;">')
								} 
						},
						error:function(e){
							console.log(e)
						}
					})
					/* $('#speech').append(res)
					$('#emotion').append(res.emotion)
					<!-- emotion 값을 확인-->
					var emotion = $('#emotion').val() */
					<!-- emotion이 중립인 경우-->
					
				},
				error : function(e) {
					console.log(e)
				}
			})
		}
	</script>
	<!-- 글자 크기 줄이기 -->
	<script>
	function fontsizedown(){
		document.getElementById("speech").style.fontSize="0.5em";
	}
	function fontsizeup1(){
		document.getElementById("speech").style.fontSize="1em";
	}
	function fontsizeup2(){
		document.getElementById("speech").style.fontSize="1.5em";
	}
	function fontsizeup3(){
		document.getElementById("speech").style.fontSize="2em";
	}
	</script>

	<script>
	let subToggle=true;
	$(".fontSize").click(()=>{
	  if(subToggle){
	    $(".sub").slideDown(500);
	  }else{
	    $(".sub").slideUp(500);
	  }
	  subToggle=!subToggle;
	});
	</script>









</body>
</html>