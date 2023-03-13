package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet ("/lesson04/insert_ex02")
public class InsertEx02 extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		// request Parameters 꺼낸다.
			String name = request.getParameter("name");
			String yyyymmdd = request.getParameter("yyyymmdd");
			String email = request.getParameter("email");
			String introduce = request.getParameter("introduce");
		
		// DB 연결
		 MysqlService ms = MysqlService.getInstance();
		 ms.connect();  // 실질적인 연결
		 
		// DB insert
		String insertQuery = "insert into `new_user`(`name`, `yyyymmdd`, `email`, `introduce`)"
				+ "values ('"+name+"', '" + yyyymmdd +"', '" + email + "', '" + introduce + "' )";     
		 
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// DB 연결 해제
		ms.disconnect();
		
		// 응답으로 다른페이지로 보내버린다 => 유저목록 화면으로 Redirect
		response.sendRedirect("/lesson04/ex02_1.jsp");
		
		
	}
}
