<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date, java.text.SimpleDateFormat" %>
<%@ page errorPage="error.jsp" %>

<%
	Date date = new Date();
	SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
	String strdate = simpleDate.format(date)s;
%>
보통의 JSP 페이지 형태 입니다.

<%-- 고의로 에러를 발생시킨 라인으로 strdate변수명을 strdat로 틀리게 입력했다. --%>
오늘 날짜는 <%= strdate %> 입니다.

<!-- 여기서 코드를 수정하면 500code.jsp가 실행 -->
<!-- 홈페이지에서 url을 수정하면 404code.jsp가 실행 -->