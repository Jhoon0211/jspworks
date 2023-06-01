<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	//String fruit1 = request.getParameter("fruit1");
	//String fruit2 = request.getParameter("fruit2");
	//String fruit3 = request.getParameter("fruit3");

	//out.println(fruit1);	
	//out.println(fruit2);	
	//out.println(fruit3);	

	// Array 방식으로 받아오기 - 여러 값을 받아올 때 사용
	String[] fruit = request.getParameterValues("fruit");
%>
<p>선택한 과일:
<% 
	for(int i=0; i<fruit.length; i++){
		out.println(fruit[i]);
	}
%>
</p>