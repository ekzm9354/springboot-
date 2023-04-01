package ikujo.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import ikujo.model.ChattingDAO;
import ikujo.model.ChattingDTO;

public class ChattingAjax extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		System.out.println("[ChattingAjax]");

		String toName = request.getParameter("toName");
		String fromName = request.getParameter("fromName");
		String messeges = request.getParameter("messeges");
		int cnt = Integer.parseInt(request.getParameter("cnt"));

		System.out.println(toName);
		System.out.println(fromName);
		System.out.println(messeges);

//		메시지 넣기
		ChattingDTO dto = new ChattingDTO(toName, fromName, messeges);
		int row = new ChattingDAO().ChattingInsert(dto);
		if (row > 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}

		if (cnt == 1) {
			ChattingDTO dto2 = new ChattingDTO(toName, fromName);
			ArrayList<ChattingDTO> showChatting = (ArrayList) new ChattingDAO().ChattingShow(dto2);
			Gson gson = new Gson();
			String json = gson.toJson(showChatting);
			System.out.println(json);
			response.getWriter().print(json);
		} 

	}

}
