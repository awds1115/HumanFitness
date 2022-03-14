<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
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
</head>
<style>
.tbl{
	width:90%;
}
#memAtbl tr {
	border: 1px solid white;
    border-collapse: collapse;
	background-color: rgb(3, 3, 3);
}
td,th{
	text-align: center;
	/* vertical-align:middle; */
	padding: 15px;
}
.search{
	margin-right:45px;
}
/* .depth3{
	margin-top:200px;
	} */
.depth3 > ul{
	font-size:0;
	text-align:center;

	}
.depth3 > ul > li{
	display:inline-block;
	vertical-align:top;
	min-width:180px;
	box-sizing:border-box;
	box-shadow: 1px 1px 0 0 #e5e5e5 inset, -1px -1px 0 0 #e5e5e5 inset;
	}
.depth3 > ul > li > a{
	display:block;
	height:46px;
	line-height:46px;
	text-align:center;
	box-sizing:border-box;
	color:#cccccc;
	padding:0 20px;
	font-size:14px;
	}
.depth3 > ul > li.on > a{
	color:#f7f7e4;
	font-weight:500;
	background:#A00000;
	}
a {
/*   color: rgb(233, 22, 36); */
  text-decoration: none;
}
</style>
<body class="bg-dark">
<!-- RUD,회원타입(직원,고객)업데이트,회원강퇴,회원조회,회원권환불 -->
<!-- 보이는걸 엑셀식으로 이쁘게해주세요 -->
<!-- 페이징, 회원권이랑 조인해서 조회 -->
<jsp:include page="../header.jsp"/>
<section class="page-section text-white" id="members">
<h1 align=center class="text-white font-weight-bold">관리자페이지</h1><br>
<div class="depth3">
	<ul>
		<li class="on"><a href="/fit/viewmember" >회원관리</a></li>
		<li><a href="/fit/mship" >운동종류 관리</a></li>
	</ul>
</div>
<table class=tbl align=center>
<tr><td align=right>
	<div align=right class=search>
		<input type="text" name="findMem" id="findMem"/>
		<button id="btnSearch" class="submit submit_button">회원검색</button>
	</div>
</td></tr>
<tr><td align=center>
	<table id=memAtbl class="mb-4" align=center>
		<!-- name,nickname,userid,age,gender,mobile,email,type -->
		<thead>
		<tr><th>\</th><th>이름</th><th>닉네임</th><th>아이디</th><th>나이</th><th>성별</th>
			<th>전화번호</th><th>이메일</th><th>고객/직원</th><th>/</th></tr>
		</thead>
		<tbody></tbody>
	</table>
		<input type=button id=btnDelete value="선택삭제">&nbsp;&nbsp;
		<input type=button id=btnSlctview value="선택조회">
</td></tr>
</table>
</section>

   <div class="bg-dark text-white" id=dlgMemupdate style='display:none;' title='회원관리'>
		<br><h1 align=center>회원 정보</h1><br>
		<input type="hidden" id=_userid name=_userid>
	      <table id=dlgMemtbl align=center>
			<thead>
				<tr><th>아이디</th><th>이름</th><th>닉네임</th><th>나이</th><th>성별</th>
					<th>전화번호</th><th>이메일</th><th>주소</th></tr>
			</thead>
			<!-- userid,password,nickname,age,name,gender,mobile,address,email,mtype -->
			<tbody></tbody>
		</table><br>
		<table id=updatetbl align=center>
			<tr><td><select id=mtype name=mtype size=1 style="width: 200px; height: 30px;"></select></td></tr>
		</table><br>
   </div>
   
<jsp:include page="../footer.jsp"/>
   
</body>
<script src="<c:url value='/resources/js/scripts.js' />"></script>
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<!-- * *                               SB Forms JS                               * *-->
<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script src='https://code.jquery.com/ui/1.13.0/jquery-ui.js'></script>
<script>
$("#findMem").keypress(function(e){
	if(e.keyCode == 13) {
		LoadMember('/fit/findmember',{keyword:$('#findMem').val()});
	}
 })
