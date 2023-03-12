package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet ("/lesson04/quiz01")
public class Quiz01 extends HttpServlet {

	@Override
	public void doGet (HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
	
		// db연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		// query insert
		String insertQuery = " insert into `real_estate`"
				+ "(`realtorId`, `address`, `area`, `type`,`price`, `rentPrice` )"
				+"value"
				+"(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL)";
	
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// 출력
		//  id 기준 내림차순으로 10개만 출력하세요.
		
		PrintWriter out = response.getWriter();
		String selectQuery = "select * from `real_estate` order by id asc limit 10";

		try {
			ResultSet res = ms.select(selectQuery);
		 	while (res.next()) {
		 		
		 		out.print("매물 주소 : "+ res.getString("address"));
		 		out.print("면적 : " + res.getInt("area"));
		 		out.print("타입" + res.getString("type"));
		 		out.println();
		 	}
		 	
		} catch (SQLException e) {
			e.printStackTrace();
		}
		

		// DB 연결 해제
		ms.disconnect();
	
	}
}
