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
 table {
  border-collapse: collapse;
  border-spacing: 0;
}
section.notice {
  padding: 80px 0;
}

.page-title {
  margin-bottom: 60px;
}
.page-title h3 {
  font-size: 28px;
  color: #333333;
  font-weight: 400;
  text-align: center;
}

#board-search .search-window {
  padding: 15px 0;
  background-color: #f9f7f9;
}
#board-search .search-window .search-wrap {
  position: relative;
/* 	padding-right: 124px; */
	display: block;
	margin: 20px 0 20px 0;
	float:right;
}
#board-search .search-window .search-wrapper {
	overflow:hidden;
	padding:0 1.3rem;
}
#board-search .search-window .search-wrap input {
  height: 40px;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board-search .search-window .search-wrap select {
  height: 40px;
  width: 300px;
  align: left;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board-search .search-window .search-wrap input:focus {
  border-color: #333;
  outline: 0;
  border-width: 1px;
}
#board-search .search-window .search-wrap .btn {
  width: 108px;
  padding: 0;
  font-size: 16px;
  height:40px;
  margin-bottom:1px;
}

.board-table {
  font-size: 13px;
  width: 100%;
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
}

.board-table a {
  color: #333;
  display: inline-block;
  line-height: 1.4;
  word-break: break-all;
  vertical-align: middle;
}
.board-table a:hover {
  text-decoration: underline;
}
.board-table th {
  text-align: center;
}

.board-table .th-num {
  width: 100px;
  text-align: center;
}

.board-table .th-date {
  width: 200px;
}

.board-table th, .board-table td {
  padding: 14px 0;
}

.board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

.board-table tbody th p{
  display: none;
}

.btn {
  display: inline-block;
  padding: 5px 30px;
  font-size: 15px;
  font-weight: 400;
  background: transparent;
  text-align: center;
  white-space: nowrap;
  vertical-align: middle;
  -ms-touch-action: manipulation;
  touch-action: manipulation;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
  border: 1px solid transparent;
  text-transform: uppercase;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-transition: all 0.3s;
  -moz-transition: all 0.3s;
  -ms-transition: all 0.3s;
  -o-transition: all 0.3s;
  transition: all 0.3s;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

.btn-dark {
  background: #555;
  color: #fff;
}

.btn-dark:hover, .btn-dark:focus {
  background: #373737;
  border-color: #373737;
  color: #fff;
}

/* reset */

* {
  list-style: none;
  text-decoration: none;
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
.clearfix:after {
  content: '';
  display: block;
  clear: both;
}
.container {
  width: 1100px;
  margin: 0 auto;
}
.blind {
  position: absolute;
  overflow: hidden;
  clip: rect(0 0 0 0);
  margin: -1px;
  width: 1px;
  height: 1px;
}
.bno_width{
    width: 10%;
 }
 .writer_width{
    width: 20%;
 }
 .regdate_width{
    width: 15%;
 }
 .updatedate_width{
    width: 15%;
 }

.top_btn{
	font-size: 20px;
  padding: 6px 12px;
  background-color: #fff;
  border: 1px solid #ddd;
  font-weight: 600;
}
.pageInfo_wrap .pageInfo_area {
  padding: 15px 0;
  background-color: #f9f7f9;
  width: 1078px;
}
  .pageInfo{
    list-style : none;
    display: inline-block;
	margin: 20px 0 20px 0;
}
.pageInfo li{
    float: left;
  font-size: 20px;
/*   margin-left: 18px; */
  padding: 7px;
  font-weight: 500;
}

///////////////////////////////////
/* .tbl{
	width:90%;
}
#memAtbl tr, #dlgMemtbl tr {
	border: 1px solid white;
    border-collapse: collapse;
	background-color: rgb(3, 3, 3);
}
td,th{
	text-align: center;
	/* vertical-align:middle;
	padding: 15px;
} */
#search{
	margin-left:45px;
}

.depth3 > ul{
	font-size:0;
	text-align:center;

	}
.depth3 > ul > li{
	display:inline-block;
	vertical-align:top;
	min-width:180px;
	box-sizing:border-box;
	border:1px solid #999;
	border-left:0;
}
.depth3 > ul > li.on{
	border:1px solid #A00000;
}
.depth3 > ul > li > a{
	display:block;
	height:46px;
	line-height:46px;
	text-align:center;
	box-sizing:border-box;
	color:#555;
	padding:0 20px;
	font-size:14px;
	}
.depth3 > ul > li.on > a{
	color:#f7f7e4;
	font-weight:500;
	background:#A00000;
	}
a {
  text-decoration: none;
}
#btnDelete,#btnSlctview {
	border-radius: 5px;
	text-align:center;
	vertical-align:middle;
	border:1px solid #999;
	border-radius:0;
}
#back,#next {
	vertical-align: middle;
	text-align: center;
	align: center;
	padding:3px 10px;
}
/* .divbtn{
	margin: 0 5%;
} */
/* #btnType{
	border-radius: 5px;
	text-align:center;
	align:center;
	vertical-align:middle;
} */
</style>
<body>
<!-- RUD,회원타입(직원,고객)업데이트,회원강퇴,회원조회,회원권환불 -->
<!-- 보이는걸 엑셀식으로 이쁘게해주세요 -->
<!-- 페이징, 회원권이랑 조인해서 조회 -->
<section class="page-section bg-dark text-white">
<jsp:include page="../header.jsp"/>
</section>

