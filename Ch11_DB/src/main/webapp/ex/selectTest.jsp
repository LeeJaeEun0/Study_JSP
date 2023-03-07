<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레코드 표시</title>
</head>
<body>
<h2>member 테이블의 레코드 표시</h2>
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
		ResultSet rs =null;
		
		try{
			// 연동할 데이터베이스를 포함한 url
			String jdbcUrl = "jdbc:mysql://localhost:3306/basicjsp";
			String dbId = "jspid2"; // 사용자 계정
			String dbPass= "jsppass"; // 계정 패스워드
					
			// mysql 드라이버 로딩
			Class.forName("com.mysql.jdbc.Driver"); // DriverManager에 등록
			conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass); // conn 객체를 얻어옴
			
			String sql = "select * from member";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()){
				String id = rs.getString("id");
				String passwd = rs.getString("passwd");
				String name = rs.getString("name");
				Timestamp register = rs.getTimestamp("reg_date");
	%>
	
	<tr align="center">
		<td width="100"><%=id%></td>
		<td width="100"><%=passwd%></td>
		<td width="100"><%=name%></td>
		<td width="100"><%=register.toString()%></td>
	</tr>
				
	<% 
			}// end of while
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