$(document)
.ready(function(){
	LoadMember('/fit/member',{});
})
//검색기능
.on('click','#btnSearch',function(){
	LoadMember('/fit/findmember',{keyword:$('#findMem').val()});
})
//선택삭제
.on('click','#btnDelete',function() {
   if($('input[name=check]:checked').length==0) {
      alert('하나 이상 체크하세요.');
      return false;
   }
   let check='';
   $('input[name=check]:checked').each(function() {
      check+=$(this).val()+",";
   });
   console.log(check);
   Delete({check:check});
})
//다이얼로그 선택조회 
.on('click', '#btnSlctview', function() {
	if($('input[name=check]:checked').length==0) {
      alert('하나 이상 체크하세요.');
      return false;
   }
   let check='';
   $('input[name=check]:checked').each(function() {
      check+=$(this).val()+",";
   });
	   console.log(check);
   $('#dlgMemupdate').dialog({
       width: 1200,
       modal: true,
       draggable: true,
       buttons: {
    	   "Update": function() { Update('/fit/memsupdate',{check:check, type:$('#mtype').val()});},
		   "Delete": function() { Delete({check:check});}
		},
       open: function () {
    	   mTypeList();
    	   $.ajax({
    			url:'/fit/viewmeminfo',
    			data:{check:check},
    	   		dataType:'json',
    	   		method:'GET',
    	   		beforeSend:function(){$('#dlgMemtbl tbody').empty();},
    	   		success:function(txt){
    	   			let id='';
    	   			let userid=check.split(",");
	    			for(i=0; i<txt.length; i++){
	    				id=txt[i]['userid'];
	        	   		for(j=0; j<userid.length; j++){
	    				if(userid[j]==id) {
		    				let str='<tr><td>'+txt[i]['userid']+'</td><td>'
		    					+txt[i]['name']+'</td><td>'+txt[i]['nickname']+'</td><td>'
		    					+txt[i]['age']+'</td><td>'+txt[i]['gender']+'</td><td>'
		    					+txt[i]['mobile']+'</td><td>'+txt[i]['email']+'</td><td>'
		    					+txt[i]['address']+'</td></tr>'
		    				$('#dlgMemtbl tbody').append(str)
	    			}}}}
			});
		}
	});
})
//다이얼로그 회원조회
.on('click', '#btnType', function() {
   $('#_userid').val($(this).attr('data-userid'));
   $('#dlgMemupdate').dialog({
       width: 1200,
       modal: true,
       draggable: true,
       buttons: {
    	   "Update": function() { Update('/fit/memupdate',{userid:$('#_userid').val(), type:$('#mtype').val()})},
		   "Delete": function() { Delete({userid:$('#_userid').val()});}
		},
       open: function () {
    	   mTypeList();
    	   $.ajax({
    			url:'/fit/viewmeminfo',
    			data:{userid:$('#_userid').val()},
    	   		dataType:'json',
    	   		method:'GET',
    	   		beforeSend:function(){ $('#dlgMemtbl tbody').empty(); },
    	   		success:function(txt){
    	   			let id=''
    				for(i=0; i<txt.length; i++){
    					id=txt[i]['userid'];
    					if($('#_userid').val()==id) {
	    					let str='<tr><td>'+txt[i]['userid']+'</td><td>'
	    						+txt[i]['name']+'</td><td>'+txt[i]['nickname']+'</td><td>'
	    						+txt[i]['age']+'</td><td>'+txt[i]['gender']+'</td><td>'
	    						+txt[i]['mobile']+'</td><td>'+txt[i]['email']+'</td><td>'
	    						+txt[i]['address']+'</td></tr>'
	    					$('#dlgMemtbl tbody').append(str)
				   }}}
    		 });
		 }
	});
})
function Update(updateUrl,updateData){
	$.ajax({
		url:updateUrl,
		data:updateData,
   		datatype:'text',
   		method:'GET',
   		success:function(txt){
   			alert("수정되었습니다.");	
   			document.location='/fit/viewmember'; 
   		}
	});
}
function Delete(deleteData){
	if(!confirm("정말 삭제하시겠습니까?")) return false;
	$.ajax({
		url:'/fit/memdelete',
		data:deleteData,
   		datatype:'text',
   		method:'GET',
   		success:function(txt) {
            console.log(txt);
            if(txt=="ok") {
               alert('삭제 완료.');
               document.location='/fit/viewmember';
            } else { alert('다시 삭제해주세요.'); }
         }
	});
}
function LoadMember(loadMUrl,loadMData){
	$.ajax({
		url:loadMUrl,
		data:loadMData,
		dataType:'json',
		method:'GET',
		beforeSend:function(){ $('#memAtbl tbody').empty(); },
		success:function(txt){
		   for(i=0; i<txt.length; i++){
		      let check='<tr><td><input type=checkbox name="check" value="'+txt[i]['userid']+'"></td>'
		      let str='<td>'+txt[i]['name']+'</td><td>'+txt[i]['nickname']+'</td><td>'
				      +txt[i]['userid']+'</td><td>'+txt[i]['age']+'</td><td>'
				      +txt[i]['gender']+'</td><td>'+txt[i]['mobile']+'</td><td>'
				      +txt[i]['email']+'</td><td>'+txt[i]['mtype']+'</td>'
			  let button='<td><input type="button" id=btnType value="회원조회" data-userid='+txt[i]['userid']+'></td></tr>'
		      console.log(str);
		      $('#memAtbl tbody').append(check+str+button);
		 }}
	})
}
function mTypeList(){
	$.ajax({url:'/fit/mtypelist',
	   	data:{},
	   	datatype:'json',
	   	method:'get',
	   	beforeSend:function(){ $('#mtype').empty(); },
	   	success:function(txt){
	      	$('#mtype').append('<option selected>고객/직원</option>');
	      	for(i=0; i<txt.length; i++){
	         	let str='<option value='+txt[i]['mtype_code']+'>'+txt[i]['mtype']+'</option>'
	         	console.log(str);
	         	$('#mtype').append(str);
	      }}
	});
}
</script>
</html>