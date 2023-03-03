<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Practice5_3</title>
</head>
<body>
<%! String name = "이재은"; %>
<%!
	public String getName(){
		return name;
	} // end of getName()
%>
<% String hobby = "프랑스 자수"; %>

내 이름은 <%=getName() %>이고, <br>
내 취미는 <%= hobby %>
<h2></h2>
</body>
</html>