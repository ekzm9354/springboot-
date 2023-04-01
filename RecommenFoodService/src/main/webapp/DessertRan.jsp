<%@page import="java.util.Random"%>
<%@page import="ikujo.model.DessertDAO"%>
<%@page import="ikujo.model.DessertDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

</style>
</head>
<body>
		<div class="tab-content" id="nav-tabContent">
						<div class="tab-pane fade show active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">
							<table class="table" cellspacing="0">
								<thead>
									<tr>
										<th style="background-color: transparent">디저트 사진</th>
										<th style="background-color: transparent">디저트 이름</th>
									</tr>
								</thead>
								<tbody id="dessert">
									<%
									String label = request.getParameter("label");
									ArrayList<DessertDTO> dList = (ArrayList) new DessertDAO().showD(label);
									Random r = new Random(); 
									int ran =r.nextInt(dList.size());
									%>
									<tr>
										<td><img src="dfile/<%=dList.get(ran).getImg()%>"
											width="200px" height="200px"></td>
										<td><%=dList.get(ran).getDname()%></td>
									</tr>
									
								</tbody>
							</table>
						</div>

					</div>
</body>
</html>