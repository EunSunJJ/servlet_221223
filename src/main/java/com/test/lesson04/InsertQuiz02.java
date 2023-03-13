package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/insert_quiz02")
public class InsertQuiz02 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		// request Parameters 꺼낸다.
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		// db연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();  // 실질적 연결
		
		// db insert
		String insetQuery = "insert into `site` (`name`, `url`)"
				+ "values('"+name+"', '"+url+"')";
		
		try {
			ms.update(insetQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// db해제
		ms.disconnect(); 
		
		// 응답으로 다른페이지로 보내버린다 => 유저목록 화면으로 Redirect
		response.sendRedirect("/lesson04/quiz02_1.jsp");
		
	}
}
