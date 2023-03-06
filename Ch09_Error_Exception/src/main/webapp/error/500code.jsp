<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% response.setStatus(HttpServletResponse.SC_OK); %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>500 에러 페이지</title>
</head>
<body>
서비스 사용에 불편을 끼쳐드려서 대다히 죄송합니다. <br>
빠른 시간 내에 문제를 처리하겠습니다.<br>
<img alt="요청하신 페이지는 존재하지 않습니다." src="../resources/img/error.jpg" width="500px">
<!-- 절대경로로 작동하지만 상대경로로 작동하지 않음 -->
</body>
</html>