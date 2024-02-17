package com.syj.servlet.database.test;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.syj.servlet.common.MysqlService;

@WebServlet("/db/test/hong/insert")
public class UsedGoodsInsertController extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String sellerId = request.getParameter("sellerId");
		String title = request.getParameter("title");
		String price = request.getParameter("price");
		String description = request.getParameter("description");
		String imageUrl = request.getParameter("imageUrl");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `used_goods`\r\n"
				+ "(`sellerId`, `title`, `price`, `description`, `imageUrl`)\r\n"
				+ "VALUE\r\n"
				+ "(" + sellerId + ", '" + title +"', " + price + ", '" + description + "', '" + imageUrl + "');";
	
		response.sendRedirect("/db/hong/list.jsp");
		
	}

}
