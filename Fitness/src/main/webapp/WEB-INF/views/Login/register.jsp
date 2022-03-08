<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
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
<form method="POST" action="/fit/register" id=frmsign>
<table align=center valign=middle>
    <tr>
        <td align=right>아이디</td>
        <td><input type=text id=userid name=userid size=20></td>
        <td><input type=button value="중복확인"  onclick="doubleCheck()"></td>
    </tr>
    <tr>
        <td align=right>비밀번호</td>
        <td><input type=password id=password name=password size=20></td>
    </tr>
    <tr>
        <td align=right>비밀번호 확인</td>
        <td><input type=password id=passcode name=passcode size=20></td>
    </tr>
    
    <tr>
        <td align=right>닉네임</td>
        <td><input type=text id=nickname name=nickname size=20></td>
        <td><input type=button value="닉네임중복확인" onclick="nickCheck()"></td>
    </tr>	
    <tr>
        <td align=right>주민번호</td> 
        <td><input type=text id=human_id name=human_id size=14></td>
    </tr>
    <tr>
        <td align=right>나이</td>
        <td><input type=text id=age name=age size=3></td>
    </tr>
    <tr>
        <td align=right>이름</td>
        <td><input type=text id=name name=name size=20></td>
    </tr>
     <tr>
        <td align=right></td>
        <td><input type=hidden id=number name=number value="2" readonly size=20 ></td> 
    </tr>
    <tr>
        <td align=right>성별</td>
        <td><input type=radio name=gender value=남성>남성<br>
            <input type=radio name=gender value=여성>여성</td>
    </tr>
    <tr>
        <td align=right>전화번호</td>
        <td><input type=text id=mobile name=mobile size=20></td>
    </tr>
    <tr>
    <td>
      <input type="text" id="postcode" placeholder="우편번호">
	  <input type="button" id=findPost value="우편번호 찾기"><br>
	  주소: <input type="text" id="address" name="address" placeholder="도로명주소" size="60" ><br>
    </td>
    </tr>
    <tr>
        <td align=right>이메일</td>
        <td><input type=text id=email name=email size=20></td>
    </tr>
    <tr>
        <td align=right>비밀번호 힌트</td>
        <td><select id=question name=question>
        </select><td>
    </tr>
    <tr>
        <td align=right>답</td>
        <td><input type=text id=answer name=answer size=20></td>
    </tr>
    <tr>
        <td align = left>   
        <input type=submit value='가입완료'>&nbsp;
        <input type=reset value='비우기'>&nbsp;        
        <input type=button value='취소' id='btnCancel' onclick="location.href='/fit/home'">
      </td>
    </tr>
    </table>
    </form>
</body>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
let flag="";
$(document)
.ready(function(){
	resi();
})

.on('submit','#frmsign',function(){ //submit이 공백이면 false 공백이없으면 true
   if($('input[name=userid]').val()==''){
      alert('아이디를 적으세요');
    	 return false;
   }if(flag!="true") {
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
  }if(flag!="true") {
		alert('닉네임 중복검사를 진행해주세요.');
		return false;
  }if($('input[name=nickname]').val()==''){
    alert('별명을 적으세요');
    	 return false;
   }if($('input[name=human_id]').val()==''){
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
   }if($('input[name=mobile]').val()==''){
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
			$.post('/register',
				{
					userid: $('#userid').val(),
					password: $('#password').val(),
					nickname: $('#nickname').val(),
					human_id: $('#human_id').val(),
					age: $('#age').val(),
					name: $('#name').val(),
					number: $('#number').val(),
					gender:$('#gender').val(),
					mobile: $('#mobile').val(),
					address: $('#address').val(),
					email: $('#email').val(),
					question: $('#question').val(),
					answer: $('#answer').val(),
				},
				function(txt) {

				}, 'text');
		}
	})

.on('click','#findPost',function(){
	   execDaumPostcode();
	})
	
.on("change", "#userid", function() {
		$("#flag").val("0");
		$("#flag").val("중복확인");
	});

//.on("change", "#nickname", function() {
//	$("#flag1").val("0");
//});

function addClick() {

	$("#userid").val("");
	$("#name").val("");
	$("#mobile").val("");

	$("#userid").css({
		"readonly": "false"
	});
}

function emptyStr(str) {
    if (typeof str == "undefined" || str == null || str == "")
        return true;

    return false;
}

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
				console.log(txt[i]['q_code']+','+txt[i]['q_type']);
			}
		}
	});
}

function doubleCheck() {
	if (emptyStr($("#userid").val())) {
		alert('ID를 작성하지 않았습니다.');

		return false;
	}
	else {
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
	}

	return true;
};

function nickCheck() {
	if (emptyStr($("#nickname").val())) {
		alert('닉네임를 작성하지 않았습니다.');
		return false;
	}
	else {
		$.post('nickname_check',
			{ nickname: $('#nickname').val() },
			function(txt) {
				if (txt == 'fail') {
					alert('해당 닉네임은 이미 사용중인 닉네임 입니다.');
					return false;
				} else {
					alert('사용 가능한 닉네임 입니다.');
					flag="true";
				}
			}, 'text');
	}
	return true;
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