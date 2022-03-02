<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
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
       <link type="text/css" href="${pageContext.request.contextPath}/resources/assets/dist/css/bootstrap.min.css" rel="stylesheet">`
<meta charset="UTF-8">
<title>회원탈퇴</title>
</head>

<style>
table {
	border-collapse:collapse;
	border:solid 1px white;
}
td {
	border:2px solid white;
	padding:10px 10px;
	--bs-text-opacity: 1;
/* 	color: rgba(255, 255, 255, 0.5) !important; */
}
h1 {
	font-weight: 700;
}
.contact-section {
  padding-top: 5rem;
  background: linear-gradient(to top, #000 0%, rgba(0, 0, 0, 0.9) 75%, rgba(0, 0, 0, 0.8) 100%);
  
}
</style>

<body>
<h1 class="text-white mb-4">회원 탈퇴</h1><br>
<table align=center>
<tr><td class=td>이름</td>
	<td><input class=sub type=text name=name id=name></td></tr>
<tr><td class=td>아이디</td>
	<td><input class=sub type=text name=userid id=userid></td></tr>
<tr><td class=td>비밀번호</td>
	<td><input class=sub type="password" name=passcode id=passcode></td></tr>
<tr><td class=td>모바일번호</td>
	<td><input class=sub type=text name=mobile id=mobile></td></tr>
<tr><td colspan=2 align=center>
		<input type=button id=btnquit value='탈퇴'>&nbsp;&nbsp;
		<input type=button id=btnback value='취소' onclick='document.location="/fit/home"'>
	</td></tr>
</table>
</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
$(document)
.on('click','#btnquit',function(){
	let userid=$('#userid').val();
	let flag=true;
	
	$.ajax({
		url:'/fit/quit',
		data:{},
		dataType:'json',
		method:'post',
		success:function(txt){
			console.log(txt);
			for(let i=0; i<txt.length; i++){
				if($('#userid').val()==txt[i]['id'] && $('#passcode').val()==txt[i]['pw']
					&& $('#name').val()==txt[i]['name'] && $('#mobile').val()==txt[i]['mobile']){
						flag="true";
						break;
				} else {
					console.log(txt);
		            flag="false";   
				}
			}
		},
		complete:function(){
			if(flag=="true"){
				alert("탈퇴되었습니다");
				$.ajax({
					url:'/fit/quitMember',
					data:{id:$('#userid').val()},
					dataType:'text',
					method:'post',
					success:function(txt){
						console.log(txt);
						if(txt=="ok"){
							document.location='/fit/home';
						} else {
							document.location='/fit/M_quit';
						}
					}
				})
			} else {
				alert("존재하지 않는 회원입니다");   
			}
      }
});
})
</script>
</html>