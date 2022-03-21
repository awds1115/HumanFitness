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
  text-align: center;
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
#mupdate,#back {
	border-radius: 5px;
	text-align:center;
	vertical-align:middle;
	border:1px solid #999;
	border-radius:0;
	padding-left: 19.5%;
}
</style>
<body>
<section class="page-section bg-dark text-white">
<jsp:include page="../header.jsp"/>
</section>
<section class="page-section">
<br><br>
  <div class="page-title">
      <div class="container" align=center>
			<h1 align=center>개인정보 수정</h1>
	  </div>
  </div>
<div id="board-list">
    <div class="container" >
    <table class="board-table">
	<tr><td>
		<div class="input-group mb-3" style="width: 800px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 140px;">아이디</span> 
			<input type="text" class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=id name=id
				value="${view.userid }" readonly>
		</div>
		<div class="input-group mb-3" style="width: 800px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 140px;">비밀번호</span> 
			<input type="password" class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=pw name=pw
				value="${view.password }">
		</div>
		<div class="input-group mb-3" style="width: 800px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 140px;">비밀번호확인</span> 
			<input type="password" class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=pw2 name=pw2
				value="${view.password }">
		</div>
		<div class="input-group mb-3" style="width: 800px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 140px;">닉네임</span> 
			<input type="text" class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=nname name=nname
				value="${view.nickname }"> 
			<input type=button class="btn btn-dark" id=change name=change value="닉네임변경">
		</div>
		<div class="input-group mb-3" style="width: 800px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 140px;">이메일</span> 
			<input type="text" class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=email name=email
				value="${view.email }">
		</div>
		<div class="input-group mb-3" style="width: 800px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default" style="width: 140px;">전화번호</span>
			<input type="text" class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=phone name=phone
				value="${view.mobile }">
		</div>
		<div class="input-group mb-3" style="width: 800px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 140px;">주소</span> 
			<input type="text" class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" style="text-overflow: ellipsis;" id=road name=road
				value="${view.address }">
			<input type="button" class="btn btn-dark" id=findPost value="주소 찾기">
		</div>
	</td></tr>
	</table>
	</div>
</div>
	
<div id="board-search">
    <div class="container">
        <div class="search-window">
			<div class="search-wrapper">
		<div class="search-wrap">
			<button class="btn" id=mupdate name=mupdate>수정하기</button>
			<button class="btn" id=back onclick="document.location='mypage'">뒤로가기</button>
		</div>
			</div>
		</div>
	</div>
</div><br><br>

</section>

	<div id=dlgMenu title=닉네임변경 style="display:none;"><br>
    	<div class="input-group mb-3" style="width: 500px; margin: auto;">
			<span class="input-group-text" id="inputGroup-sizing-default"
				style="width: 113px;">닉네임</span> 
			<input type="text" class="form-control" aria-label="Sizing example input"
				aria-describedby="inputGroup-sizing-default" id=nname2 name=nname2
				value="${view.nickname }"> 
			<input type=button class="btn btn-dark" id=dubcheck name=dubcheck value="중복확인">
		</div>
    </div>
</body>
<script src="<c:url value='/resources/js/scripts.js' />"></script>
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<!-- * *                               SB Forms JS                               * *-->
<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script src='https://code.jquery.com/ui/1.13.0/jquery-ui.js'></script>
<script>
dub="false";
$(document)
.on('click','#change',function(){
	   $('#dlgMenu').dialog({
	        width: 600,
	        modal: true,
	        draggable: true,
	        buttons: {
	      	   "Update": function() {
	      			if($('#nname2').val()==""){
	      				alert("닉네임을 작성하세요")
	      				return false;
	      			} else if (dub=="false") {
	      				alert("닉네임 중복확인을 해야 합니다.");
	      				return false;
	      			} else {
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
	      	   }
	        }
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