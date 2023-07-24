<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../header.jsp" />
	<div class="container my-3"  align="center">
		<div class="col-4">
		<%
			String error = request.getParameter("error");
			if(error != null) {
				out.println("<div class='alert alert-danger'>");
				out.println("아이디와 비밀번호를 확인해주세요");
				out.println("</div>");
			}
		%>
			<h3>Please Login</h3>
			<form action="j_security_check" method="post">
				<div class="form-group my-3">
					<input type="text" name="j_username" class="form-control"
						   placeholder="ID" required autofocus>
				</div>
				<div class="form-group my-3">
					<input type="password" name="j_password" class="form-control"
						   placeholder="Password">
				</div>
				<div class="d-grid">
					<button type="submit" class="btn btn-success">LOGIN</button>
				</div>
			</form>
		</div>
	</div>		
	<jsp:include page="../footer.jsp" />
</body>
</html>