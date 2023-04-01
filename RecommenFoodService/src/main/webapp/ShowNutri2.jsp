<%@page import="ikujo.model.referenceDTO"%>
<%@page import="ikujo.model.referenceDAO"%>
<%@page import="java.math.BigDecimal"%>
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
	int udate =Integer.parseInt(request.getParameter("udate")); 
	ArrayList<referenceDTO> userAvgNutri = new ShowFoodDAO().userAvgNutri(id);
	referenceDTO referDto = new referenceDAO().referData(id);
	
	%>

	<section id="tabs" class="project-tab">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<canvas id="myChart" width="1000" ; height="600"; ></canvas>
				</div>
			</div>
		</div>
	</section>

	<script>
	<%
	
	ArrayList<Integer> Kcal = new ArrayList<Integer>();
	ArrayList<Integer> Carbohydrate = new ArrayList<Integer>();
	ArrayList<Integer> Protein = new ArrayList<Integer>();
	ArrayList<Integer> Fat = new ArrayList<Integer>();
	ArrayList<Integer> Sugar = new ArrayList<Integer>();
	ArrayList<Integer> Ca = new ArrayList<Integer>();
	ArrayList<Integer> Fe = new ArrayList<Integer>();
	ArrayList<Integer> Mg = new ArrayList<Integer>();
	ArrayList<Integer> Na = new ArrayList<Integer>();
	ArrayList<Integer> K = new ArrayList<Integer>();
	ArrayList<Integer> VitaminB = new ArrayList<Integer>();
	ArrayList<Integer> VitaminC = new ArrayList<Integer>();
	for(referenceDTO dto : userAvgNutri) {
		Kcal.add(dto.getKcal().intValue());
		Carbohydrate.add( dto.getCarbohydrate().intValue());
		Protein.add( dto.getProtein().intValue());
		Fat.add( dto.getFat().intValue());
		Sugar.add(dto.getSugar().intValue());
		Ca.add( dto.getCa().intValue());
		Fe.add( dto.getFe().intValue());
		Mg.add(dto.getMg().intValue());
		Na.add(dto.getNa().intValue());
		K.add(dto.getK().intValue());
		VitaminB.add(dto.getVitaminB().intValue());
		VitaminC.add(dto.getVitaminC().intValue());
		}
		
		System.out.println(VitaminC.get(udate));
		System.out.println(referDto.getVitaminC());
		
		%>
		
	var ctx = document.getElementById('myChart').getContext('2d');
	var myChart = new Chart(ctx, {
	    type: 'bar', // 차트의 형태 (bar, line, pie)
	    data: { // 차트에 들어갈 데이터
	        labels: ['Kcal','Carbohydrate','protein','fat','sugar','ca','fe','mg','na','k','vitaminB','vitaminC'
	        
	       ],
	        // labels -> x축에 들어갈 데이터
	        datasets: [
	        	{
	            label: '사용자의 일일 섭취량' , // 차트제목
	            data: [
	            (<%=Kcal.get(udate)%>/<%=referDto.getKcal()%>*100)>100? 100:<%=Kcal.get(udate)%>/<%=referDto.getKcal()%>*100,
	            (<%=Carbohydrate.get(udate)%>/<%=referDto.getCarbohydrate()%>*100)>100? 100:<%=Carbohydrate.get(udate)%>/<%=referDto.getCarbohydrate()%>*100,
	            (<%=Protein.get(udate)%>/<%=referDto.getProtein()%>*100)>100? 100:<%=Protein.get(udate)%>/<%=referDto.getProtein()%>*100,
	            (<%=Fat.get(udate)%>/<%=referDto.getFat()%>*100)>100? 100:<%=Fat.get(udate)%>/<%=referDto.getFat()%>*100,
	            (<%=Sugar.get(udate)%>/<%=referDto.getSugar()%>*100)>100? 100:<%=Sugar.get(udate)%>/<%=referDto.getSugar()%>*100,
	            (<%=Ca.get(udate)%>/<%=referDto.getCa()%>*100)>100? 100:<%=Ca.get(udate)%>/<%=referDto.getCa()%>*100,
	            (<%=Fe.get(udate)%>/<%=referDto.getFe()%>*100)>100? 100:<%=Fe.get(udate)%>/<%=referDto.getFe()%>*100,
	            (<%=Mg.get(udate)%>/<%=referDto.getMg()%>*100)>100? 100:<%=Mg.get(udate)%>/<%=referDto.getMg()%>*100,
	            (<%=Na.get(udate)%>/<%=referDto.getNa()%>*100)>100? 100:<%=Na.get(udate)%>/<%=referDto.getNa()%>*100,
	            (<%=K.get(udate)%>/<%=referDto.getK()%>*100)>100? 100:<%=K.get(udate)%>/<%=referDto.getK()%>*100,
	            (<%=VitaminB.get(udate)%>/<%=referDto.getVitaminB()%>*100)>100? 100:<%=VitaminB.get(udate)%>/<%=referDto.getVitaminB()%>*100,
	            (<%=VitaminC.get(udate)%>/<%=referDto.getVitaminC()%>*100)>100? 100:<%=VitaminC.get(udate)%>/<%=referDto.getVitaminC()%>*100 ,
	            ],
	           /* 컬러 넣기 */
	            backgroundColor: [
	            'rgba(219, 51, 51, 0.55)',
               'rgba(219, 90, 51, 0.55)',
               'rgba(219, 152, 51, 0.55)',
               'rgba(219, 188, 51, 0.55)',
               'rgba(191, 219, 51, 0.55)',
               'rgba(141, 219, 51, 0.55)',
               'rgba(60, 219, 51, 0.55)',
               'rgba(51, 219, 205, 0.55)',
               'rgba(51, 149, 219, 0.55)',
               'rgba(51, 96, 219, 0.55)',
               'rgba(71, 51, 219, 0.55)',
               'rgba(194, 51, 219, 0.55)'
               /*  'red','orange','yellow','green','blue','violet','sky' */
                ],  
           		 borderColor: [
           			 'rgba(219, 219, 163, 0.42)',
                     'rgba(219, 219, 163, 0.42)',
                     'rgba(219, 219, 163, 0.42)',
                     'rgba(219, 219, 163, 0.42)',
                     'rgba(191, 219,163, 0.42)',
                     'rgba(141, 219, 163, 0.42)',
                     'rgba(60, 219, 163, 0.42)',
                     'rgba(51, 219, 163, 0.42)',
                     'rgba(51, 149, 163, 0.42)',
                     'rgba(51, 219, 163, 0.42)',
                     'rgba(71, 219, 163, 0.42)',
                     'rgba(194, 219, 163, 0.42)'
                ],
	        	},
	         <%--    {
		            label: '일일 기준 권장 섭취량' , // 차트제목
		            data: [
		            <%=referDto.getKcal()%>,
		            <%=referDto.getCarbohydrate()%>,
		            <%=referDto.getProtein()%>,
		            <%=referDto.getFat()%>,
		            <%=referDto.getSugar()%>,
		            <%=referDto.getCa()%>,
		            <%=referDto.getFe()%>,
		            <%=referDto.getMg()%>,
		            <%=referDto.getNa()%>,
		            <%=referDto.getK()%>,
		            <%=referDto.getVitaminB()%>,
		            <%=referDto.getVitaminC()%>
		            ],
		            backgroundColor: [
		                'rgba(153, 102, 255, 0.2)'],
		            borderColor: [
		                'rgba(153, 102, 255, 1)']
	            }, --%>
	            
	            
	            ]		  
	           
    },
    options: {
        scales: {
        	yAxes: [{				
        		display: true,				
        		ticks: {					
        			suggestedMax: 100,    // minimum will be 0, unless there is a lower value.	
        			// OR
        			beginAtZero: true  
        			 // minimum value will be 0.
        			}			
        	}]
        }
    }
});
	         		
   
	</script>


</body>
</html>