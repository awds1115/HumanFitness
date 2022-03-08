<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>마이페이지</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css?family=Roboto+Condensed');

input{
　border-left-width:0;
　border-right-width:0;
　border-top-width:0;
　border-bottom-width:1;
}

.back {
    width: 33%;
    height: 200px;
/*     float: left; */
    background-color: #eeeeee;
    border: 10px;
    border-color: #ffffff;
    border-style: solid;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    counter-increment: bc;
    padding: 0px 5px 5px 5px;
    text-align: center;
    margin-left:auto;
    margin-right:auto;
}


@media screen and (max-width: 1260px) {
    .back {
        width: 50%;
    }
}

@media screen and (max-width: 840px) {
    .back {
        width: 100%;
    }
}



.m_container{
	margin-top:200px;
	text-align:center;
	width:50%;
	color:white;
	float:right;
}
.b_container{
	float: left;
	margin-top:200px;
	margin-left:100px;
}
</style> 
<body class='bg-dark' class="page-section text-white">
<jsp:include page="../header.jsp"/>

<div class=m_container >

<div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >아이디</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=id name=id value="${userid.userid }" readonly>
</div>
<div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >닉네임</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=nname name=nname value="${userid.nickname }" readonly>
</div>
<div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >이메일</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=email name=email value="${userid.email }" readonly>
</div>
<div class="input-group mb-3" style="width:500px; margin:auto;">
     <span class="input-group-text" id="inputGroup-sizing-default"  >전화번호</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=phone name=phone value="${userid.mobile }" readonly>
</div>
<div class="input-group mb-3" style="width:500px; margin:auto;" >
     <span class="input-group-text" id="inputGroup-sizing-default"style="width:90px;" >주소</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=address name=address value="${userid.address }" style="text-overflow: ellipsis;" readonly>
</div>

		<div style="margin-bottom:15px; ">
               <input type="button" class="btn btn-secondary" value="수정하기" id=m_update name=m_update >
               <button type="button" class="btn btn-secondary" id=m_quit name=m_quit style="margin-left:70px;">회원탈퇴</button>
               
      	</div>
</div>
	<div class=b_container>
	
<c:if test="${userid2.weight!=0 }">
<div class="input-group mb-3" style="width:500px; margin:auto;" >
     <span class="input-group-text" id="inputGroup-sizing-default"style="width:97px;">몸무게(kg)</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=weight name=weight value="${userid2.weight }">
	 <span class="input-group-text" id="inputGroup-sizing-default"style="width:90px;">키(cm)</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=height name=height value="${userid2.height }">           
</div>

</c:if>
<c:if test="${userid2.weight ==0 }">
<div class="input-group mb-3" style="width:500px; margin:auto;" >
     <span class="input-group-text" id="inputGroup-sizing-default"style="width:97px;">몸무게(kg)</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=weight name=weight placeholder="입력란">
	 <span class="input-group-text" id="inputGroup-sizing-default"style="width:90px;">키(cm)</span>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=height name=height placeholder="입력란">           
</div>
</c:if>
		<div class="input-group mb-3" style="width:500px; margin:auto; margin-top:20px; height:60px;" >
     <span class="input-group-text" id="inputGroup-sizing-default"style="width:90px;">BMI</span>
     <input type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=bmicheck name=bmicheck readonly>
     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
           id=bmicheck2 name=bmicheck2 readonly>           
</div>
		<div style="margin-bottom: 15px;" align=center>
		<input type="button" class="btn btn-secondary" value="등록하기" id=bmi name=bmi ><br>
		</div>
	
	</div>
<!-- 프로필사진 다른거 다하고 시간이좀 남았을때 시도해보기,키-몸무게수정,입력된 몸무게에 대한 bmi지수 -->
<!-- 회원탈퇴,회원정보수정(닉네임(중복확인),비밀번호,이메일,전화번호,주소) -->

</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
$(document)
.on('click','#bmi',function(){
	$.ajax({url:'/fit/weight',
		data:{id:$('#id').val(),weight:$('#weight').val(),height:$('#height').val()},
		dataType:'text',
		method:'GET',
		success:function(txt){
			alert("등록되었습니다.");
// 			 (몸무게) / (키)2
			let ki=parseInt($('#height').val())*0.01;
			let height=(ki*ki);
			let jisu=(parseInt($('#weight').val())/height);
			$('#bmicheck').val(Math.round(jisu * 100)/100);
			let bmi=$('#bmicheck').val();
			if(bmi<=18.5){
				$('#bmicheck2').val("저체중 입니다.");
			} else if(bmi<=23){
				$('#bmicheck2').val("정상체중 입니다.");
			} else if(bmi<=25){
				$('#bmicheck2').val("과체중 입니다.");
			} else if(bmi<=30){
				$('#bmicheck2').val("비만 입니다.");
			} else {
				$('#bmicheck2').val("고도비만 입니다.");
			}
		}
	})
})
.on('click','#m_update',function(){
	passw=prompt("비밀번호를 입력하세요");
	$.ajax({url:'/fit/pwCheck',
		data:{id:$('#id').val()},
		dataType:'json',
		method:'GET',
		success:function(data){
			if(passw==data[0]['pw']){
				alert("확인되었습니다.");
				document.location='/fit/M_update';
				return true;
			} else{
				alert("비밀번호가 맞지 않습니다.");
				return false;
			}
		}
		})
})
.on('click','#m_quit',function(){
	document.location='/fit/delInfo';
})
</script>
<script src="<c:url value='/resources/js/scripts.js' />"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</html>