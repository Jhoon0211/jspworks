<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="container my-3">
		<div class="card mb-3">
		  <img src="../resources/images/main.jpg" class="card-img-top" alt="...">
		  <div class="card-body">
		    <h5 class="card-title"></h5>
		    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
		  </div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>