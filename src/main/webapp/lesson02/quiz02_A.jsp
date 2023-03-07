<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>>Get Method Quiz Answer</title>
</head>
<body>
<%-- 요청하는 화면 --%>
	<%-- 부트스트랩 복붙하기 -> head태그 안쪽에 --%>
	<div class="container">
	<h1>날짜, 시간 링크</h1>
	
	<%-- key-value 앞에 key동일하게 맞추기 --%>
	<a href="/lesson02/quiz02_A.jsp?type=time" class="btn btn-info">현재 시간 확인</a>
	<a href="/lesson02/quiz02_A.jsp?type=date" class="btn btn-success">현재 날짜 확인</a>

	</div>
</body>
</html>