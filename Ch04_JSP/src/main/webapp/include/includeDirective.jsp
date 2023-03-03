<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 디렉티브 연습</title>
</head>
<body>
<h2>include 디렉티브 연습</h2>
<% 
	String name = "Kim";
%>
<%@ include file="top.jsp" %> <!-- 현재의 위치에 top.jsp 펭지ㅣ의 내용을 넣으라는 것 -->
포함하는 페이지 includeDirective.jsp의 내용입니다.
<%@ include file="bottom.jsp" %> <!-- 현재의 위치에 bottom.jsp 페이지의 내용을 넣으라는 것 -->
</body>
</html>