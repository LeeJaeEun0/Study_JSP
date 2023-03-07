<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs=null;
	
	try{
		// 연동할 데이터베이스를 포함한 url
		String jdbcUrl = "jdbc:mysql://localhost:3306/basicjsp";
		String dbId = "jspid2"; // 사용자 계정
		String dbPass= "jsppass"; // 계정 패스워드
				
		// mysql 드라이버 로딩
		Class.forName("com.mysql.jdbc.Driver"); // DriverManager에 등록
		conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass); // conn 객체를 얻어옴
		
		String sql = "select id, passwd from member where id=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			String rId = rs.getString("id");
			String rPasswd = rs.getString("passwd");
			if(id.equals(rId) && passwd.equals(rPasswd)){
				sql = "delete from member where id =?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				pstmt.executeUpdate();
	%>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>레코드 삭제</title>	
	</head>
	<body>
		<h2> memeber 테이블의 레코드를 삭제 했습니다.</h2>
	</body>
	</html>
				<% 
			} else
				out.println("패스워드가 틀렸습니다.");
		}else
			out.println("아이디가 틀렸습니다.");
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
