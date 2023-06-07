<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 아이디와 비밀번호를 받아서 쿠키를 생성
	String id = request.getParameter("userid");
	String pw = request.getParameter("passwd");
	
	if(id.equals("admin") && pw.equals("0000")){
		// cookie(쿠키이름, 쿠키 값)의 객체 생성
		Cookie cookieId = new Cookie("userId", id);
		Cookie cookiePW = new Cookie("userPw", pw);
		
		// 쿠키 
		response.addCookie(cookieId);
		response.addCookie(cookiePW);
		
		out.println("쿠키 생성이 성공했습니다.");
	}else{
		out.println("쿠키 생성이 실패했습니다.");
	}

%>