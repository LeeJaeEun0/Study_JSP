<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.Timestamp" %>
<%@ page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 디렉티브 연습 - import 속성</title>
</head>
<body>
<h2>page 디렉티브 연습 - import 속성</h2>
<%
	Timestamp now = new Timestamp(System.currentTimeMillis());
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd  h:m:s"); // M - 월, m - 분
	String strDate = format.format(now); // 현재날짜, 시간을 설정한 형식대로 출력하기
%>
<h1>오늘은 <%= strDate %> 입니다</h1>
</body>
</html>