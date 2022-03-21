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
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<title>회원탈퇴 안내</title>
</head>
<style>
#container{
	margin-top:185px;
	color:white;
	text-align:center;
}
.info{
	width: 90%;
	text-align: center;
	border: 1px solid white;
	background-color: rgb(3, 3, 3);
    position:relative;
}
.info1 {
	width: 90%;
	margin: 0 5%; 
	border-radius:5px;
	border: 1px solid white;
    border-collapse: collapse;
	background-color: white;
	color: rgb(3,3,3);
}
.info2 {
	margin-left: 40px;
}
</style>
<body class='bg-dark'>
<jsp:include page="../header.jsp"/>
<div id="container">
	<div id="content" align=center>
		<div class="c_header">
			<h1>탈퇴 안내</h1>
			<p class="contxt">회원탈퇴를 신청하기 전에 안내 사항을 꼭 확인해주세요.</p>
		</div><br>
	
		<div class="info" align=center valign=middle>
		<div class="info1" align=left>
		<div class="info2">
		<br><h3>사용하고 계신 아이디(${view.userid})는 탈퇴할 경우 재사용 및 복구가 불가능합니다.</h3>
			<p><em>탈퇴한 아이디는 본인과 타인 모두 재사용 및 복구가 불가</em>하오니 신중하게 선택하시기 바랍니다.</p>
			<h3>탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다.</h3>
			<p>회원정보 및 회원권, 북마크, 좋아요 등 개인형 서비스 이용기록은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다.<br>
			   삭제되는 내용을 확인하시고 필요한 데이터는 미리 백업을 해주세요.</p>

			<h3>탈퇴 후에도 게시판형 서비스에 등록한 게시물은 그대로 남아 있습니다.</h3>
			<p>커뮤니티에 올린 게시글 및 댓글은 탈퇴 시 자동 삭제되지 않고 그대로 남아 있습니다.<br>
			   삭제를 원하는 게시글이 있다면 <em>반드시 탈퇴 전 삭제하시기 바랍니다.</em><br>
			   탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, 게시글을 임의로 삭제해드릴 수 없습니다.</p>

			<p class="contxt">
			<strong>탈퇴 후에는 아이디 ${view.userid} 로 다시 가입할 수 없으며 아이디와 데이터는 복구할 수 없습니다.<br>
				게시판형 서비스에 남아 있는 게시글은 탈퇴 후 삭제할 수 없습니다.<br>
				또한, 휴먼 피트니스를 사용해 다른 서비스를 이용 할 수 없게 됩니다.</strong></p>
		</div>
		</div>
		</div>
			
		<div class="dropout_agree_area"><br>
				<input type="checkbox" id="dropoutAgree" name="dropoutAgree">
					<strong>안내 사항을 모두 확인하였으며, 이에 동의합니다.</strong>
			<div style="margin-bottom: 15px;" align=center>
				<input type=button id="btnNext" class="btn btn-secondary" value=확인>
			</div>				
		</div>
	</div>
</div>


	<div id=quitMember2 title=회원탈퇴 style="display:none;">
	    <div class="input-group mb-3" style="width: 500px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 113px;">아이디</span> 
			<input type="text" class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=userid name=userid
				value="${userid}" readonly>
		</div>
		<div class="input-group mb-3" style="width: 500px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 113px;">비밀번호</span> 
			<input type="password" class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=passcode name=passcode>
		</div>
		<div style="margin-bottom: 15px; margin-right: 80px;" align=right>
			<input type=button id=btnquit name=btnquit class="btn btn-secondary" value="탈퇴하기">
		</div>
	</div>
</body>

<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script src='https://code.jquery.com/ui/1.13.0/jquery-ui.js'></script>
<script>
let flag=true;
$(document)

.on('click','#btnNext',function(){
	if($('#dropoutAgree').is(":checked")){
		$('#quitMember2').dialog({
	        width: 550,
	        modal:true
	        })
	} else{
		alert("탈퇴 안내를 확인하고 동의해 주세요.");
		$("#dropoutAgree").focus();
	}
})
.on('click','#btnquit',function(){
	let userid=$('#userid').val();
	
	
	$.ajax({
		url:'/fit/quit',
		data:{},
		dataType:'json',
		method:'post',
		success:function(txt){
			for(let i=0; i<txt.length; i++){
				if($('#userid').val()==txt[i]['id'] && $('#passcode').val()==txt[i]['pw']){
						flag="true";
						break;
				} else {
					console.log(txt);
		            flag="false";   
				}
			}
		},
		complete:function(){
			console.log(flag);
			if(flag=="true"){
				if(confirm("정말 탈퇴하시겠습니까?")==true){
				$.ajax({
					url:'/fit/quitMember',
					data:{id:$('#userid').val()},
					dataType:'text',
					method:'post',
					success:function(txt){
						console.log(txt);
						if(txt=="ok"){
							alert("탈퇴되었습니다.");
							document.location='/fit/home';
						} 
					}
				})
			} else {
				alert("회원탈퇴를 취소하였습니다.");   
				return false;
			}
		} else{
			alert("비밀번호가 맞지 않습니다.");
			return false;
		}
      }
});
})
</script>
 <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
        <!-- Core theme JS-->
                <script src="<c:url value='/resources/js/scripts.js' />"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<!--         <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script> -->
</html>