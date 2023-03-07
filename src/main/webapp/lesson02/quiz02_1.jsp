<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method Quiz</title>
</head>
<body>

<%-- key는 동일하게 value는 다르게 -> 그리고 if문 걸어준다 --%>
type=current_date
type=current_time
	<%
	Date now = new Date();
	SimpleDateFormat format = new SimpleDateFormat("현재시간은 HH시 mm분 ss초 입니다");
	request.getParameter("current_time");
	%>
	
	
</body>
</html>