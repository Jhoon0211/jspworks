<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../resources/css/style.css">
<script type="text/javascript">
   function checkMember(){
      let form = document.member;
      let id = form.memberId.value;
      let pw1 = form.passwd1.value;
      let pw2 = form.passwd2.value;
      let name = form.name.value;
      
      //정규 표현식
      let pw_pat1 = /[0-9]+/ //숫자만
      let pw_pat2 = /[a-zA-Z]+/ //영어만
      let pw_pat3 = /[~!@#$%^&*()_=/]+/ //특수문자만
      
      if(id.length <4 || id.lenfth > 15){
         alert("아이디는 4~15자까지 입력가능합니다");
         form.memberId.select();
         return false;
      }else if(pw1.length <8 || !pw_pat1.test(pw1)|| !pw_pat2.test(pw1) ||!pw_pat3.test(pw1)){
         alert("비밀번호는 영문자, 숫자, 특수문자 포함 8자 이상입니다.")
         form.passwd1.select();
         return false;
      }else if(pw1 != pw2){
         alert("비밀번호가 일치하지 않습니다.")
         form.passwd2.select();
         return false;
      }
      form.submit();
   }

</script>
</head>
<body>
   <jsp:include page="../header.jsp"/> <!-- 해더 삽입 -->
   <div id = "container">
      <section id="register">
         <h3> 회원 가입</h3>
         <form action="addMember.do" method="post" name="member">
         <fieldset>
         <ul>
                    <li>
                        <label>아이디</label>
                        <input type="text" name="memberId">
                    </li>
                    <li>
                        <label>비밀번호</label>
                        <input type="password" name="passwd1">
                    </li>
                    <li>
                        <label>비밀번호 확인</label>
                        <input type="password" name="passwd2">
                    </li>
                    <li>
                        <label>이름</label>
                        <input type="text" name="name">
                    </li>
                    <li>
                        <label>성별</label>
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
                <input type="button" value="가입" onclick="checkMember()">
                <input type="reset" value="취소">
            </div>
         </form>
      
      
      </section>
   
   
   </div>

</body>
<jsp:include page="../footer.jsp"/> <!-- 푸더 삽입 -->
</html>