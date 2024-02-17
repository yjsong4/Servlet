package com.syj.servlet.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.syj.servlet.common.MysqlService;

@WebServlet("/db/test/favorite/delete")
public class FavoriteDeleteController extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String id = request.getParameter("id");
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "DELETE FROM `favorite` WHERE `id` = " + id + ";";
		mysqlService.update(query);
		
		response.sendRedirect("/db/favorite-list.jsp");
		
	}
	
}
