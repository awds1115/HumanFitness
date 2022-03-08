<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<body>
<!-- form태그랑 ajax같이 쓰지 말것. -->
<table align=center valign=middle>
    <tr>
        <td align=right>이메일</td>
        <td><input type=text id=email name=email size=20></td>
    </tr>
    <tr>
        <td align=right>이름</td>
        <td><input type=text id=name name=name size=20></td>
    </tr>
    <tr>
        <td align=right>찾은 아이디</td>
        <td><input type=text id=userid name=userid readonly size=20></td>
        
    </tr>
    <tr>
        <td align = left>   
        <input type=button id="search" value='찾기'>&nbsp;  
        <input type=button value='취소' id='btnCancel' onclick="location.href='/fit/login'">
        <input type=button id="password" value='비밀번호찾기' onclick="location.href='/fit/findpw'">
      </td>
    </tr>
    </table>
</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
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
            			$('#userid').val(txt[0]['userid']);
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