package ikujo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ikujo.model.FoodDAO;
import ikujo.model.FoodDTO;

public class RecommendFoodInsert extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String userId = request.getParameter("userId");
		String userNm = request.getParameter("userNm");
		String foodNm = request.getParameter("foodNm");
		String category = request.getParameter("category");
		
		System.out.println(userId);
		System.out.println(userNm);
		System.out.println(foodNm);
		
		new FoodDAO().insertFoodPresent(new FoodDTO(userId,userNm,foodNm));
		
		RequestDispatcher rd = request.getRequestDispatcher("./RecommendFood.jsp");
		rd.forward(request, response);
		
	}

}
