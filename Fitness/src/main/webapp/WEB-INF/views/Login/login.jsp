<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
   <form method=POST action="/fit/login_check" id='frmLogin'>
      <table align=center valign=middle>
         <tr>
            <td>아이디</td>
            <td><input type=text id=userid name=userid value=""></td>
         </tr>
         <tr>
            <td>비밀번호</td>
            <td><input type=password id=password name=password value=""></td>
         </tr>
         <tr>
            <td align=center colspan=2>
            <input type=submit id=btnLogin value="로그인">&nbsp; 
            <input type=button id=signup value="회원가입" 	onclick="location.href='/fit/signon'">&nbsp; 
            <input type=button id=btnCancel value="취소" onclick="location.href='/fit/home'">
            <input type=button id=findId value="아이디찾기" onclick="location.href='/fit/ifind'">
            <input type=button id=findPassword value="비밀번호찾기" onclick="location.href='/fit/findpw'">
            </td>
         </tr>
      </table>
   </form>
</body>
<script src="http://code.jquery.com/jquery-3.5.0.js"></script>
<script>
$(document)
	.on('click', '#btnLogin', function() {
		if (emptyStr($('#userid').val())) {
			alert("아이디가 비어있습니다.");
			return false;
		}
		if (emptyStr($('#password').val())) {
			alert("비밀번호가 비어있습니다.");
			return false;
		} else {
			$.post('/fit/login_check', {
				userid: $('#userid').val(),
				password: $('#password').val()
			},
				function(txt) {

					console.log(1, $('#userid').val(), $('#password').val());

					if (txt == 'fail') {
						alert('아이디와 비밀번호가 다릅니다');
						return false;
					} else if (txt == 'ok') {
						location.href = "/fit/home"
					}
				}, 'text');
				
			return false;
		}
	});

function emptyStr(str) {
    if (typeof str == "undefined" || str == null || str == "")
        return true;

    return false;
}
<!-- 아이디,비밀번호 -->
<!-- 회원가입으로가는거 -->
<!-- 아이디찾기(이메일,이름입력하면 아이디알려줌) 비밀번호찾기(아이디랑,질문답변맞으면 비밀번호 알려줌) -->
<!-- 찾기쪽 하고싶은대로 다이얼로그 or newjsp -->

</script>
</html>
