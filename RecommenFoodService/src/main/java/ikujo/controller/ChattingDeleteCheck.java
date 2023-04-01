package ikujo.controller;

import java.io.IOException;
import java.math.BigDecimal;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ikujo.model.ChattingDAO;
import ikujo.model.ChattingDTO;


public class ChattingDeleteCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("UTF-8");
		System.out.println("[ChattingDeleteCheck]");

		
		String c_seqString =  (String)request.getParameter("c_seq");
		BigDecimal c_seq = new BigDecimal(c_seqString);
		System.out.println(c_seqString);
		System.out.println(c_seq);
		
		int CheckDeleteChatting = new ChattingDAO().ChattingDeleteCheck(c_seqString);
		
		Gson gson = new Gson();
		String json = gson.toJson(CheckDeleteChatting);
		System.out.println(json);
		response.getWriter().print(json);
	}

}
