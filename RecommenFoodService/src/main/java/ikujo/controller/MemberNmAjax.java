package ikujo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ikujo.model.MemberDAO;

public class MemberNmAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		System.out.println("[MemberNmAjax]");

		String userNm = request.getParameter("name");

		String name = new MemberDAO().CheckName(userNm);

		Gson gson = new Gson();

		String json = gson.toJson(name);
		System.out.println(json);

		response.getWriter().print(json);
	}

}
