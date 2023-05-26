<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <!-- 스크립트릿 태그 -->
	 <%
	 	int num1 = 10, num2 = 20;
	 	int sum;
		
	 	// 연산
		sum = num1 + num2;	 	
	 
	 	// 태그
	 	out.println("합계: " + sum);
	 	
	 	out.println("<br>"); // 줄바꿈
	 	
	 	// 1부터 10까지 출력 
	 	for(int i=1; i<=10; i++){
	 		out.println(i);
	 	}
	 	out.println("<br>"); // 줄바꿈
	 	for(int i=1; i<=10; i++){
	 		if(i % 2 == 0){
	 		out.println(i);
	 		}
	 	}
	 %>
	 <!-- 표현문 태그 -->
	 <%-- <p>합계 : <%= sum %> </p> --%>
</body>
</html>