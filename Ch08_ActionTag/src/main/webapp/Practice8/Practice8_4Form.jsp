<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
	String id="";
	String passwd = "";
	
	id =request.getParameter("id");
	passwd = request.getParameter("passwd");
	
	if(id==null || id.equals(""))
		id="test";
	
	if(passwd==null || passwd.equals(""))
		passwd="testPass";
%>

Practice8_4To.jsp 페이지로 포워딩 합니다.<br>
<jsp:forward page="Practice8_4To.jsp">
	<jsp:param value="<%=id %>" name="id"/>
	<jsp:param value="<%=passwd %>" name="passwd"/>
</jsp:forward>