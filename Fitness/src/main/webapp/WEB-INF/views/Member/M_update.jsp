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
		<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
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
.input-group mb-3{
	width:500px; 
	margin:auto;
}
</style>
<body class='bg-dark' class="page-section text-white">
<jsp:include page="../header.jsp"/>


	<div class=m_container>
		<div class="input-group mb-3" style="width: 500px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 113px;">아이디</span> <input type="text"
				class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=id name=id
				value="${view.userid }" readonly>
		</div>
		<div class="input-group mb-3" style="width: 500px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 113px;">비밀번호</span> <input type="password"
				class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=pw name=pw
				value="${view.password }">
		</div>
		<div class="input-group mb-3" style="width: 500px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 113px;">비밀번호확인</span> <input type="password"
				class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=pw2 name=pw2
				value="${view.password }">
		</div>
		<div class="input-group mb-3" style="width: 500px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 113px;">닉네임</span> <input type="text"
				class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=nname name=nname
				value="${view.nickname }"> <input type=button id=change
				name=change value="닉네임변경">
		</div>
		<div class="input-group mb-3" style="width: 500px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 113px;">이메일</span> <input type="text"
				class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=email name=email
				value="${view.email }">
		</div>
		<div class="input-group mb-3" style="width: 500px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default" style="width: 113px;">전화번호</span>
			<input type="text" class="form-control"
				aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=phone name=phone
				value="${view.mobile }">
		</div>
		<div class="input-group mb-3" style="width: 500px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 113px;">주소</span> <input type="text"
				class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" style="text-overflow: ellipsis;" id=road name=road
				value="${view.address }">
				<input type="button" id=findPost value="주소 찾기">
		</div>
		<div style="margin-bottom: 15px;" align=center>
			<input type="button" class="btn btn-secondary" value="수정하기"
				id=mupdate name=mupdate>
			<input type=button class="btn btn-secondary" value=뒤로가기 
				onclick="document.location='mypage'">
		</div>
	</div>
	
	
	
	
	<div id=dlgMenu title=닉네임변경 style="display:none;">
    <div class="input-group mb-3" style="width: 500px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 113px;">닉네임</span> <input type="text"
				class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=nname2 name=nname2
				value="${view.nickname }"> <input type=button class="btn btn-secondary" id=dubcheck
				name=dubcheck value="중복확인">
		</div>
			<div style="margin-bottom: 15px; margin-right: 30px;" align=right>
				<input type=button id=N_update name=N_update class="btn btn-secondary" value="수정완료">
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
<script src='https://code.jquery.com/ui/1.13.0/jquery-ui.js'></script>
<script>
dub="false";
$(document)
.on('click','#change',function(){
	   $('#dlgMenu').dialog({
	        width: 600
	        })
	    })
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
.on('click','#dubcheck',function(){
	let flag="true";
	$.ajax({url:'/fit/dubcheck',
		data:{},
		dataType:'json',
		method:'GET',
		success:function(txt){
			
			for(i=0;i<txt.length;i++){
				if($('#nname2').val()==txt[i]['nickname']){
					console.log(txt[i]['nickname']);
					flag="false"
					break;
				} else{
					console.log(txt[i]['nickname']);
					flag="true";
					
				}	
			}
		if(flag=="true"){
			alert("해당 닉네임은 사용이 가능합니다.");
			dub="true";
		} else {
			alert("이미 사용중인 닉네임 입니다.");
		}
		}
	})
})
.on('click','#N_update',function(){
	if($('#nname2').val()==""){
				alert("닉네임을 작성하세요")
				return false;
			} else if(dub=="false"){
				alert("닉네임 중복확인을 해야 합니다.");
				return false;
			} else{
			$.ajax({url:'/fit/N_update',
				data:{id:$('#id').val(),nname:$('#nname2').val()},
				datatype:'text',
				method:'GET',
				success:function(txt){
					alert('수정되었습니다.');
					document.location='/fit/mypage';
				}
				})
			}
	return true;
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