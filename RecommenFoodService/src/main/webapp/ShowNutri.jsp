<%@page import="ikujo.model.referenceDAO"%>
<%@page import="ikujo.model.referenceDTO"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="ikujo.model.ShowFoodDTO"%>
<%@page import="ikujo.model.ShowFoodDAO"%>
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
/* .table {
margin-left: auto; 
margin-right: auto;

} */
.table th {
	text-align: center;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
</head>
<body>
	<%
	String id = request.getParameter("id");
	ArrayList<ShowFoodDTO> foodList = new ShowFoodDAO().showFoodId(id);
	ArrayList<referenceDTO> userAvgNutri = new ShowFoodDAO().userAvgNutri(id);
	
	for (referenceDTO userDate : userAvgNutri){
		userDate.getUdate();
	}
	
	%>

	<section id="tabs" class="project-tab">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!-- <canvas id="myChart" width="1000" ; height="600"; ></canvas> -->
						<select id="udate" onchange="selectFn();">
						<%
						int udate =0;
						for (referenceDTO userDate : userAvgNutri){%>
						<option value="<%=udate %>"><%=userDate.getUdate()%> </option>
						<%udate++; }%>
						</select>
						
						
				</div>
			</div>
		</div>
	</section>
	<script>
	function selectFn() {
			let date= $("#udate").val()
		   $.ajax({
	            type : "GET", 
	            url : "./ShowNutri2.jsp?id=<%=id %>&udate="+ date,        
	            dataType : "html",
	            error : function(){
	            },
	            success : function(Parse_data){
	            	deleteTable2()
	                $("#userprofile").prepend(Parse_data); //div에 받아온 값을 넣는다.
	            }
	        });
	
	}
	$(document).ready(function(){
        $.ajax({
            type : "GET", 
            url : "./ShowNutri2.jsp?id=<%=id %>&udate=0",          
            		
            dataType : "html",
            error : function(){
            },
            success : function(Parse_data){
            	
            	deleteTable2(); 
                $("#userprofile").append(Parse_data); 
            }
        });
    });
       
</script>

	





</body>
</html>