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
<title>회원정보수정</title>
</head>
<style>
.button_base {
    margin: 0;
    border: 0;
    font-size: 18px;
    position: relative;
    top: 50%;
    left: 50%;
    margin-top: -25px;
    margin-left: -100px;
    width: 200px;
    height: 50px;
    text-align: center;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    cursor: default;
}
.back {
    width: 33%;
    height: 200px;
    float: left;
    background-color: #eeeeee;
    border: 10px;
    border-color: #ffffff;
    border-style: solid;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    counter-increment: bc;
    padding: 0px 5px 5px 5px;
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
.button_base:hover {
    cursor: pointer;
}

.b01 {
    color: #000000;
    border: #000000 solid 1px;
    padding: 10px;
    background-color: #ffffff;
}

.b01:hover {
    color: #ffffff;
    background-color: #000000;
}
.m_container{
	margin-top:200px;

}
</style>
<body>
<jsp:include page="../header.jsp"/>	

<div class=m_container align=center>
아이디: <input type=text id=id name=id value="${userid.userid }" readonly><br>
비밀번호: <input type=password id=pw name=pw><br>
비밀번호 확인: <input type=password id=pw2 name=pw2><br>
닉네임: <input type=text id=nname name=nname value="${userid.nickname }" readonly>
	  <input type=button id=change name=change value="닉네임변경" onclick="document.location='/fit/change'"><br>
이메일: <input type=text id=email name=email value="${userid.email }" ><br>
전화번호: <input type=text id=phone name=phone value="${userid.mobile }" ><br>
<input type="text" id="postcode" placeholder="우편번호">
<input type="button" id=findPost value="우편번호 찾기"><br>
주소: <input type="text" id="road" placeholder="도로명주소" size="60" value="${userid.address }" ><br>
<span id="guide" style="color:#999;display:none"></span>
		<div class="back">
	<div class="button_base b01" id=mupdate name=mupdate >수정완료</div>
	</div>
</div>

</body>

<script src="<c:url value='/resources/js/scripts.js' />"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
$(document)
.on('click','#mupdate',function(){
	if($('#id').val()=="" || $('#pw').val()=="" || $('#nname').val()=="" || $('#email').val()=="" ||
	   $('#phone').val()=="" || $('#road').val()==""){
		alert("채워지지 않은 값이 있습니다.")
	}
	$.ajax({url:'/fit/Mupdate',
		data:{id:$('#id').val(),pw:$('#pw').val(),nname:$('#nname').val(),email:$('#email').val(),phone:$('#phone').val(),address:$('#road').val()},
		datatype:'text',
		method:'GET',
		success:function(txt){
			alert('수정되었습니다.');
			document.location='/fit/mypage';
		}
		})
return true;
})
.on('click','#findPost',function(){
	execDaumPostcode();
})
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {

                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                $('#postcode').val(data.zonecode); 
                $("#road").val(roadAddr);
            }
        }).open();
    }
</script>
</html>