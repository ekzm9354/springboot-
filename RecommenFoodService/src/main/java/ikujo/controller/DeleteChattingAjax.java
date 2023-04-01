package ikujo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ikujo.model.ChattingDAO;
import ikujo.model.ChattingDTO;


public class DeleteChattingAjax extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		System.out.println("[DeleteChattingAjax]");
		
		String toName= request.getParameter("toName");
		String fromName= request.getParameter("fromName");
		
		ChattingDTO dto = new ChattingDTO(toName, fromName);
		int row = new ChattingDAO().DeleteChatting(dto);
		if (row > 0) {
			System.out.println("삭제완료");
		}else {
			System.out.println("삭제실패");
		}
	}

}
