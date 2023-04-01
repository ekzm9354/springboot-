package ikujo.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import ikujo.command.Command;
import ikujo.model.FoodDAO;
import ikujo.model.FoodDTO;

public class SelectFood implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String keyword = request.getParameter("keyword");
		System.out.println(keyword);
	    ArrayList<String> food_list = new FoodDAO().SelectFood(keyword);
	    ArrayList<String> food_img = new FoodDAO().SelectImg(keyword);
		String moveURL = "";

		if (food_list != null) {
			HttpSession session = request.getSession();
			session.setAttribute("foodInfo", food_list);
			session.setAttribute("foodImg", food_img);
			moveURL = "./SelectFoodResult.jsp";
		} else {
			moveURL = "./SelectFood.jsp";
		}
		return moveURL;
	}

}
