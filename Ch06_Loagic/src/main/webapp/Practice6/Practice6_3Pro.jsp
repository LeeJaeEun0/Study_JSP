<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
    
    
<%
	String id = "abcd";
	String passwd = "z1234";
	
	String id2 = request.getParameter("id");
	String passwd2 = request.getParameter("passwd");

	// id == id2는 같은 값이라도 true가 나오지 않아서 equals를 사용
	if(id.equals(id2) && passwd.equals(passwd2)){ // id, passwd가 일치한 경우
		out.println("<h1>로그인에 성공하셨습니다.</h1>");
	}else{
		out.println("<h1>로그인에 실패하셨습니다.</h1>");
	} // end of if else


%>
<%= id%>
    <%= passwd%>
<!--
	if(id == id2){ // id가 일치한 경우
		if(passwd == passwd2){
			out.println("로그인에 성공하셨습니다.");
		}// id, passwd가 일치한 경우
		else{
			out.println("로그인에 실패하셨습니다.");
		}// id만 일치한 경우
	}else{
		out.println("로그인에 실패하셨습니다.");
	}// id가 불일치한 경우
 -->