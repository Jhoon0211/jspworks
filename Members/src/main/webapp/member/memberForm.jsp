<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script src="resources/js/validation.js"></script>
<link rel="stylesheet" href="resources/css/style.css">

</head>
<body>
	<jsp:include page="../header.jsp" />
	<div id="container">
		<section id="register">
			<h2>회원 가입</h2>
			<form action="/addMember.do" method="post" name="member">
				<fieldset>
					<ul>
						<li>
							<label for="memberId">아이디</label>
							<input type="text" name="memberId"
								placeholder="아이디는 4~15자까지 입력 가능합니다.">
						</li>
						<li>
							<label for="passwd1">비밀번호</label>
							<input type="password" name="passwd1"
								placeholder="비밀번호는 영문자, 숫자, 특수문자 포함 8자 이상입니다.">
						</li>
						<li>
							<label for="passwd2">비밀번호 확인</label>
							<input type="password" name="passwd2"
								placeholder="비밀번호를 다시 입력해주세요">
						</li>
						<li>
							<label for="name">이름</label>
							<input type="text" name="name"
								placeholder="이름을 입력해주세요">
						</li>
						<li>
							<label for="gender">성별</label>
							<label class="radio">
								<input type="radio" name="gender" value="남" checked>남
							</label>
							<label class="radio">
							<input type="radio" name="gender" value="여">여
							</label>
						</li>
					</ul>
				</fieldset>
				<div class="button">
					<input type="button" value="가입하기" onclick="checkMember()">
					<input type="reset" value="다시쓰기">
				</div>
			</form>
		</section>	
	</div>

</body>
<jsp:include page="../footer.jsp" />
</html>