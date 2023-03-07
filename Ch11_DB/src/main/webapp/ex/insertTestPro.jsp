<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<%
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	Timestamp register = new Timestamp(System.currentTimeMillis()); // 현재 날짜와 시간을 받음
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	String str="";
	
	try{
		// 연동할 데이터베이스를 포함한 url
		String jdbcUrl = "jdbc:mysql://localhost:3306/basicjsp";
		String dbId = "jspid2"; // 사용자 계정
		String dbPass= "jsppass"; // 계정 패스워드
				
		// mysql 드라이버 로딩
		Class.forName("com.mysql.jdbc.Driver"); // DriverManager에 등록
		conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass); // conn 객체를 얻어옴
		
		String sql = "insert into member values (?,?,?,?)";
		pstmt = conn.prepareStatement(sql); // 미리 컴파일
		pstmt.setString(1,id);
		pstmt.setString(2,passwd);
		pstmt.setString(3,name);
		pstmt.setTimestamp(4, register);
		pstmt.executeUpdate();
		
		// insert 성공시 안내 문구가 나오도록
		str = "member 테이블에 새로운 레코드를 추가했습니다.";
	}catch(Exception e){
		e.printStackTrace();
		str = "member 테이블에 새로운 레코드 추가를 실패했습니다.";
	}finally{
		if(pstmt != null)
			try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null)
			try{conn.close();}catch(SQLException sqle){}
		
	} // end of try catch()
%>
<html>
<head>
<title>레코드 추가</title>
</head>
<body>
<%=str %>
</body>
</html>