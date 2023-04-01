package ikujo.controller;

import java.math.BigDecimal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ikujo.command.Command;
import ikujo.model.MemberDAO;
import ikujo.model.MemberDTO;

public class Join implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
//		Join.jsp에서 입력받은 정보 가져오기
		System.out.println("[Join]");
		String userid = request.getParameter("id");
		String userpw = request.getParameter("pw");
		String userNm = request.getParameter("name");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");

//		DTO로 묶어주기
		MemberDTO dto = new MemberDTO(userid, userpw, userNm, gender, age);
		int row = new MemberDAO().Join(dto);
		String moveURL = "";

		if (row > 0) {
			moveURL = "./Main.jsp";
		} else {
			moveURL = "./Join.jsp";
		}

		request.setAttribute("name", userNm);
		return moveURL;
	}

}