<section class="page-section" id="members">
  <div class="page-title">
      <div class="container" align=center>
		<h2>관리자페이지</h2><br><br>
	  </div>
	<div class="depth3">
		<ul>
			<li class="on"><a href="/fit/viewmember" >회원관리</a></li>
			<li><a href="/fit/mship" >운동종류 관리</a></li>
		</ul>
	</div>
  </div>
<div id="board-search">
    <div class="container">
        <div class="search-window">
			<div class="search-wrapper">
				<div style="width: 350px; float:left;" class="search-wrap">
					<button class="btn" id=btnDelete>선택삭제</button>
					<button class="btn" id=btnSlctview>선택조회</button>
				</div>
				<div id='search' class="search-wrap">
					<input type="search" name="findMem" id="findMem"/>
					<button id="btnSearch" class="btn btn-dark">회원검색</button>
				</div>
			</div>	
            </div>
        </div>
    </div>

  <!-- board list area -->
<div id="board-list">
    <div class="container">

	<table id=memAtbl class="board-table" align=center>
		<!-- name,nickname,userid,age,gender,mobile,email,type -->
		<thead>
		<tr><th>\</th><th>이름</th><th>닉네임</th><th>아이디</th><th>나이</th><th>성별</th>
			<th>전화번호</th><th>이메일</th><th>고객/직원</th><th>/</th></tr>
		</thead>
		<tbody></tbody>
	</table>
	
    </div>
    <div id="board-search">
    <div class="container">
        <div class="search-window">
		<button id='back' class="btn btn-light">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-left-square-fill" viewBox="0 0 16 16">
			  <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm10.5 10V4a.5.5 0 0 0-.832-.374l-4.5 4a.5.5 0 0 0 0 .748l4.5 4A.5.5 0 0 0 10.5 12z"/>
			</svg>
		</button>&nbsp;&nbsp;&nbsp;&nbsp;
		<button id='next' class="btn btn-light">
			<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-right-square-fill" viewBox="0 0 16 16">
			  <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm5.5 10a.5.5 0 0 0 .832.374l4.5-4a.5.5 0 0 0 0-.748l-4.5-4A.5.5 0 0 0 5.5 4v8z"/>
			</svg>
		</button>
		</div>
		</div>
		</div>
</div>

</section>

   <div class="bg-dark text-white" id=dlgMemupdate style='display:none;' title='회원관리'>
		<br><h1 align=center>회원 정보</h1><br>
		<input type="hidden" id=_userid name=_userid>
	      <table id=dlgMemtbl class="board-table" align=center>
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
 
 let pageno=0;
$(document)
.ready(function(){
	LoadMember('/fit/member',{});
})

//페이징
.on('click','#next',function(){
	pageno=pageno+1;
		$.ajax({url:'/fit/pagecheck2',
			data:{pageno:pageno},
            datatype:'json',
            method:'get',
            success:function(txt){
				if(txt.length==0){
					alert("마지막 페이지 입니다.");
					pageno=pageno-1;
					return false;
				}
			$.ajax({url:'/fit/paging2',
				data:{pageno:pageno},
				dataType:'JSON',
				method:'GET',
				success:function(txt){
					$('#memAtbl tbody').empty();
					for(i=0; i<txt.length; i++){
					let check='<tr><td><input type=checkbox name="check" value="'+txt[i]['userid']+'"></td>'
  		      		let str='<td>'+txt[i]['name']+'</td><td>'+txt[i]['nickname']+'</td><td>'
  				      		+txt[i]['userid']+'</td><td>'+txt[i]['age']+'</td><td>'
  				      		+txt[i]['gender']+'</td><td>'+txt[i]['mobile']+'</td><td>'
  				      		+txt[i]['email']+'</td><td>'+txt[i]['mtype']+'</td>'
  			  		let button='<td><input type="button" class="btn btn-dark" id=btnType value="회원조회" data-userid='+txt[i]['userid']+'></td></tr>'
  		      		console.log(str);
  		      		$('#memAtbl tbody').append(check+str+button);
  		 			}
				}
			  })
			} // pagecheck
      }) // pagecheckc
})
.on('click','#back',function(){
   pageno=pageno-1;
   if(pageno==-1){
       alert("처음 페이지 입니다.");
       pageno=0;
       return false;
   }
   $.ajax({url:'/fit/pagecheck',
      data:{pageno:pageno},
      datatype:'json',
      method:'get',
      success:function(txt){
    	  console.log(txt);
		   $.ajax({url:'/fit/paging',
		      data:{pageno:pageno},
		      dataType:'JSON',
		      method:'GET',
				success:function(txt){
					$('#memAtbl tbody').empty();
					for(i=0; i<txt.length; i++){
						let check='<tr><td><input type=checkbox name="check" value="'+txt[i]['userid']+'"></td>'
			      		let str='<td>'+txt[i]['name']+'</td><td>'+txt[i]['nickname']+'</td><td>'
					      		+txt[i]['userid']+'</td><td>'+txt[i]['age']+'</td><td>'
					      		+txt[i]['gender']+'</td><td>'+txt[i]['mobile']+'</td><td>'
					      		+txt[i]['email']+'</td><td>'+txt[i]['mtype']+'</td>'
				  		let button='<td><input type="button" class="btn btn-dark" id=btnType value="회원조회" data-userid='+txt[i]['userid']+'></td></tr>'
			      		console.log(str);
			      		$('#memAtbl tbody').append(check+str+button);
			 		}
				}
		   })
      } // pagecheck
   })  // pagecheck
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
			  let button='<td><input type="button" class="btn btn-dark" id=btnType value="회원조회" data-userid='+txt[i]['userid']+'></td></tr>'
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