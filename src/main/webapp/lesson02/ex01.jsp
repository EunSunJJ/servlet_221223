<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>
</head>
<body>
	<!-- HTML의 주석 :  소스보기에서 보인다 -->
	<%-- JSP의 주석 : 소스보기에서 보이지 않는다 --%>
	<%
	// JAVA 문법 시작
	// scriptlet -> 나중에는 사용하면 안되는거야
	int sum = 0;
	for (int i = 1; i <= 10; i++) {
		sum += i;
	}
	%>
	
	<strong>합계 : </strong>
	<%-- sum변수를 나타내는 방법 = expression 문법 --%>
	<input type="text" value="<%= sum %>"> <br>
	
	<%!
		// 선언문 - 클래스 같은 느낌
		// 필드
		private int num = 100;
	
		// 메소드
		public String getHelloWorld() {
			return "hello world";
		}
	%>
	
	<%-- return값을 돌려받으려고 expression문법 사용 --%>
	<%= getHelloWorld() %> <br>
	
	<%--산술연산을 해서 결과를 출력해보자 --%>
	<%= num %>
	<%= num + 200 %>
	
	
</body>
</html>