package ikujo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ikujo.command.Command;
import ikujo.model.MemberDAO;
import ikujo.model.MemberDTO;

public class Update implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("[Update]");
		
		String userid = request.getParameter("id");
		String userpw = request.getParameter("pw");
		
		MemberDTO dto = new MemberDTO(userid, userpw);
		
		int row = new MemberDAO().update(dto);
		
		
		return "./Main.jsp";
	}

}
