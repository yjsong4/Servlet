package com.syj.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Test02 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
			
	    response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		Date now = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("HH시 mm분 ss초");
		String timeString = formatter.format(now);
		
		out.println("현재시간은 " + timeString + " 입니다");

	}

}
