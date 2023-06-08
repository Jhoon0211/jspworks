<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 예제</title>
</head>
<body>
	<h2>${season}</h2>
	
	<%-- <h3>${seasons[0]}</h3>
	<h3>${seasons[1]}</h3>
	<h3>${seasons[2]}</h3>
	<h3>${seasons[3]}</h3> --%>
	
	<!-- 반복문 출력 -->
	<c:forEach var="season" items="${seasons}">
	<h3><c:out value="${season}"/></h3>
	</c:forEach>
	
	<!-- numberList 출력 -->
	<h2>${numberList[0]}</h2>
	<h2>${numberList[1]}</h2>
	<h2>${numberList[2]}</h2>
	
	<!-- 반복문 출력 -->
	<c:forEach var="numberlist" items="${numberList}">
	<h3><c:out value="${numberList}"/></h3>
	</c:forEach>
	
	
</body>
</html>