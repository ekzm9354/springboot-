package ikujo.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ikujo.model.NutrientsDAO;
import ikujo.model.NutrientsDTO;

public class NutrientsAjax extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setCharacterEncoding("UTF-8");
		System.out.println("[NutrientsAjax]");

		String keyword = request.getParameter("keyword");
		if (keyword == null) {
			keyword = "mg";
		}
		ArrayList<NutrientsDTO> nutriCate = new NutrientsDAO().showNutreCate(keyword);

		Gson gson = new Gson();
		String json = gson.toJson(nutriCate);
		System.out.println(json);

		response.getWriter().print(json);
	}

}
