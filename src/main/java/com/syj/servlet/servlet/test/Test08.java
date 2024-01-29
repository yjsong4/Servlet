package com.syj.servlet.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test08")
public class Test08 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();

		
		List<String> list = new ArrayList<>(Arrays.asList(
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."));
		
		out.println("<html><head><title>검색결과</title></head><body>");
		
		String word = request.getParameter("word");
		
//		for(String sentence:list) {
//			if(sentence.contains(word)) {
//				String result = sentence.replace(word, "<b>" + word + "</b>");
//				out.println("<div" + sentence + "</div><hr>");
//			}
//		}
		
		for(int i = 0; i < list.size(); i++) {
			String words = list.get(i);
			if(words.contains(word)) {
				word = word.replace(word, "<b>" + word + "</b>");
				out.println(words);
			}
		}
		out.println("</body></html>");
		
	}
}
