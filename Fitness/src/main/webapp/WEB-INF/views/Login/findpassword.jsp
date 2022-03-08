<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<style>
table {
   boder-collapse:collapse;
   text-align:center;
   width:400px;
   background-color:honeydew;
}
td {
   border:1px solid black;
   width:120px;
}
body {
   background-color:rgb(78, 117, 122);
   text-align:center;
   font-family:serif;
   width:300px;
    height:300px;
    position:absolute;
    left:50%;
    top:50%;
    margin-left:-190px;
    margin-top:-140px;
}
</style>
<body>
<table align=center valign=middle>
    <tr>
        <td align=right>아이디</td>
        <td><input type=text id=userid name=userid size=20></td>
    </tr>
    <tr>
        <td align=right>비밀번호 힌트</td>
        <td><select id=question name=question></select></td>
    </tr>
    <tr>
        <td align=right>답</td>
        <td><input type=text id=answer name=answer size=20></td>
    </tr>
    <tr>
        <td>   
        <input type=button id=search value='찾기'>&nbsp;     
        <input type=button value='취소' id='btnCancel' onclick="location.href='/fit/login'">
      </td>
    </tr>
    </table>
    <table>
        <tr>
        <td><input type=hidden id=password name=password size=20></td>
    </tr>
    </table>
</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
let flag='fasle';
$(document)
.ready(function(){
	resi();
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
	         success:function(txt){
	        	for(i=0; i<txt.length; i++){
				if($('#userid').val()==txt[i]['userid'] &&
				   $("#question option:selected").val(txt[i]['question'])&&	
				   $('#answer').val()==txt[i]['answer']){
					 console.log($("select[name=question] option:selected").val());
					flag='true';
				}
			}
			console.log(flag)
			if(flag=='true'){
				$.ajax({
					url:'/fit/findpassword',
					data:{userid:$('#userid').val(),
						question:$('#question').val(),
						  answer:$('#answer').val()},
					method:'post',
					datatype:'json',
					success:function(txt){
						$('#password').val(txt[0]['password'])
						alert($('#userid').val()+"님의 비밀번호는 "+$('#password').val()+"  입니다");
						location.href='/fit/login'
					}
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
//     	$("#question").val('');
//     	$('#question option').each(function(){
//             if($(this).text()==question){
//                $(this).prop('selected','selected');
//                return false;
//     		}
//     	});
//     	return false;
//     })
    	$(this).find("option[value='" + $(this).val() + "']").text()
        console.log($(this).find("option[value='" + $(this).val() + "']").text());
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
				console.log(txt[i]['q_code']+','+txt[i]['q_type']);
			}
		}
	});
}

</script>
</html>
<!-- 회원으로만가입가능/중복체크무조건 한번 눌러야함 안누르면 가입불가능/ -->
<!-- 닉네임(중복확인)/주민번호(쓸수있으면 정규표현식)/나이/이름/성별/전화번호/아이디(중복확인)/비밀번호/비밀번호확인/주소(빅데이터?)/이메일/질문답변 -->
<!-- 테이블 두개 인서트 (멤버테이블(전부),몸무게테이블(id만)) (몸무게테이블 더 해야됌) -->