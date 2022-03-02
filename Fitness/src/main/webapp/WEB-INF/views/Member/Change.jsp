<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
아이디: <input type=text id=id name=id value="${userid.userid }" readonly><br>
닉네임: <input type=text id=nname name=nname value="${userid.nickname }">
	  <input type=button id=dubcheck name=dubcheck value="중복확인"><br>
	  <input type=button id=N_update name=N_update value="수정완료">&nbsp;&nbsp;
	  <input type=button id=exist name=exist value="뒤로가기" onclick="document.location='/fit/Mypage'">
	  
	  
</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
dub="false";
$(document)
.on('click','#dubcheck',function(){
	let flag="true";
	$.ajax({url:'/fit/dubcheck',
		data:{},
		dataType:'json',
		method:'GET',
		success:function(txt){
			
			for(i=0;i<txt.length;i++){
				if($('#nname').val()==txt[i]['nickname']){
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
	if($('#id').val()=="" || $('#nname').val()==""){
				alert("채워지지 않은 값이 있습니다.")
				return false;
			} else if(dub=="false"){
				alert("닉네임 중복확인을 해야 합니다.");
				return false;
			} else{
			$.ajax({url:'/fit/N_update',
				data:{id:$('#id').val(),nname:$('#nname').val()},
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
</script>
</html>