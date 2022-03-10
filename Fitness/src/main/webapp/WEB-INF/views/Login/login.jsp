<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
 <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="resources/assets/favicon.ico" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles.css" />

    <!-- Bootstrap core CSS -->
    <link type="text/css" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
.m_container{
	margin-top:150px;
	text-align:center;
/* 	width:50%; */
	color:white;
}

ul li {
	list-style-type: none;
	 width:10%;
	 height:50px;
	 text-align:center;
	 display:inline-block;
	 
}
</style>

<body>

<div class="m_container">
<div>
                <a href="home" style="font-size:40px; text-decoration:none">Human Fitness</a>
</div><br><br>
	 <h3 style="color:black;">로그인</h3>
	 <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >아이디</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=userid name=userid>
     </div>      
     <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >비밀번호</span>
     <input type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=password name=password>
	</div>
		<div style="margin-bottom:15px;">
               <input type="button" class="btn btn-secondary" value="로그인" id=btnLogin name=btnLogin 
               		style=" font-size:20px; width:300px;">
      		
      	<ul style="padding-left: 0rem; margin-top:20px;">
      		<li><a href="ifind" style="text-decoration:none">아이디찾기</a></li>
      		<li><a href="findpw" style="text-decoration:none">비밀번호찾기</a></li>
      		<li><a href="signon" style="text-decoration:none">회원가입</a></li>
      	</ul>
      	</div>
</div>
<jsp:include page="../footer.jsp"/>
</body>
<script src="http://code.jquery.com/jquery-3.5.0.js"></script>
<script>
let flag="false";
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
			$.post('/fit/login_check', {},
				function(txt) {
					for(i=0; i<txt.length; i++){
						if($('#userid').val()==txt[i]['userid'] &&
						   $('#password').val()==txt[i]['passcode']){
							flag="true";
							break;
						} else{
							console.log(txt[i]['userid']);
							console.log(txt[i]['passcode']);
							flag="false;"
						}
					}
					console.log(flag);
					if(flag=="true"){
						alert(txt[i]['userid']+"님 환영합니다.");
					$.post('/fit/loginUpdate',
							{userid: $('#userid').val()},
							function(txt){
								if(txt=="ok"){
								document.location="home";
								} else {
									alert("로그인에 실패하였습니다.");
									return false;
								}
							},'text');
					} else{
						alert('비밀번호 또는 아이디가 맞지 않습니다.');
					}
				}, 'json');
				
		}
	});
function emptyStr(str) {
    if (typeof str == "undefined" || str == null || str == "")
        return true;
}

<!-- 아이디,비밀번호 -->
<!-- 회원가입으로가는거 -->
<!-- 아이디찾기(이메일,이름입력하면 아이디알려줌) 비밀번호찾기(아이디랑,질문답변맞으면 비밀번호 알려줌) -->
<!-- 찾기쪽 하고싶은대로 다이얼로그 or newjsp -->

</script>
</html>
