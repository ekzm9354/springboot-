package ikujo.controller;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ikujo.command.Command;
import ikujo.model.FoodDAO;
import ikujo.model.FoodDTO;
import ikujo.model.MemberDTO;

public class InsertFood implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("[InsertFood]");
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		String name = (String) session.getAttribute("name");
		String foodNm = request.getParameter("foodNm");
		String udate = request.getParameter("udate");
		String moveURL = "";
		System.out.println(foodNm);
		System.out.println(id);
		System.out.println(udate);
		System.out.println(udate);
			
		FoodDTO dto = new FoodDTO(udate, id, name, foodNm);
		int row = new FoodDAO().insertFood(dto);
		System.out.println("추가되었습니다");
			if (row > 0) {
				moveURL = "./SelectFood.jsp";
			}
		return moveURL;
	}

}
