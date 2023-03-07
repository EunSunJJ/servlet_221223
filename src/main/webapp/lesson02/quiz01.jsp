<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01 - 스크립트 요소</title>
</head>
<body>
<%-- #1. 1부터 n까지의 합계를 구하는 함수 --%>
	<%!
	// 필드
	private int number = 50;
	
	// 메소드
	public int getSum() {
		int sum1 = 0;
		for (int i = 1; i <= number; i++) {
			sum1 += i;
		}
		return sum1;
	}
	%>
	
	<%-- #2. 점수들의 평균 구하기 --%>
	<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum2 = 0;
	for (int i = 0; i < scores.length; i++) {
		sum2 += scores[i];
		double average = sum2 / scores.length;
	}
	
	%>
	average
	
	<%-- ★★★ #3. 채점 결과 --%>
	<%-- 아래 채점표로 시험점수가 몇점인지 구하세요. --%>
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	

	
	<%-- #4. 나이 구하기 --%>
	<%-- 주어진 생년월일을 가진 사람의 나이를 구하세요. --%>
	<% 
	String birthDay = "20010820";
	String yearStr = birthDay.substring(0,4);
	int year = Integer.valueOf(yearStr);
	int age = 2022 - year + 1;
	%>
	
	<%= age %>
	

</body>
</html>