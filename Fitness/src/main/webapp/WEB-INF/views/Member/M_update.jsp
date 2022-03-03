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

<table class=m_container align=center>
<tr><th></th><th><h1>회원정보 수정</h1></th></tr>
<tr><td align=right>아이디</td><td><input type=text id=id name=id value="${userid.userid }" readonly></td></tr>
<tr><td align=right>비밀번호</td><td><input type=password id=pw name=pw value="${userid.password }"></td></tr>
<tr><td align=right>비밀번호 확인</td><td><input type=password id=pw2 name=pw2 value="${userid.password }"></td></tr>
<tr><td align=right>닉네임</td><td><input type=text id=nname name=nname value="${userid.nickname }" size="10" readonly>
	  				   <input type=button id=change name=change value="닉네임변경" onclick="document.location='/fit/change'"></td></tr>
<tr><td align=right>이메일 </td><td><input type=text id=email name=email value="${userid.email }" ></td></tr>
<tr><td align=right>전화번호</td><td> <input type=text id=phone name=phone value="${userid.mobile }" ></td></tr>
<tr><td align=right></td><td><input type="text" id="postcode" placeholder="우편번호" size="5"><input type="button" id=findPost value="우편번호 찾기"></td></tr>
<tr><td align=right>주소 </td><td><input type="text" id="road" placeholder="도로명주소" size="30" value="${userid.address }" ></td></tr>
</table>
	<div class="back">
	<div class="button_base b01" id=mupdate name=mupdate >수정완료</div>
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
if($('#pw').val()!=$('#pw2').val()){
	alert('비밀번호가 일치하지 않습니다.');
	return false;
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
                $("#road").val(roadAddr);
            }
        }).open();
    }
</script>
</html>