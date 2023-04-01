<%@page import="ikujo.model.ShowFoodDAO"%>
<%@page import="ikujo.model.ShowFoodDTO"%>
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

.table {

margin-left: auto; 
margin-right: auto;
/* table-layout:fixed; */

}
.table th,td {
text-align: center;
white-space: nowrap;}

</style>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
	<%
	String id = request.getParameter("id");
	ArrayList<ShowFoodDTO> foodList = new ShowFoodDAO().showFoodId(id);
	%>
	<section id="tabs" class="project-tab">
            <div class="container">
                <div class="row">
                    <div class="col-md-12" ><!--style="width:1200px"  -->
 								<table class="table" cellspacing="0">

						<tr>
							<th>날짜</th>
							<th>음식명</th>
							<th>칼로리</th>
							<th>탄수화물</th>
							<th>단백질</th>
							<th>지방</th>
							<th>당</th>
							<th>칼슘</th>
							<th>철</th>
							<th>마그네슘</th>
							<th>나트륨</th>
							<th>칼륨</th>
							<th>비타민B</th>
							<th>비타민C</th>
						</tr>


						<%
						for (ShowFoodDTO dto : foodList) {
						%>
						<tr>
							<td><%=dto.getUdate()%></td>
							<td><%=dto.getFoodNm()%></td>
							<td><%=dto.getKcal()%></td>
							<td><%=dto.getCarbohydrate()%></td>
							<td><%=dto.getProtein()%></td>
							<td><%=dto.getFat()%></td>
							<td><%=dto.getSugar()%></td>
							<td><%=dto.getCa()%></td>
							<td><%=dto.getFe()%></td>
							<td><%=dto.getMg()%></td>
							<td><%=dto.getNa()%></td>
							<td><%=dto.getK()%></td>
							<td><%=dto.getVitaminB()%></td>
							<td><%=dto.getVitaminC()%></td>
						</tr>
						<%
						}
						%>



					</table>
                    </div>
                </div>
            </div>
        </section>
        
        
        

        
 
</body>
</html>