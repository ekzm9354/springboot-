package ikujo.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ikujo.model.FoodcateDAO;
import ikujo.model.FoodcateDTO;

@WebServlet("/FoodCate2")
public class FoodCate2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		System.out.println("[foodCate]");

		String keyword = request.getParameter("keyword");
		if (keyword == null) {
			keyword = "밥류";
		}
		ArrayList<FoodcateDTO> foodCate = new FoodcateDAO().selectCate(keyword);

		Gson gson = new Gson();

		String json = gson.toJson(foodCate);
		System.out.println(json);

		response.getWriter().print(json);
	}

}
