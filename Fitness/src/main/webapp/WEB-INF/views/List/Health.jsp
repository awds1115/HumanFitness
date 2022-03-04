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
<title>요가</title>
</head>

<style>
.depth3{
	margin-top:200px;
	

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
	box-shadow: 1px 1px 0 0 #e5e5e5 inset, -1px -1px 0 0 #e5e5e5 inset;
	}
.depth3 > ul > li > a{
	display:block;
	height:46px;
	line-height:46px;
	text-align:center;box-sizing:border-box;
	color:#484848;padding:0 20px;
	font-size:14px;
	}
.depth3 > ul > li.on{box-shadow:none;}
.depth3 > ul > li.on > a{
	color:#f7f7e4;
	font-weight:600;
	background:#64a19d
	}
	table.general td, table.general th {
    border: 0;
/*     border-top: solid 1px #c2c2c2; */
    border-bottom: solid 1px #c2c2c2;
    border-left: solid 1px #c2c2c2;
    padding: 10px 0;
    text-align: center;
    line-height: 140%;
    vertical-align: middle;
    height: auto;
    color: #252525;
}
table {
    width: 70%;
    border-collapse: collapse;
    border: 0;
    empty-cells: show;
    border-spacing: 0;
}
table.general tbody th{
	border-left:none;
}
table.general thead th{
	border-left:none;
}
table.general {
    border-collapse: collapse;
    border-top: solid 2px #f7941d;
}
</style>
<body>


<jsp:include page="../header.jsp"/>
<div class="depth3">
	<ul>
		<li class="on"><a href="/fit/pt" >PT</a></li>
		<li><a href="/fit/pilates">필라테스</a></li>
		<li><a href="/fit/yoga">요가</a></li>
	</ul>
	<br><br>
		<div id=video align=center></div>
		<div class="slide_text" align=center><br>
			<p class="text-black-50"> 헬스는 근력과 지구력을 길러 주는 데 효과적인 운동 방법 중의 하나입니다.<br>
또한 유연성과 순발력을 키워주는 효과가 있기 때문에, 스트레스에 대한 저항과 의지력 향상에도 도움이 되며 심신의 단련에도 효과적입니다.<br>
뿐만 아니라 체지방을 단시간에 제거하는 데 효과적이고, 균형 잡힌 신체를 만들기에 적절한 운동입니다.
</p>
		</div>
	</div>
	<br><br><br><br><br>
	<table class="general" align=center>
  <caption>
    운영시간:구분,화~금요일,토요일,일요일(공휴일)
  </caption>
  <thead>
    <tr><th class="first" scope="col">구분</th><th scope="col">화~금요일</th><th scope="col">토요일</th><th scope="col">일요일·공휴일</th></tr>
  </thead>
  <tbody>
    <tr><th scope="row">운영시간</th><td>06:00 ~ 23:00</td><td>06:00 ~ 22:00</td><td>08:00 ~ 22:00</td></tr>
    <tr><th scope="row">휴관일</th><td colspan="3">매주 월요일, 신정, 설날·추석연휴, 기타 공단이 지정한날(보수공사 등)</td></tr>
  </tbody>
</table><br>
<table class="general">
  <caption>헬스장 이용요금:성인/청소년/어린이/비고</caption>
  <colgroup><col class="col_w12"><col class="col_w19"><col class="col_w19"><col class="col_w20"><col></colgroup>
  <thead><tr><th class="first" scope="col">구분</th><th scope="col">성인</th><th scope="col">청소년</th><th scope="col">어린이<br>(초등학생 이상)</th><th scope="col">비고</th></tr>
  </thead>
  <tbody>
    <tr><th scope="row">일일입장</th><td colspan="2">4,500원</td><td>3,000원</td><td rowspan="2">입장(발권)시간으로부터 <br><b>2시간</b>(이용 및 정리, 퇴장포함)</td></tr>
    <tr><th scope="row">월회원</th><td>50,000원</td><td>45,000원</td><td>40,000원</td></tr>
  </tbody>
</table>
</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
$(document)
.ready(function(){
	//1~5까지 랜덤
	
	let random=Math.floor(Math.random() * 5) + 16;
	console.log(random);
	$.ajax({url:'/fit/video',
		data:{no:random},
		datatype:'text',
		method:'GET',
		success:function(txt){
			$('#video').append(txt[0]['url']);
			
		}
		})
})

</script>
<script src="<c:url value='/resources/js/scripts.js' />"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</html>