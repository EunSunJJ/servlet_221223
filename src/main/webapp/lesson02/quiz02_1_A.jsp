<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method Quiz Answer</title>
</head>
<%-- 여기도 부트스트랩 복붙하기 --%>
<body>
	<%-- 결과 response 페이지 --%>
	<%
	String type = request.getParameter("type");
	Date now = new Date();
	SimpleDateFormat sdf = null;
	
	if (type.equals("time")) {
	 sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
	
	} else if (type.equals("date")) {
		sdf = new SimpleDateFormat("오늘의 날짜는 yyyy년 MM월 dd일 입니다.");
	}
	
	String result = sdf.format(now);
	%>
	
	<div class="container">
		<span class="display-2"></span>
		
	</div>
</body>
</html>