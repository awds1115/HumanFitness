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
	margin-top:100px;
	

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
	text-decoration:none;
	}
.depth3 > ul > li.on{box-shadow:none;}
.depth3 > ul > li.on > a{
	color:#f7f7e4;
	font-weight:600;
	background:#A00000;
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
table.general li {
    line-height: normal;
    padding-bottom: 5px;
    text-align: left;
}
.hmar{
margin-left:15%;
}

.h_bul {
    font-size: 1.25em;
    background: url(https://www.cfmc.or.kr/_kor/designer/images/section/sub_bul_1.gif) 0 4px no-repeat;
    padding: 0 0 10px 15px;
    color: #f7941d;
    font-size: 1.25em;
    background-position: 0 5px;
    padding: 0 0 10px 15px;
    height: auto;
    line-height: 100%;
    margin-left:15%;
}
.c_blue2{
    font-weight: 400;
    -webkit-text-size-adjust: none;
    font-size: 1em;
    font-family: 'NanumGothic', sans-serif;
    margin: 0;
    padding: 0;
    border: 0;
    list-style: none;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    line-height: 180%;
    padding-bottom: 10px;
    color: #2681d5;
    margin-left:15%;
    }
    .grayBox{
    margin-bottom:5%;
    margin-left:15%;
    margin-right:15%;
    
    font-weight: 400;
    color: #252525;
    -webkit-text-size-adjust: none;
    font-size: 1em;
    font-family: 'NanumGothic', sans-serif;
    
    border: 0;
    list-style: none;
    -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
    background: #f2f2f2;
    padding: 25px 30px;
    }
.noBul{
	list-style:none;
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
#board-search .search-window .search-wrap .btn {
  width: 108px;
  padding: 0;
  font-size: 16px;
  height:40px;
  margin-bottom:1px;
}
#zzzi{
	border-radius: 5px;
   text-align:center;
   vertical-align:middle;
   border:1px solid #999;
   border-radius:0;
}
#board-search{
	padding-left: 19.5%;
}
</style>
<body >
<input type=hidden id=usertype name=usertype value="${type }">
<section class="page-section bg-dark text-white">
<jsp:include page="../header.jsp"/>
</section><br><br><br>
      <div class="container" align=center>
      <h1>YOGA</h1>
     </div>
<div class="depth3">
	<ul>
		<li><a href="/fit/health" >헬스</a></li>
		<li><a href="/fit/pt" >PT</a></li>
		<li><a href="/fit/pilates">필라테스</a></li>
		<li class="on"><a href="/fit/yoga">요가</a></li>
	</ul>
	<br><br>
		<div id=video align=center></div>
		<div class="slide_text" align=center><br>
			<p class="text-black-50">요가는 명상과 호흡, 스트레칭 등을 결합하여 심신의 균형 있는 발달을 돕고 바른 자세와 골격 강화에 도움이 된다. 
			<br>또한 이완과 명상을 통해 마음의 평화와 안정을 가져다주어 피로 및 스트레스 해소 효과도 있다.</p>
		</div>
            <div class="container px-4 px-lg-5 text-center">
                <a class="btn btn-primary btn-xl" href="#about">회원권 구매</a>
            </div>
	</div>
	<br><br><br><br><br>
<h3 class="h_bul">운영시간</h3>
	<table class="general" align=center>
  <thead>
    <tr><th class="first" scope="col">구분</th><th scope="col">화~금요일</th><th scope="col">토요일</th><th scope="col">일요일·공휴일</th></tr>
  </thead>
  <tbody>
    <tr><th scope="row">운영시간</th><td>09:00 ~ 20:00</td><td>09:00 ~ 19:00</td><td>09:00 ~ 19:00</td></tr>
    <tr><th scope="row">휴관일</th><td colspan="3">매주 월요일, 신정, 설날·추석연휴, 기타 공단이 지정한날(보수공사 등)</td></tr>
  </tbody>
