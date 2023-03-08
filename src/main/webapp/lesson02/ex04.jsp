<%-- <%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%> --%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용</title>
</head>
<body>
<%
	// 맵을 테이블로 구성하기
	// {"korean"=85, ""english"=72, "math"=40, "science"=100}
	// key가지고 value를 꺼낼 수 있다는 특징 Map
	
	Map<String, Integer> scoreMap = new HashMap();
	scoreMap.put("korean", 85);
	scoreMap.put("english", 72);
	scoreMap.put("math", 40);
	scoreMap.put("science", 100);
%>

	<table border="1">
	<%
		Iterator<String> iter = scoreMap.keySet().iterator();
		while(iter.hasNext()) {
			String key = iter.next();
	%> <!-- 반복되는 걸 잡아줘야 해 -->
		<tr>
			<th><%-- <%= key %> --%>
			<% 
				if(key.equals("korean")) {
					out.print("국어");
				} else if (key.equals("english")){
					out.print("영어");
				} else if (key.equals("math")) {
					out.print("수학");
				} else if (key.equals("science")) {
					out.print("과학");
				}
			%>
			</th>
			<td><%= scoreMap.get(key) %></td>
		</tr>
	<% 
		}
	%>
	</table>
	
</body>
</html>