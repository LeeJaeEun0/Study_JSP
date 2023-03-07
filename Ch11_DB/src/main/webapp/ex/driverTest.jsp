<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<h2>JDBC 드라이버 테스트</h2>
<%
	Connection conn = null;

	try{
		// 연동할 데이터베이스를 포함한 url
		String jdbcUrl = "jdbc:mysql://localhost:3306/basicjsp";
		String dbId = "jspid2"; // 사용자 계정
		String dbPass= "jsppass"; // 계정 패스워드
		
		// mysql 드라이버 로딩
		Class.forName("com.mysql.jdbc.Driver"); // DriverManager에 등록
		conn = DriverManager.getConnection(jdbcUrl,dbId,dbPass); // conn 객체를 얻어옴
		out.println("제대로 연결이 되었습니다.");
		
	}catch(Exception e){
		e.printStackTrace();
	} // end fo try catch
%>