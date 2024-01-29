package com.syj.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09 extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String intro = request.getParameter("intro");
		
		out.println("<html><head><title>입사지원</title></head><body>");
		out.println("<h3>" + name + "님의 지원이 완료되었습니다.</h3> <hr>");
		out.println("<div>지원내용</div>");
		out.println("<div>" + intro + "</div>");
		out.println("</body></html>");
		
	}

}
