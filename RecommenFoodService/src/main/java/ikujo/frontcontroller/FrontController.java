package ikujo.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ikujo.command.Command;
import ikujo.controller.DeleteMember;
import ikujo.controller.InsertFood;
import ikujo.controller.Join;
import ikujo.controller.Login;
import ikujo.controller.Logout;
import ikujo.controller.SelectFood;
import ikujo.controller.Update;

public class FrontController extends HttpServlet {
	String moveURL = null;
	RequestDispatcher rd = null;
	Command service = null;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("[FrontController]");
		request.setCharacterEncoding("UTF-8");
		String requestURI = request.getRequestURI();
		System.out.println(requestURI);

		String contextPath = request.getContextPath();
		System.out.println(contextPath);

		String result = requestURI.substring(contextPath.length() + 1);
		System.out.println(result);

		if (result.equals("Join.do")) {
			service = new Join();
		} else if (result.equals("Login.do")) {
			service = new Login();
		} else if (result.equals("DeleteMember.do")) {
			service = new DeleteMember();
		} else if (result.equals("InsertFood.do")) {
			service = new InsertFood();
		} else if (result.equals("SelectFood.do")) {
			service = new SelectFood();
		} else if (result.equals("Logout.do")) {
			service = new Logout();
		} else if (result.equals("Update.do")) {
			service = new Update();
		}
		moveURL = service.execute(request, response);
		rd = request.getRequestDispatcher(moveURL);
		rd.forward(request, response);
	}

}
