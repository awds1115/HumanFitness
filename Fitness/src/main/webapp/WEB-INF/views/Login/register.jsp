<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
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
.btn span.glyphicon {    			
	opacity: 0;				
}
.btn.active span.glyphicon {				
	opacity: 1;				
}

input::placeholder {
  font-size: 12px;
}
</style>
<body>
<div class="m_container" style="color:black;">
<div>
                <a href="home" style="font-size:40px; text-decoration:none">Human Fitness</a>
</div><br><br>
	 <h3 style="color:black;">회원가입</h3>
	 <div class="input-group mb-3" style="width:500px; margin:auto;">
     <input type="hidden" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=number name=number>
	</div>
	 <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:130px;" >아이디</span>
     <input type="text" class="form-control" aria-label="Sizing example input" style="width:44%;" aria-describedby="inputGroup-sizing-default"
           id=userid name=userid>

     <input type="button" class="form-control" aria-label="Sizing example input" id=check value=중복확인 aria-describedby="inputGroup-sizing-default" onclick="doubleCheck()">
     </div>  
         
     <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:130px;" >비밀번호</span>
     <input type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=password name=password >
	</div>
	
	 <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:130px;" >비밀번호 확인</span>
     <input type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=passcode name=passcode>
	</div>
	
     <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:130px;" >닉네임</span>
     <input type="text" class="form-control" aria-label="Sizing example input" style="width:44%;" aria-describedby="inputGroup-sizing-default"
           id=passcode name=passcode>
     <input type="button" class="form-control" aria-label="Sizing example input" onclick="nickCheck()" id=check value=중복확인 aria-describedby="inputGroup-sizing-default">
	</div>
	
	 <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:130px;" >주민번호</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=humanid name=id=humanid placeholder="-없이 입력하세요">-
     <input type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=humanid2 name=id=humanid2 max=6>
	 </div>
	 
	 <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:130px;" >나이</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=age name=age>
	</div>
	
	 <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:130px;" >이름</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=name name=name>
	</div>
	
	
	 <div class="input-group mb-3" style="width:500px; margin:auto; ">
	 <div class="btn-group" data-toggle="buttons">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:130px;" >성별</span>
	 
			<label class="btn btn-info">
				<input type="radio" name="gender" id="gender"  autocomplete="off" style="width:125px;">
				<span class="glyphicon glyphicon-ok">남성</span>
			</label>
		
			<label class="btn btn-danger">
				<input type="radio" name="gender" id="gender" autocomplete="off" style=" width:125px;">
				<span class="glyphicon glyphicon-ok">여성</span>
			</label>
			</div>
	</div>
	
	 <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:130px;" >전화번호</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=mobile name=mobile placeholder="-없이 입력하세요" >-
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=mobile1 name=mobile1>-
    <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=mobile2 name=mobile2>
	</div>
	
	<div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:130px;" >주소</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=postcode  placeholder="우편번호" >
     
     <input type="button" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=findPost  value="우편번호 찾기"><br>
	</div>
	<div class="input-group mb-3" style="width:500px; margin:auto;">
    <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=address name="address" placeholder="도로명주소" size="60">
	</div>
	
	<div class="input-group mb-3" style="width:500px; margin:auto;">
    <span class="input-group-text" id="inputGroup-sizing-default" style="width:130px;" >이메일</span>
    <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=eamil name="eamil">
	</div>
	
	<div class="input-group mb-3" style="width:500px; margin:auto;">
    <span class="input-group-text" id="inputGroup-sizing-default" style="width:130px;" >비밀번호 힌트</span>
     <select  aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=question name=question style="width:74%;"></select>
	</div>
 
 	<div class="input-group mb-3" style="width:500px; margin:auto;">
    <span class="input-group-text" id="inputGroup-sizing-default" style="width:130px;" >답</span>
    <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=answer name="answer">
	</div>
	
		<div style="margin-bottom:15px;">
               <button class="btn btn-secondary" id=frmsign name=frmsign 
               	 style=" font-size:20px; width:300px;">가입완료</button>
      		
      	<ul style="padding-left: 0rem; margin-top:20px;">
      		<li><a href="login" style="text-decoration:none">취소</a></li>
      	</ul>
    </div>
    
