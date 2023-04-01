<%@page import="java.math.BigDecimal"%>
<%@page import="ikujo.model.ChattingDAO"%>
<%@page import="ikujo.model.ChattingDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.MemberDTO"%>
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

<!-- 폰트 적용 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Dongle:wght@700&display=swap"
	rel="stylesheet">

<!-- 폰트 스타일 적용 -->
<style>
* {
	font-family: 'Dongle', sans-serif;
}
</style>

<style>
a {
	color: #F15F5F !important;
}
</style>

<!-- 메일창 html 코드 -->
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>

<link href="ChattingCheck.css" rel="stylesheet">
<body>
	<%-- 기능 원래 코드
	<%
	String fromName = null;
	MemberDTO info = (MemberDTO) session.getAttribute("info");
	String toName = info.getUserid();
	String userid = info.getUserid();
	ArrayList<ChattingDTO> CheckChatting = (ArrayList) new ChattingDAO().ChattingCheck(userid);
	for (int i = 0; i < CheckChatting.size(); i++) {
		String mes = CheckChatting.get(i).getMesseges();
		fromName = CheckChatting.get(i).getToName();
	%>
	<div>
	메세지<%=mes%>
	보낸이<%=fromName%>
	<input type="submit" id="response" value="보내기">
	<div id="dd"></div>
	<br>
	</div>
	<%
	}
	%> --%>

	<!-- top-line 코드 -->
	<div class="banner" style="margin-bottom: 70px; height: 100px;">
		<div class="banner__content">
			<div class="banner__text">
				<strong>나에게 온 메세지</strong>
			</div>

			<!-- 나가기 버튼			
			<a href="./Main.jsp">
				<button class="banner__close" type="button">
					 <div class="material-icons"> 나가기 </div>
				</button>
			</a> -->


		</div>
	</div>

	<!-- 메일창 html 코드 -->
	<div class="container">
		<div class="row">
			<div class="box-body no-padding">
				<div class="mailbox-controls" style="margin-left: 1000px;">
					<!-- Check all button -->
					<!-- <button class="btn btn-default btn-sm checkbox-toggle"><i class="glyphicon glyphicon-unchecked"></i></button> 동그라미 -->
					<div class="btn-group" id="delete">
						<!-- 다 삭제하기 -->
						<button class="btn btn-default btn-sm">
							<i class="glyphicon glyphicon-trash"></i>
						</button>
						<!-- <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-arrow-left"></i></button>
                      <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-share-alt"></i></button>  화살표 -->
					</div>
					<!-- /.btn-group -->
					<!-- 새로고침 -->
					<button class="btn btn-default btn-sm" id="reset">
						<i class="glyphicon glyphicon-refresh"></i>
					</button>


					<!-- <div class="pull-right">
                      1-50/200
                      <div class="btn-group">
                        <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-arrow-left"></i></button>
                        <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-arrow-right"></i></button>
                      </div> /.btn-group 
                    </div> /.pull-right  -->


					<!-- 코드 통합(기능 + html) -->

				</div>
				<hr>
				<div class="table-responsive mailbox-messages">
					<table class="table table-hover table-striped">
						<tbody id="dd">
							<tr>
								<td><input type="checkbox" ></td>
								<td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
								<td class="mailbox-name">보낸이</td>
								<td class="mailbox-subject"><b>메세지</b></td>
								<td class="mailbox-attachment"></td>
								<td class="mailbox-date">답장</td>
								<!-- 수지 추가 보내기버튼-->
								<td class="mailbox-send">보내기</td>
								<td></td>
							</tr>
					<%
					String fromName = null;
					MemberDTO info = (MemberDTO) session.getAttribute("info");
					String toName = info.getUserid();
					String userid = info.getUserid();
					ArrayList<ChattingDTO> CheckChatting = (ArrayList) new ChattingDAO().ChattingCheck(userid);
					for (int i = 0; i < CheckChatting.size(); i++) {
						String mes = CheckChatting.get(i).getMesseges();
						fromName = CheckChatting.get(i).getToName();
						BigDecimal c_seq = CheckChatting.get(i).getC_seq();
					%>
							<tr>
								<td><input type="checkbox" id="toSend"></td>
								<td class="mailbox-star"><a href="#"><i	class="fa fa-star-o text-yellow"></i></a></td>
								<td class="mailbox-name toName"><%=fromName%></td>
								<td class="mailbox-subject"><b></b><%=mes%></td>
								<td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
								<!-- 도착시간 넣어주세여 -->
								<td class="mailbox-date"><input type="text" name="text"	id="content"></td>
								<td class="mailbox-send"><input type="submit" id="response"	value="보내기"></td>
									<td><input type="hidden" name="c_seq" value="<%=c_seq%>"></td>
							</tr>


							<%
							}
							%>
							<!--   <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">11 hours ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"></td>
                          <td class="mailbox-date">15 hours ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">Yesterday</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">2 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">2 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"></td>
                          <td class="mailbox-date">2 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"></td>
                          <td class="mailbox-date">2 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"></td>
                          <td class="mailbox-date">2 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">4 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"></td>
                          <td class="mailbox-date">12 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star-o text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">12 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">14 days ago</td>
                        </tr>
                        <tr>
                          <td><input type="checkbox"></td>
                          <td class="mailbox-star"><a href="#"><i class="fa fa-star text-yellow"></i></a></td>
                          <td class="mailbox-name"><a href="read-mail.html">WM06</a></td>
                          <td class="mailbox-subject"><b>WM06</b> - Trying to find a solution to this problem...</td>
                          <td class="mailbox-attachment"><i class="fa fa-paperclip"></i></td>
                          <td class="mailbox-date">15 days ago</td>
                        </tr> -->
						</tbody>
					</table>
					<!-- /.table -->
				</div>
				<!-- /.mail-box-messages -->
			</div>
			<!-- /.box-body -->
			<hr>
			<div class="box-footer no-padding" style="margin-bottom: 20px;">


				<!--              <div class="mailbox-controls"> 나야
                    Check all button
                    <button class="btn btn-default btn-sm checkbox-toggle"><i class="glyphicon glyphicon-unchecked"></i></button>
                    <div class="btn-group">
                      <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-trash"></i></button>
                      <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-arrow-left"></i></button>
                      <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-share-alt"></i></button>
                    </div>/.btn-group
                    <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-refresh"></i></button>
                    
                    
                    
                    
                    <div class="pull-right">
                      1-50/200
                      <div class="btn-group">
                        <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-arrow-left"></i></button>
                        <button class="btn btn-default btn-sm"><i class="glyphicon glyphicon-arrow-right"></i></button>
                      </div> /.btn-group 
                    </div> /.pull-right 
                    
                    
                  </div> 나야 끝 -->

				<a href="./Main.jsp">
					<button class="banner__close" type="button">
						<div class="material-icons" style="margin-left: 550px;">나가기</div>
					</button>
				</a>

			</div>
		</div>
		<!-- /. box -->
	</div>
	<!-- /.col -->
	</div>
	<!-- /.row -->
	</div>
	</div>
	<!-- 여기까지 -->


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
	<footer class="py-5 bg-dark" style="height: 100px;">
		<div class="container">
			<p class="m-0 text-center text-white" style="margin-top: 40px;">
				메뉴 추천 | 영양보충제 추천 <i class="fa fa-heart-o" aria-hidden="true"></i> by
				<a href="Main.jsp" target="_blank">밥줘 영양줘</a>
			</p>
		</div>
	</footer>



