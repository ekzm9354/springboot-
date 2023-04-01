<%@page import="ikujo.model.FoodcateDTO"%>
<%@page import="ikujo.model.FoodcateDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥줘 영양줘</title>
<link rel="icon" href="img/yerimimg/logoimg.ico">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
.project-tab a {
	color: gray;
	background-color: transparent;
	border-color: transparent red;
	border-bottom: 3px solid !important;
	font-size: 16px;
	font-weight: bold;
}

.project-tab .nav-link:hover {
	border: solid;
}

.tab-content {
	text-align: center;
}

.table th {
	text-align: center;
}
.table td{
table-layout:fixed;}



.Foodimage{padding-left: 100px;}
</style>
</head>

<body>
<section class="categories_area clearfix" id="about">
		<div class="container">
<div class="tab-content" id="nav-tabContent">
		<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
			aria-labelledby="nav-home-tab">
			<table class="table" cellspacing="0">
				<thead>
					<tr>
						<th>음식 사진</th>
						<th>음식 이름</th>
					</tr>

				</thead>
				
				<tbody id="MainFood">
				<%
					ArrayList<FoodcateDTO> riceList = (ArrayList) new FoodcateDAO().selectCate("밥류");
					for (int i = 0; i < 3; i++) {
					%>
					<tr>
						<%
						FoodcateDTO dto = riceList.get(i);
						%>
						<td width="660px"><img class="Foodimage" style="float: left;"src="file/<%=dto.getImg()%>" width="500px"
							height="250px"></td>
						<td><font size = "6"><%=dto.getFoodnm()%></font></td>
					</tr>

					<%
					}
					%>
					</div>
					<script>
					
					
					
					
					</script>


				</tbody>
			</table>
		</div>
	</div>
	</div>
	</section>


</body>
</html>