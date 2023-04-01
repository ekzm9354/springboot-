package ikujo.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class IPinfo extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String ip = request.getRemoteHost();
		System.out.println(ip);
		
		response.setContentType("text/jsp; charset=utf-8");
		
		HttpSession session = request.getSession();
		session.setAttribute("ip", ip);
		
	}

}
