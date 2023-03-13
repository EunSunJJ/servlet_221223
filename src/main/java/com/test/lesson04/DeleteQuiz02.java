package com.test.lesson04;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/delete_quiz02")
public class DeleteQuiz02 extends HttpServlet{

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) {
		
		// request parameter 삭제할 id
		int id = Integer.parseInt(request.getParameter("id"));
		
		// db연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// delete query DB
		
		
		// db해제
		ms.disconnect();
		
		// 유저 목록 페이지로 Redirect 이동 
	}
}
