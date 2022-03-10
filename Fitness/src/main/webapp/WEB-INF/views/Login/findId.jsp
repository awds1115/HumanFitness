<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
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

</style>

<body>
<div class="m_container">
<div>
                <a href="home" style="font-size:40px; text-decoration:none">Human Fitness</a>
</div><br><br>
	 <h3 style="color:black;">아이디찾기</h3>
	 <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >이메일</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=email name=email>
     </div>      
     <div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >실명</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=name name=name>
	</div>
	 <div id=dlgid class="input-group mb-3" title="아이디 찾기" style="width:500px; margin:auto; display:none;">
     <table align=center style="font-size:30px"><tr><td>찾으신 아이디는</td><td id=userid></td><td>입니다.</td></tr></table>
     
	</div>
		<div style="margin-bottom:15px;">
               <input type="button" class="btn btn-secondary" value="아이디찾기" id=search name=btnLogin 
               		style=" font-size:20px; width:300px;">
      		
      	<ul style="padding-left: 0rem; margin-top:20px;">
      		<li><a href="login" style="text-decoration:none">로그인</a></li>
      		<li><a href="findpw" style="text-decoration:none">비밀번호찾기</a></li>
      	</ul>
      	</div>
</div>
<jsp:include page="../footer.jsp"/>
</body>
<script src="http://code.jquery.com/jquery-3.5.0.js"></script>
<script src='https://code.jquery.com/ui/1.13.0/jquery-ui.js'></script>
<script>
let flag='false'; //이거는 참인지 아닌지 판별하기 위한 도구(변수)
$(document)
.on('click','#search',function() {
	if ($('#email').val()=='') {
		alert("이메일이 비었습니다.");
		return false;
	}else if($('#name').val()=='') {
		alert("실명이 비었습니다.");
		return false;
	} else{ // 이메일하고 실명이 비었는지 확인하고 아작스를 불러온다.
		
	 $.ajax({
	  	 url:"/fit/findIdcheck",
         data:{}, //해당 파라미터에 안넣을거니까 아무런 데이터도 적지않는다(비교만 한다는뜻)
         dataType:'json',
         method:'post',
         beforeSend:function(){
        	flag='false'; 
         },
         success:function(txt){
        	 for(i=0; i<txt.length; i++){
            if($('#email').val()==txt[i]['email'] &&
               $('#name').val()==txt[i]['name']){
				flag='true';
				//*여기서 for문 돌리면서 해당 이메일 이름있는지 그리고 두개 조건이 맞는지 다 돌려본다..
            }  
         }
        	 console.log(flag);
        	 if(flag=='true'){
            	$.ajax({
            		url:"/fit/findId",
            		data:{email: $('#email').val(),name:$('#name').val()}, 
            		method:'post',
            		datatype:'json',
            		success:function(txt){
            			$('#dlgid').dialog({
            		        width: 550,
            		        resizable:false,
          					open:function(){
          						$('#userid').empty();
          						$('#userid').append(txt[0]['userid']);
          					}
            		        })
            			//findID쪽에서 이메일과 이름이 맞으면 아이디가 출력되게
            		}
                })
        	 } else {
        		 //findIdcheck 쪽에서 해당 이메일과 이름이 맞지 않으면 이쪽으로
        		 alert('이메일, 이름이 맞지 않습니다.');
        		 return false;
        	 }
         } 
      });

	}
});
    </script>
    </html>