<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>

<html>
<head>
<title>Sound of Mind</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/resources/assets/css/mypage.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body class="is-preload">
	<c:if test="${user==null}">
		<jsp:forward page="login.jsp"></jsp:forward></c:if>
	<c:if test="${user!=null}">
		<!-- Wrapper -->
		<div id="wrapper">
			<!-- Main -->
			<div id="main">
				<div class="inner">
					<!-- Header -->
					<header id="header">
						<a href="index.do" class="logo"><strong>Sound</strong> of Mind
						</a>
						<ul class="icons">
							<c:if test="${user==null}">
								<li><a href="login.do"><span class="label">로그인</span></a></li>
								<li><a href="join.do"><span class="label">회원가입</span></a></li>
							</c:if>
							<c:if test="${user!=null }"> 
						${user.id}님 
						<li><a href="logout.do"><span class="label">로그아웃</span></a></li>
							</c:if>
						</ul>
					</header>


					<section id="banner">
						<div class="content">
							<header>
								<h1 style="text-align:center;">프로필</h1>

							</header>
							<div class="uploadResult">
								<img src='/display?fileName=${profile_s}' class='profileImg'>
							</div>
						<!-- 	<div class="uploadDiv">
								<input class="upload-name" value="첨부파일" placeholder="첨부파일">
								<label for="file">파일찾기</label>
								<input type="file" name="uploadFile" multiple id="file">
								<label id="uploadBtn">프로필 등록</label>
							</div> -->
							
							<label class="uploadDiv">
								프로필 변경
								<input type="file" name="uploadBtn" multiple style="display:none;">

							</label>
								<p class="userId">${user.id}님 </p>							

							<table class="type03">
								<tr>
									<th scope="row">ID</th>
									<td>${user.id}</td>
								</tr>
								<tr>
									<th scope="row">Name</th>
									<td>${user.name}</td>
								</tr>
							</table>
							<table class="type03">
								<tr>
									<th scope="row">번호</th>
									<td>날짜</td>
									<td>내용</td>
									<td>감정</td>
								</tr>
								<c:forEach var="emotion" items="${emotion}">
									<tr>
										<th scope="row">${emotion.rownum}</th>
										<td>${emotion.date}</td>
										<td>${emotion.text}</td>
										<td>${emotion.emotions}</td>
									</tr>
								</c:forEach>
							</table>
							<button type="button" onclick="deletemem()">탈퇴하기</button>
							<%-- <a href="delete.do?id=${user.id}" ><span class="label">회원탈퇴</span></a> --%>
						</div>

					</section>

				</div>
			</div>

			<!-- Sidebar -->
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
									<li><a href="chatting.do">채팅</a></li>
									<li><a href="map.do">가까운 복지관 찾기</a></li>
								</ul></li>
							<li><a href="mypage.do">프로필</a></li>
							<li><a href="elements.html">의견 보내기</a></li>
							<li><a href="socket">Web Socket</a></li>
						</ul>
					</nav>

				</div>
			</div>
	</c:if>
	<!-- Scripts -->
	<script src="/resources/assets/js/jquery.min.js"></script>
	<script src="/resources/assets/js/browser.min.js"></script>
	<script src="/resources/assets/js/breakpoints.min.js"></script>
	<script src="/resources/assets/js/util.js"></script>
	<script src="/resources/assets/js/mypage.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
		
			//var cloneOjb=$(".uploadDiv").clone();
			//이미지 업로드
			
			$("input[type='file']").on("change", function(e){
				
					
				var formData = new FormData();
				var inputFile = $("input[name='uploadBtn']");
				var fileList=inputFile[0].files;
				var fileObj=fileList[0];

			
				 formData.append("uploadFile",fileObj); 
				
				$.ajax({
					url:'/uploadAjaxAction',
					processData:false,
					contentType:false,
					data : formData,
					type:"POST",
					dataType:'json',
					success:function(result){
						console.log('ajax'+result);
						showUploadImage(result);
						
					},
					error:function(result){
						alert("이미지 파일이 아닙니다.")
					}
			});//ajax 끝부분
				
		});//on.change 끝부분 
			
			//파일 확장자제한, 파일 사이즈 제한
			var regex=new RegExp("(.*?)\.(jpg|png)$");
			var maxSize = 5242880; //5MB
			
			function fileCheck(fileName,fileSize){
				if(fileSize>=maxSize){
					alert("파일 사이즈 초과");
					return false;
				}
				if(!regex.test(fileName)){
					alert("허용되지 않는 확장자");
					return false;
				}
				return true;
			}
			
		</script>

	<script>
		/* 이미지 출력 */
		function showUploadImage(uploadResultArr) {
			console.log("showUploadImage");
			/* 전달받은 데이터 검증 */
			if (!uploadResultArr || uploadResultArr.length == 0) {
				return
			}

			/* var uploadResult = $("#uploadResult"); */

			var obj = uploadResultArr[0];

			var fileCallPath = obj.uploadPath.replace(/\\/g, '/') + "/s_"
					+ obj.uuid + "_" + obj.fileName;
			$.ajax({
				url:"profilePath",
				type:"post",
				data:{profile:fileCallPath,
					id:`${user.id}`,
					},
				success:function(res){
					console.log("주소보내기"+res);
					$('.profileImg').remove()
		 	 	    $('.uploadResult').append("<div id='result_card'></div>")
					$('.uploadResult').last().append(
							"<img src='/display?fileName=" + res
									+ "'class='profileImg'>")
				},
				error:function(e){
					console.log(e);
				}
				
			});
			
			
			
 
		}
	</script>


	<script>
		/* 회원탈퇴  */
		function deletemem() {
			if (!confirm("정말로 탈퇴하시겠습니까?")) {
				return "mypage.do";
			} else {
				alert("탈퇴 되었습니다.");
				location.replace("delete.do?id=${user.id}")
				return "delete.do";
			}
		}
	</script>


</body>
</html>