</body>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script type="text/javascript">
	$(document).on('click','#response',function(){
		var toName ='<%=toName%>'
		var fromName = '<%=fromName%>'
		var cnt =1
		var messeges = $('#content').val();
		$.ajax({
			/* 어디로 보낼건지? */
			url : "ChattingAjax",
			/* 어떤 데이터를 보낼 것인지? */
			data : {
				toName : toName,
				fromName : fromName,
				messeges : messeges,
				cnt:cnt
			},
			/* 데이터를 어떤 형태로 받아올 것인지 */
			dataType : "json",
			/* 성공 시 */
			success : function(key) {
				Swal.fire({
					  title: '메세지가 성공적으로 전송되었습니다.',		
					  icon: 'success',
					  confirmButtonColor: '#3085d6',
					  confirmButtonText: '확인',
					})
				},
			error : function(e) {
				Swal.fire({
					  title: '메세지가 전송에 실패하였습니다..',		
					  icon: 'error',
					  confirmButtonColor: '#3085d6',
					  confirmButtonText: '확인',
					})
				console.log(e);
			}
		})

	});
	$('#reset').click(function(){
		location.reload()
	})

 	$('#toSend').on('click',function(){
		toName = $('.toName').text();
		console.log(toName)
		}) 
	
	$('#delete').on('click',function(){
		var c_seq = $('input[name=c_seq]').val();
		console.log(c_seq)
		$.ajax({
			url : "ChattingDeleteCheck",
			data : {
				c_seq:c_seq
			},
			dataType : "json",
			success : function(key) {
				console.log(key)
				location.reload()
			},
			error : function(e) {
				alert('실패');
				console.log(e);
			}

		})
	});


</script>

<!-- top-line js코드 -->
<script>
	document.querySelector(".banner__close").addEventListener("click",
			function() {
				this.closest(".banner").style.display = "none";
			});
</script>
</html>