</table><br><br>
<h3 class="h_bul">이용요금</h3>
<table class="general" align=center>
  <thead><tr><th class="first" scope="col">구분</th><th scope="col">회원</th><th scope="col">비고</th></tr>
  </thead>
  <tbody>
    <tr><th scope="row">3개월</th><td>100,000원</td><td rowspan="3">회원권 구매(발권)날짜로부터 <br>만기일 해당 날짜까지<b></b></td></tr>
    <tr><th scope="row">6개월</th><td>200,000원</td></tr>
    <tr><th scope="row">12개월</th><td>400,000원</td></tr>
  </tbody>
</table><br><br>
<h3 class="h_bul">감면기준</h3>
<table class="general" align=center>

  <tbody>
    <tr>
      <th class="center" scope="row">50%감면</th>
      <td>
        <ul class="list">
          <li>장애인(단,1~3급은 보호자 1인 포함)</li>
          <li>국가유공자</li>
          <li>의사상자</li>
          <li>만 65세 이상의 노인</li>
          <li>만 18세 미만 자녀가 있는 세자녀 이상 가정</li>
          <li>기초생활수급자</li>
        </ul>
      </td>
    </tr>
  </tbody>
</table>
<p class="c_blue2">
  <b>※ 감면대상자는 관련 증빙자료를 현장방문 하여 안내데스크에 제출바랍니다.</b>
</p>
 <div id="board-search" style="margin-bottom: 65px; width: 85%;">
        	<div class="search-window ">    
				<div class="search-wrap">
					<input type="button" class="btn" value="구매하기" id=zzzi name=zzzi>
				</div>  
            </div>
    </div>
<div class="grayBox">
  <ul class="noBul" >
    <li>1. 본 클래스는 요가회원 외 입장이 불가하며 기구사용도 불가합니다.</li>
    <li>
      2. 요가 수업이 시작하지 10분 전에는 입장 해주셔야 합니다.
       수업 시작 이후, 늦게 오시는 분들은 수강이 불가합니다.
    </li>
    <li>3. 운동전에 충분한 준비 운동을 꼭 해야 합니다.</li>
    <li>
      4. 모든 요가 수업은 1시간 동안 진행됩니다. 단, 오후12시 수업은 50분 동안 진행됩니다.
    </li>
    <li>
      5. 수업 시 마스크 착용을 의무로 해야하며, 개인매트 및 개인 소도구를 이용합니다.
    </li>
    <li>
      6. 시설유지와 안전사고 예방을 위하여
      <b class="c_red_1">어린이(미취학 아동)</b> 출입을 금합니다.
    </li>
    <li>
      7. <b class="c_red_1">음주, 흡연, 소란행위 등</b> 피해를 주는 행위를
      회원은 클래스를 이용할 수 없으며, 발견 시 퇴장조치 합니다.
    </li>
    <li>
      8. <b class="c_red_1">본인의 부주의</b>로 인한 사고는 휴먼 피트니스 에서 책임지지 않습니다.
    </li>
    <li>
      9. <b class="c_red_1">귀중품</b>은 안내데스크에 보관해 주시고 보관하지
      않은 귀중품에 대해서는 일체 책임지지 않습니다.
    </li>
    <li>
      10. 클래스 내에서는 절대 <b class="c_red_1">금연, 음식물 반입</b>을
      금합니다.
    </li>
    <li>11. 건강을 위하여 무리한 운동은 피해야 합니다.</li>
    <li>12. 위 이용수칙을 지키지 않을시 퇴장조치 하겠습니다.</li>
  </ul>
</div>
<jsp:include page="../footer.jsp"/>
</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
$(document)
.ready(function(){
	//1~5까지 랜덤
	
	let random=Math.floor(Math.random() * 5) + 1;
	$.ajax({url:'/fit/video',
		data:{no:random},
		datatype:'text',
		method:'GET',
		success:function(txt){
			$('#video').append(txt[0]['url']);
			
		}
		})
})
.on('click','#zzzi',function(){
	if($('#usertype').val()==0){
		alert("로그인을 하셔야 구매가 가능합니다.");
		document.location="login";
	} else{
		document.location="buyMship";
	}
})
</script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
        <!-- Core theme JS-->
                <script src="<c:url value='/resources/js/scripts.js' />"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</html>