<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 조각 페이지 -->
<!-- 태그들이 중복되니까 지워버려 -->

<p>
	현재 시간 : <%= Calendar.getInstance().getTime() %>
</p>