<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿼리 스트링 연습
	// int cnt = 3;

	// 파라미터로 받아서 하기 - getParameter의 앞에 Integer.parseInt로 형변환
	// 조건 처리 - cnt값 지정, null 처리 (문자로 본다면 "", 객체로 보기때문에 null로 처리)
	int cnt = 0;
	if(request.getParameter("cnt") != null) {
		cnt = Integer.parseInt(request.getParameter("cnt"));
	}

	for(int i=1; i<=cnt; i++){
		out.println("안녕~ JSP<br>");	
	}
	

%>
<h3>주소 표시줄에 '?cnt=숫자' 로 입력해주세요</h3>