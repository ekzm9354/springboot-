package ikujo.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ikujo.model.DessertDAO;
import ikujo.model.DessertDTO;

public class DessertAjax extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		System.out.println("[DessertAjax]");
		
		String keyword = request.getParameter("keyword");
		if(keyword == null) {
			keyword = "과일류";
		}
		ArrayList<DessertDTO> dessertCate = new DessertDAO().showD(keyword);
		
		Gson gson = new Gson();
		
		String json = gson.toJson(dessertCate);
		System.out.println(json);
		
		response.getWriter().print(json);
	}

}
