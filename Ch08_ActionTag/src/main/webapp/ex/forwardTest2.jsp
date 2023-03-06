<%@ page language="java" contentType="text/html; charset=UT F-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
	String id= "Kingdora";
	String hobby = "만화보기";
%>

포워딩하는 페이지 forwardTest2.jsp 입니다.

<jsp:forward page="forwardToTest2.jsp">
	<jsp:param value="<%=id %>" name="id"/>
	<jsp:param value="<%=hobby %>" name="hobby"/>
</jsp:forward>