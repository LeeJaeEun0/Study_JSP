<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<%
	String name= request.getParameter("name");
	String local= request.getParameter("local");
	String tel= request.getParameter("tel");
	String localNum ="";
	
	if(local.equals("서울")){ // local 변수의 값이 서울일 경우
		localNum="02";
	out.println("<b>"+name+"</b>님의 전화번호는 "+localNum+"-"+tel+"입니다");
	} else if(local.equals("경기")){ // local 변수의 값이 경기일 경우
		localNum="031";
	out.println("<b>"+name+"</b>님의 전화번호는 "+localNum+"-"+tel+"입니다");
	}else if(local.equals("강원")){ // local 변수의 값이 강원일 경우
		localNum="033";
	out.println("<b>"+name+"</b>님의 전화번호는 "+localNum+"-"+tel+"입니다");
	}
%>