</div>
<jsp:include page="../footer.jsp"/>
</body>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
let flag="";
let flag2="";
$(document)
.ready(function(){
	resi();
})
.on('click','#frmsign',function(){ //submit이 공백이면 false 공백이없으면 true
   if($('input[name=userid]').val()==''){
      alert('아이디를 적으세요');
    	 return false;
   }else if(flag!="true") {
		alert('ID 중복검사를 진행해주세요.');
		return false;
   }if($('input[name=password]').val()==''){
	    alert('비밀번호를적으세요');
	     return false;
  }if($('input[name=passcode]').val()==''){
	     alert('비밀번호를확인을 적으세요');
	     return false;
  }if($('input[name=password]').val()!=$('input[name=passcode]').val()){
		    alert('비밀번호와 비밀번호확인이 다릅니다.');
		  return false;
  }if(flag2!="true") {
		alert('닉네임 중복검사를 진행해주세요.');
		return false;
  }if($('input[name=nickname]').val()==''){
    alert('별명을 적으세요');
    	 return false;
   }if($('input[name=human_id]').val()=='' && $('input[name=human_id2]').val()==''){
	     alert('주민번호를 적으세요');
	     return false;
  }if($('input[name=age]').val()==''){
	    alert('나이를적으세요');
   	 return false;
  }if($('input[name=name]').val()==''){
	     alert('실명을적으세요');
	     return false;
  }if($('input:radio[name=gender]').is(':checked')==false){
		 alert('성별을 선택하세요');
		 return false;
   }if($('input[name=mobile]').val()=='' && $('input[name=mobile2]').val()=='' &&
	   $('input[name=mobile3]').val()==''){
	    alert('전화번호를 적으세요');
   	 return false;
  }if($('input[name=address]').val()==''){
	     alert('주소를 적으세요');
	     return false;
 }if($('input[name=email]').val()==''){
	    alert('이메일을 적으세요');
  	 return false;
 }if($('input[name=question]').val()==''){
	     alert('질문이 비어있습니다.');
	     return false;
 }if($('input[name=answer]').val()==''){
     alert('답을 적으세요');
     return false;
	}else {
			$.post('register',
				{
					userid: $('#userid').val(),
					password: $('#password').val(),
					nickname: $('#nickname').val(),
					human_id: $('#human_id').val()+"-"+$('#human_id2').val(),
					age: $('#age').val(),
					name: $('#name').val(),
					number: $('#number').val(),
					gender:$('input[name="gender"]:checked').val(),
					mobile: $('#mobile').val()+"-"+$('#mobile2').val()+"-"+$('#mobile3').val(),
					address: $('#address').val(),
					email: $('#email').val(),
					question: $('#question').val(),
					answer: $('#answer').val(),
				},
				function(txt) {
					console.log(txt);
						if(txt=="ok"){
							alert("회원가입이 완료되었습니다.");
							document.location="login";
						} else {
							alert("회원가입에 실패하였습니다.");
							return false;
						}
				}, 'text');
		}
 return true;
	})

.on('click','#findPost',function(){
	   execDaumPostcode();
	})

function resi(){
	$.ajax({
		url:'/fit/questionList',
		data:{},
		datatype:'json',
		method:'get',
		beforeSend:function(){
		},
		success:function(txt){
			for(i=0; i<txt.length; i++){
				let str='<option value='+txt[i]['q_code']+'>'+txt[i]['q_type']+'</option>';
				$('#question').append(str);
			}
		}
	});
}

function doubleCheck() {
	if($('#userid').val()==""){
		alert('아이디를 작성하고 눌러주세요.');
		return false;
	} else{
		$.post('id_check', /*중복 */
			{ userid: $('#userid').val() },
			function(txt) {
				if (txt == 'fail') {
					alert('해당 아이디는 이미 사용중인 아이디 입니다.');
					return false;
				} else { /*중복 아니면 */
					alert('사용 가능한 아이디 입니다.');
					flag="true";
				}
			}, 'text');
	return true;
	}
	};

function nickCheck() {
	if($('#nickname').val()==""){
		alert('닉네임을 작성하고 눌러주세요.');
		return false;
	} else{
		$.post('nickname_check',
			{ nickname: $('#nickname').val() },
			function(txt) {
				if (txt == 'fail') {
					alert('해당 닉네임은 이미 사용중인 닉네임 입니다.');
					return false;
				} else {
					alert('사용 가능한 닉네임 입니다.');
					flag2="true";
				}
			}, 'text');
	return true;
	}
};


function execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {

            var roadAddr = data.roadAddress; 
            var extraRoadAddr = ''; 

            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
          
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
          
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

          
            $('#postcode').val(data.zonecode); 
            $("#address").val(roadAddr);
        }
    }).open();
}

</script>
</html>
<!-- 회원으로만가입가능/중복체크무조건 한번 눌러야함 안누르면 가입불가능/ -->
<!-- 닉네임(중복확인)/주민번호(쓸수있으면 정규표현식)/나이/이름/성별/전화번호/아이디(중복확인)/비밀번호/비밀번호확인/주소(빅데이터?)/이메일/질문답변 -->
<!-- 테이블 두개 인서트 (멤버테이블(전부),몸무게테이블(id만)) (몸무게테이블 더 해야됌) -->