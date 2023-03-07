<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01.Answer</title>
</head>
<body>

<%--#1 --%>
<%! 
	// 1. 합계
	// input : 1 + 2 + 3 + ... n => n
	// ouput : sum결과
	
	public int getSum(int n) {
		int sum = 0;
		for (int i = 1; i <= n; i++) {
			sum += i;
		}
		return sum;
	}
%>
<h1>1부터 50까지의 합은 <%= getSum(50) %> 입니다.</h1>

<%-- #2 --%>
<%
	int[] scores = {80, 90, 100, 95, 80};
	int sum = 0;
	for (int i = 0; i < scores.length; i++) {   // index칸이 0 ~ 4
		sum =+ scores[i];
	}
	double average = sum / (double)scores.length;
%>
<h1>평균 점수는 <%= average %>입니다.</h1>

<%-- #3 --%>
<%
List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
int score = 0;
 // 3가지의 반복문 돌릴 수 있어
 for (int i = 0; i < scoreList.size(); i++) {
	 if (scoreList.get(i).equals("O")) {
		 score += 100 / scoreList.size();
	 }
 }
%>
<h1>채점 결과는 <%=score %>점 입니다. </h1>

<%-- #4 --%>
<%
String birthDay = "20010820";
String yearStr = birthDay.substring(0,4);
out.print(yearStr);
int year = Integer.parseInt(yearStr);
int age = 2023 - year + 1;
%>
<h1<%= birthDay %>>의 나이는 <%= age %>세 입니다.</h1>

</body>
</html>