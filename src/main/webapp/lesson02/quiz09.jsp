<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar quiz - d-day</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

<div class="container">
	<h3>오늘부터 1일</h3>
	
	<%
// 오늘 날짜를 기준으로 100일, 200일, 300일... 1000일이 며칠인지 출력

	Calendar today = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 M월 d일");
	
	// 오늘부터로 하면 0일이기 때문에 1일이 되려면 하루를 뺀다
	// today -1해줘
	today.add(Calendar.DATE, -1);
	
	for(int i = 1; i <= 10; i++) {
		today.add(Calendar.DATE, +100);
	
	// 이걸 반복문 돌려 
//  today.add(Calendar.DATE,+100);
//	out.print("100일 : " + sdf.format(today.getTime())+ "<br>");

%>
	<div class="display-5">
		<span><%= i %>00일 : </span>
		<span class="text-danger"><%= sdf.format(today.getTime()) %></span>
	<% 
		}
	%>
	</div>
</div>


</body>
</html>