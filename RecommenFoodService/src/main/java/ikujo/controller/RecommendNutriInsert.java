package ikujo.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ikujo.model.FoodDAO;
import ikujo.model.FoodDTO;
import ikujo.model.NutrientsRegistDAO;
import ikujo.model.NutrientsRegistDTO;

public class RecommendNutriInsert extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("넘어감확인");
		String id = request.getParameter("id");
		BigDecimal nutId =new BigDecimal(request.getParameter("nutId"));
		String nutNm = request.getParameter("nutNm");
		
		System.out.println(id);
		System.out.println(nutId);
		System.out.println(nutNm);
		NutrientsRegistDTO dto =new NutrientsRegistDTO(id,nutId,nutNm);
		new NutrientsRegistDAO().insertNutri(dto);
		
		RequestDispatcher rd = request.getRequestDispatcher("./RecommendFood.jsp");
		rd.forward(request, response);
		
	
	
	}

}
