<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
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
	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
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

input::placeholder {
  font-size: 10px;
}
</style>
<body>
<div class="m_container" >
<div>
                <a href="home" style="font-size:40px; text-decoration:none">Human Fitness</a>
</div><br><br>
	 <h3 style="color:black;">비밀번호 찾기</h3>
	 <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >아이디</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=userid name=userid maxlength="15" >
     </div>      
     <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >질문</span>
     <select  aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=question name=question style="width:411px;"></select>
	</div>
		 <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >답변</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=answer name=answer>
     </div>   
		<div style="margin-bottom:15px;">
               <input type="button" class="btn btn-secondary" value="비밀번호 찾기" id=search name=search 
               		style=" font-size:20px; width:300px;">
      		
      	<ul style="padding-left: 0rem; margin-top:20px;">
      		<li><a href="login" style="text-decoration:none">로그인</a></li>
      	</ul>
      	</div>
</div>

	 <div id=dlgpw class="input-group mb-3" title="비밀번호 변경" style="width:500px; margin:auto; display:none;">
     	<div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:130px; " >비밀번호</span>
     <input type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=password name=password placeholder = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요." maxlength="16">
     </div>    
     <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:130px;" >비밀번호 확인</span>
     <input type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=password2 name=password2 maxlength="16">
     </div>        
     <div style="margin-bottom:15px;">
               <input type="button" class="btn btn-secondary" value="비밀번호 변경" id=pwchange name=pwchange 
               		style=" font-size:20px; width:300px; margin-left:35%;">
	</div>
		</div>
<jsp:include page="../footer.jsp"/>
</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script src='https://code.jquery.com/ui/1.13.0/jquery-ui.js'></script>
<script>
let flag='false';
$(document)
.ready(function(){
	resi();
	
})
.on('click','#pwchange',function(){
	if(password_check($('#password').val())){
	     return false;
	 }if($('#password').val()==($('#password2').val())){
		$.ajax({
			url:'/fit/changepw',
			data:{userid:$('#userid').val(),
				  password:$('#password').val()},
			method:'post',
			dataType:'text',
			success:function(txt){
				console.log(txt);
				if(txt=="ok"){
					alert('비밀번호가 변경되었습니다.');
					location.href='/fit/login';
				}
			}
		})
	}else{
		alert('비밀번호가 다릅니다');
		return false;
	}
})
.on('click','#search',function() {
	if ($('#email').val()=='') {
		alert("이메일이 비었습니다.");
		return false;
	}else if($('#name').val()=='') {
		alert("실명이 비었습니다.");
		return false;
	} else{
		 $.ajax({
		  	 url:"/fit/findPasswordcheck",
	         data:{}, //해당 파라미터에 안넣을거니까 아무런 데이터도 적지않는다(비교만 한다는뜻)
	         dataType:'json',
	         method:'post',
	         beforeSend:function(){
	        	flag='false'; 
	         },
	         success:function(txt){
	        	 
	        	for(i=0; i<txt.length; i++){
				if($('#userid').val()==txt[i]['userid'] &&
				   $("#question option:selected").val()==txt[i]['question'] &&	
				   $('#answer').val()==txt[i]['answer']){
					flag='true';
				}
			}
			console.log(flag)
			if(flag=='true'){
				$('#dlgpw').dialog({
    		        width: 550,
    		        resizable:false
    		        })
			} else{
				alert('아이디,질문과 답변이 맞지 않습니다.');
				return false;
			}
			}
		});	
	}
})





.on("change","#question",function(){
    $(this).find("option[value='" + $(this).val() + "']").text()
});

function resi(){
	$.ajax({
		url:'/fit/questlist',
		data:{},
		datatype:'json',
		method:'post',
		success:function(txt){
			for(i=0; i<txt.length; i++){
				let str='<option value='+txt[i]['q_code']+'>'+txt[i]['q_type']+'</option>';
				$('#question').append(str);
			}
		}
	});
}

function password_check(){ /*비밀번호 정규식*/
    let regex_password = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,15}$/
    var password = $('#password').val();
    if(!regex_password.test(password) ) {
    	alert("비밀번호를 제대로 입력해주세요")
        return true
    }    
}


</script>
</html>
<!-- 회원으로만가입가능/중복체크무조건 한번 눌러야함 안누르면 가입불가능/ -->
<!-- 닉네임(중복확인)/주민번호(쓸수있으면 정규표현식)/나이/이름/성별/전화번호/아이디(중복확인)/비밀번호/비밀번호확인/주소(빅데이터?)/이메일/질문답변 -->
<!-- 테이블 두개 인서트 (멤버테이블(전부),몸무게테이블(id만)) (몸무게테이블 더 해야됌) -->