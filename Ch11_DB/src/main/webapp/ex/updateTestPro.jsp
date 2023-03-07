<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>

<%
	// form에서 받아온 정보를 변수에 저장
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");

	//
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

		String sql = "select id, passwd from member where id=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()){
			String rId = rs.getString("id");
			String rPasswd = rs.getString("passwd");
			if(id.equals(rId)&&passwd.equals(rPasswd)){
				sql = "update member set name = ? where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, name);
				pstmt.setString(2, id);
				pstmt.executeUpdate();
	%>

	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>레코드 수정</title>
	</head>
	<body>
	member 테이블의 레코드를 수정했습니다.
	</body>
	</html>

<%
		}else
			out.print("패스워드가 틀렸습니다.");
		}else
			out.print("아이디가 틀렸습니다.");

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