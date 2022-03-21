<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
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
#imgpush{
	padding:2rem 0; 
	background:#fff; 
	text-align:center; 
	position:relative; 
	height: 600px; 
	overflow:hidden;
	}
#imgpush img{
	max-width:70%; 
	position:absolute; 
	left:50%; top:50%; 
	transform:translate(-50%,-50%);
	}

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
.board-table1 {
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

.board-table1 a {
  color: #333;
  display: inline-block;
  line-height: 1.4;
  word-break: break-all;
  vertical-align: middle;
}
.board-table1 a:hover {
  text-decoration: underline;
}

.board-table th {
  text-align: center;
}
.board-table1 th {
  text-align: center;
}

.board-table .th-num {
  width: 100px;
  text-align: center;
}
.board-table1 .th-num {
  width: 100px;
  text-align: center;
}

.board-table .th-date {
  width: 200px;
}
.board-table1 .th-date {
  width: 200px;
}

.board-table th, .board-table td {
  padding: 14px 0;
}
.board-table1 th, .board-table1 td {
  padding: 14px 0;
}

.board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}
.board-table1 tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: center;
}
.board-table1 tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th p{
  display: none;
}
.board-table1 tbody th p{
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
  float:right;
  
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

#m_quit,#m_update,#ref,#bmi {
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
<section class="page-section" id="mypage">
  <div class="page-title">
      <div class="container" align=center>
		<h1>마이페이지</h1><br><br>
	  </div>
  </div>
  <div class="container" align=center>
	<h3 align=left>
	<svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
	  <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
	  <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
	</svg> 개인정보</h3><br><br>
  </div>
<div id="board-list">
    <div class="container" >
    	<input type=hidden id=id name=id value="${view.userid }">
    <table class="board-table">
		<thead>
    	<tr><th>아이디</th><th>닉네임</th><th>이메일</th><th>전화번호</th><th>주소</th></tr>
    	</thead>
    	<tr><td>${view.userid }</td><td>${view.nickname }</td><td>${view.email }</td><td>${view.mobile }</td><td>${view.address }</td></tr>
    </table>
    </div>
</div>
<div id="board-search">
    <div class="container">
        <div class="search-window">
			<div class="search-wrapper">
				<div style="width: 230px;" class="search-wrap">
			<button class="btn" id=m_update name=m_update style="float:left">수정하기</button>
			<button class="btn" id=m_quit name=m_quit>회원탈퇴</button>  
				</div>
			</div>
		</div>
	</div>
</div><br><br>

  <div class="container" align=center>
	<h3 align=left>
	<svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-pin-angle-fill" viewBox="0 0 16 16">
	  <path d="M9.828.722a.5.5 0 0 1 .354.146l4.95 4.95a.5.5 0 0 1 0 .707c-.48.48-1.072.588-1.503.588-.177 0-.335-.018-.46-.039l-3.134 3.134a5.927 5.927 0 0 1 .16 1.013c.046.702-.032 1.687-.72 2.375a.5.5 0 0 1-.707 0l-2.829-2.828-3.182 3.182c-.195.195-1.219.902-1.414.707-.195-.195.512-1.22.707-1.414l3.182-3.182-2.828-2.829a.5.5 0 0 1 0-.707c.688-.688 1.673-.767 2.375-.72a5.922 5.922 0 0 1 1.013.16l3.134-3.133a2.772 2.772 0 0 1-.04-.461c0-.43.108-1.022.589-1.503a.5.5 0 0 1 .353-.146z"/>
	</svg> 등록 운동</h3><br><br>
  </div>
<div id="board-list">
    <div class="container">
	<table class="board-table">
		<thead>
			<tr><th>\</th><th>운동명</th><th>기간</th><th>시작날짜</th><th>끝나는날짜</th></tr>
		</thead>
		<tbody id="ticket"></tbody>
	</table>
    </div>
</div>
<div id="board-search">
    <div class="container">
        <div class="search-window">
			<div class="search-wrapper">
				<div style="width: 350px;" class="search-wrap">
			<button class="btn" id=ref name=ref>환불신청</button>
				</div>
			</div>
		</div>
	</div>
</div><br><br>

  <div class="container" align=center>
	<h3 align=left>
	<svg xmlns="http://www.w3.org/2000/svg" width="28" height="28" fill="currentColor" class="bi bi-pencil-square" viewBox="0 0 16 16">
	  <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
	  <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
	</svg> BMI 검사</h3><br><br>
  </div>
<div class="mb_container_wrap">
	<div class=b_container>
		<div id="imgpush">
			<img src="https://mblogthumb-phinf.pstatic.net/20160905_4/wyepark_1473053016369wwohQ_PNG/%C4%B8%C3%B3.PNG?type=w800">
		</div><br>
	</div>
</div>

<div id="board-list">
    <div class="container">
<table class="board-table">
<tr><td>
	<table id="graph" class="board-table1">
		<thead>
			<tr><th>저체중</th><th>정상</th><th>과체중</th><th>비만</th><th>고도비만</th></tr>
		</thead>
		<tbody>
			<tr><td>1 ~ 18.5</td><td>18.6 ~ 23</td><td>24 ~ 25</td><td>26 ~ 30</td><td>31 이상</td></tr>
		</tbody>
	</table>
	
	<table class="board-table1">
		<c:if test="${view2.weight!=0 }">
			<tr><td class="input-group mb-3" style="margin:auto; width:800px;" >
			     <span class="input-group-text" id="inputGroup-sizing-default" style="width:100px;">몸무게(kg)</span>
			     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
			           id=weight name=weight value="${view2.weight }">&nbsp;&nbsp;
				 <span class="input-group-text" id="inputGroup-sizing-default" style="width:100px;">키(cm)</span>
			     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
			           id=height name=height value="${view2.height }">           
			</td></tr>
		</c:if>
		<c:if test="${view2.weight ==0 }">
			<tr><td class="input-group mb-3" style="margin:auto; width:800px;" >
		    	<span class="input-group-text" id="inputGroup-sizing-default" style="width:100px;">몸무게(kg)</span>
		    	<input type="text" class="form-control" id=weight name=weight placeholder="입력란">&nbsp;&nbsp;
			 	<span class="input-group-text" id="inputGroup-sizing-default" style="width:100px;">키(cm)</span>
		     	<input type="text" class="form-control" id=height name=height placeholder="입력란">           
			</td></tr>
		</c:if>
		<tr><td class="input-group mb-3" style="margin:auto; margin-top:20px; height:60px; width:800px;" >
	     	<span class="input-group-text" style="width:100px;">BMI</span>
	     	<input type="number" class="form-control" id=bmicheck name=bmicheck readonly>&nbsp;&nbsp;
	     	<input type="text" class="form-control" id=bmicheck2 name=bmicheck2 readonly>         
		</td></tr>
	</table>

</td></tr>
</table>

    </div>
</div>
<div id="board-search">
    <div class="container">
        <div class="search-window">
			<div class="search-wrapper">
				<div style="width: 350px;" class="search-wrap">
			<button class="btn" id=bmi name=bmi >검사하기</button>
				</div>
			</div>
		</div>
	</div>
</div><br><br> 


<div id=pscheck title='비밀번호 확인' style="display:none;"><br>
	<div class="input-group mb-3" style="width:500px; margin:auto;" >
  		<span class="input-group-text" id="inputGroup-sizing-default"style="width:90px;" >비밀번호</span>
    	<input type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
          id=passw name=passw style="text-overflow: ellipsis;">
	</div>
</div>
</section>

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
$(document)
.ready(function(){
	 loadticket();
})
.on('click','#ref',function(){
	$("input[name='ticketed']:checked").each(function(){
		
		$.ajax({url:'/fit/ticketed',
				data:{id:$('#id').val(), sports:$(this).val()},
				dataType:'text',
				method:'GET',
				success:function(txt){
					if(txt=="ok"){
						alert("환불이 완료되었습니다.");
						 loadticket()
					} else{
						alert("환불이 불가능 합니다.");
					}
				}
		})
	})
})
.on('click','#bmi',function(){
	$.ajax({url:'/fit/weight',
		data:{id:$('#id').val(),weight:$('#weight').val(),height:$('#height').val()},
		dataType:'text',
		method:'GET',
		success:function(txt){
			alert("등록되었습니다.");
// 			 (몸무게) / (키)2
			let ki=parseInt($('#height').val())*0.01;
			let height=(ki*ki);
			let jisu=(parseInt($('#weight').val())/height);
			$('#bmicheck').val(Math.round(jisu * 100)/100);
			let bmi=$('#bmicheck').val();
			$('#imgpush').empty();
			if(bmi<=18.5){
				$('#bmicheck2').val("저체중 입니다.");
				let img='<img src="https://w.namu.la/s/965536d94030c0f6a04e0ab8e22ea85f800e754c1a79869b3236c439db6c44e7e1d0b12e33dcb711d9a6e7b6b4379a63c0da89564a7e3416ebd7a4baf1f1235603002bc14c3313ab54ec816df9a75427">';
				$('#imgpush').append(img);
			} else if(bmi<=23){
				$('#bmicheck2').val("정상체중 입니다.");
				let img='<img src="https://as1.ftcdn.net/v2/jpg/04/85/26/50/1000_F_485265085_6Johrxs5C2cWewA1sCxuivBmLCQNtU0I.jpg">';
				$('#imgpush').append(img);
			} else if(bmi<=25){
				$('#bmicheck2').val("과체중 입니다.");
				let img='<img src="https://img.freepik.com/free-vector/overweight-boy-cute-chubby-child-cartoon-character_87946-461.jpg">';
				$('#imgpush').append(img);
			} else if(bmi<=30){
				$('#bmicheck2').val("비만 입니다.");
				let img='<img src="https://img.hankyung.com/photo/cts/201705/9d49ebbbe4c07c8bc0a9d47c5944ab18.jpg">';
				$('#imgpush').append(img);
			} else {
				$('#bmicheck2').val("고도비만 입니다.");
				let img='<img src="http://openimage.interpark.com/goods_image_big/8/9/7/6/8913288976_l.jpg">';
				$('#imgpush').append(img);
			}
		}
	})
})
.on('click','#m_update',function(){
	$('#pscheck').dialog({
        width: 600,
        modal: true,
        draggable: true,
        buttons: {
     	   "확인": function() {
     		   $.ajax({url:'/fit/pwCheck',
	     			data:{id:$('#id').val()},
	     			dataType:'json',
	     			method:'GET',
	     			success:function(data){
	     				if($('#passw').val()==data[0]['pw']){
	     					alert("확인되었습니다.");
	     					document.location='/fit/M_update';
	     					return true;
	     				} else {
	     					alert("비밀번호가 맞지 않습니다.");
	     					return false;
	     				}
	     			}
     			})
     	   }
 		}
	})
})
.on('click','#m_quit',function(){
	document.location='/fit/delinfo';
})

function loadticket(){
	$.ajax({url:'/fit/ticketing',
		data:{id:$('#id').val()},
		dataType:'json',
		method:'GET',
		beforeSend:function(){
			$('#ticket').empty();
		},
		success:function(data){
			for(i=0;i<data.length;i++){
				sports_name=data[i]['name'].split("  ");
				let str="<tr><td><input type=radio id='ticketed' name='ticketed' value='"+data[i]['name']+"'></td><td>"+sports_name[0]+"</td><td>"+sports_name[1]+"</td><td>"
						+data[i]['start']+"</td><td>"+data[i]['end']+"</td></tr>"
				$('#ticket').append(str);
			}
		}
})
}
</script>
</html>