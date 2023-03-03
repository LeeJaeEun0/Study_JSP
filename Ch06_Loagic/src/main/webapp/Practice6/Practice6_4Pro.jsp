<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력한 숫자만큼 출력</title>
</head>
<body>
<h1>입력한 숫자만큼 수행</h1>
<table border="1">
	<tr>
		<th>  글번호  </th>	
		<th>  글제목  </th>	
		<th>  글내용  </th>	
	</tr>
<%
	int number = Integer.parseInt(request.getParameter("number"));
	for(int i=number; i>=1; i--){
		out.println("<tr>");
		out.println("<td>"+ i +"</td>"); // 글번호		
		out.println("<td>제목"+ i +"</td>"); // 글번호		
		out.println("<td>내용"+ i +"</td>"); // 글번호		
		out.println("</tr>");
	}
%>
</table>
</body>
</html>