<%@page import="ikujo.model.NutrientsDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.NutrientsDAO"%>
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

/*=============================스타일 수정=========================  */
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

  .table th{
 	 
	 text-align:center;
}  
#nuimage{ padding-right: 180px;
}
 
</style>
</head>

<body>

	<!-- ****** Breadcumb Area End ****** -->



<section class="categories_area clearfix" id="about">
		<div class="container">
	<div class="tab-content" id="nav-tabContent">
		<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
			aria-labelledby="nav-home-tab">
			
			<table class="table" cellspacing="0">
				<thead>
					<tr>
						<th id = nuimage>영양제 사진</th>
						 <th>영양제 이름</th> 
					</tr>

				</thead>
			
				
				
				
				
				<tbody id="MainNutrients">
					<%
					ArrayList<NutrientsDTO> nutriList = new NutrientsDAO().showNutreCate("ca");
					for (int i = 0; i < 3; i++) {
					%>
					<tr>
					
					
			
						<%
						NutrientsDTO dto = nutriList.get(i);
						%>
						<td ><img class="Nutrientsimage" style="float: left; " src="<%=dto.getImg()%>" width=400px"
							height="300px"></td>
						<td><font size = "6"><%=dto.getNutnm()%></font></td>
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






