package ikujo.controller;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ChttingFlask extends HttpServlet {

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		String ip = (String) session.getAttribute("ip");
		System.out.println(ip);
		String id = (String) session.getAttribute("id");
		System.out.println(id);
		id =URLEncoder.encode(id,"UTF-8");
//		Flask로 간다

		response.sendRedirect("http://61.80.80.212:5001/?ip="+ip+"&id="+id);  
	}

}
