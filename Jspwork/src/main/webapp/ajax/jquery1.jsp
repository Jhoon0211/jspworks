<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제이 쿼리 예제</title>
<script src="http://code.jquery.com/jquery-3.7.0.js" integrity></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('button').click(function(){
			let text = $('#t_input').val(); // 폼에 입력된 값
			$('#t_output').val(text);	 // 입력 값 출력
		});
	});
</script>
</head>
<body>
	<input type="text" id="t_input">
	<button type="button">입력</button>
	<p>결과 <input type="text" id="t_output">
</body>
</html>