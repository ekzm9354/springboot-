<%@page import="java.util.Random"%>
<%@page import="ikujo.model.DessertDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ikujo.model.DessertDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style type="text/css">
button{
background-color: transparent;
color: #F15F5F;}
.row2{ /* div안에 가운데로 오게하기 */
display:block;
justify-content: center;

}
#nav-tab{

}
</style>
</head>
<body>
	<section id="tabs" class="project-tab">
		<div class="container">
			<div class="row2">
				<!-- <div class="col-md-12"> -->
					<nav> 
						<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
							<button class="nav-item nav-link keyword" value="과일류" >과일류</button>
							<button class="nav-item nav-link keyword" value="스무디류" > 스무디류</button>
							<button	class="nav-item nav-link keyword" value="우유.유제품류">우유.유제품류</button> 
							<button	class="nav-item nav-link keyword" value="주스라떼류">주스라떼류</button> 
							<button	class="nav-item nav-link keyword" value="차류">차류</button> 
							<button class="nav-item nav-link keyword" value="커피류">커피류</button>
							<button class="nav-item nav-link keyword" value="탄산음료류">탄산음료류</button>
						</div>
						<div id="deRan"></div>
					</nav>
				<!-- </div> col-md-12끝   -->
			</div><!--  row끝 -->
		</div>
	</section>
	<script type="text/javascript">
	 function deleteTable() {
	    	
	  	  $("#deRan").children().remove();
	  	  
	    }
	
	
	$(".nav-item.nav-link.keyword").click(function desertRan() {
			    var label = this.value
			    deleteTable()
		  $.ajax({
	            type : "GET", 
	            url : "./DessertRan.jsp?label="+label,        
	            dataType : "html",
	            error : function(){
	                alert("통신실패!!!!");
	            },
	            success : function(Parse_data){
	     
	                $("#deRan").prepend(Parse_data); //div에 받아온 값을 넣는다.
	            }
	       	 });
		
	})
	
	
	</script>
</body>
</html>