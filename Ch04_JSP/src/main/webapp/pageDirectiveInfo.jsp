<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- language="스크립트에서 사용하는 프로그램 언어" 
	contentType="jsp 페이지의 내용이 어떤 형태로 출력될지를 결정 " pageEncoding="UTF-8"  -->
    <%@ page info="copyright by Kim"  %> <!-- info에 속성 값 주기 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 디렉티브 연습 - info 속성</title>
</head>
<body>
<h2>page 디렉트 연습 - info 속성</h2>
<%=getServletInfo() %>
</body>
</html>