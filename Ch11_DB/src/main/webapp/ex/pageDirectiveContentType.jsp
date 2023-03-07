<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*,javax.sql.*, javax.naming.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>커넥션 풀을 사용한 테이블의 레코드를 화면에 표시하는 예제</title>
</head>
<body>
<h3>커넥션 풀을 사용한 member 테이블의 레코드를 화면에 표시하는 예제</h3>
<table border="1">
<tr>
	<th width="100">아이디</th>
	<th width="100">패스워드</th>
	<th width="100">이름</th>
	<th width="100">가입일자</th>
</tr>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	try{
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds =(DataSource)envCtx.lookup("jdbc/basicjsp");
		conn = ds.getConnection();
		
		String sql = "select * from member";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while(rs.next()){
			String id = rs.getString("id");
			String passwd = rs.getString("passwd");
			String name= rs.getString("name");
			Timestamp register = rs.getTimestamp("reg_date");
	%>
	<tr>
		<td width="100"><%=id %></td>
		<td width="100"><%=passwd %></td>
		<td width="100"><%=name %></td>
		<td width="100"><%=register.toString()%></td>
	</tr>
			
	<%
		} // end of while
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		if(rs != null)
			try{rs.close();}catch(SQLException sqle){}
		if(pstmt != null)
			try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null)
			try{conn.close();}catch(SQLException sqle){}
	} // end of try catch
%>
</table>
</body>
</html>