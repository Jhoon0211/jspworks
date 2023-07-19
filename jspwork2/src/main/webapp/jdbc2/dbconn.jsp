<%@page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jdbc 연동</title>
</head>
<body>
	<%
		String driverClass = "oracle.jdbc.OracleDriver";
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String username = "c##mydb"; // user 이름
		String password = "mydb";	// 비밀번호
			
		Connection conn = null;
		
		try{
			Class.forName(driverClass);
			conn = DriverManager.getConnection(url, username, password);
			out.println("db 연결 객체 생성: " + conn);
		}catch(Exception e){
			out.println("db 연결 실패");
			out.println(e.getMessage());
		}
	%>
</body>
</html>