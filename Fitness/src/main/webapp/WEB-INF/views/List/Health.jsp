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
<title>Health</title>
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
<h3 class="h_bul">운영시간</h3>
	<table class="general" align=center>
  <thead>
    <tr><th class="first" scope="col">구분</th><th scope="col">화~금요일</th><th scope="col">토요일</th><th scope="col">일요일·공휴일</th></tr>
  </thead>
  <tbody>
    <tr><th scope="row">운영시간</th><td>06:00 ~ 23:00</td><td>06:00 ~ 22:00</td><td>08:00 ~ 22:00</td></tr>
    <tr><th scope="row">휴관일</th><td colspan="3">매주 월요일, 신정, 설날·추석연휴, 기타 공단이 지정한날(보수공사 등)</td></tr>
  </tbody>
</table><br><br>
<h3 class="h_bul">이용요금</h3>
<table class="general" align=center>
  <thead><tr><th class="first" scope="col">구분</th><th scope="col">회원</th><th scope="col">비고</th></tr>
  </thead>
  <tbody>
    <tr><th scope="row">3개월</th><td>100,000원</td><td rowspan="3">회원권 구매(발권)시간으로부터 <br>만기일 해당 시간까지<b></b></td></tr>
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
<div class="grayBox">
  <ul class="noBul" >
    <li>1. 본 헬스장은 헬스회원 외 입장이 불가하며 기구사용이 불가합니다.</li>
    <li>
      2. 헬스복(공단규정에 준하는)과 실내운동화를 꼭 착용하십시오. (미착용한 회원은 출입이 불가합니다.)<br>
※ 실내용 운동화를 외부에서 미리 착용한 경우 출입이 불가합니다.
    </li>
    <li>3. 운동전에 충분한 준비 운동을 꼭 해야 합니다.</li>
    <li>
      4. 기구는 사용 후 원 위치에 놓아주시고 기구(런닝 , 싸이클 등)에 묻은 땀은
      꼭 닦아주십시오. (운동이 끝난 후 TV 전원 꼭 꺼주세요)
    </li>
    <li>
      5. 기구사용을 모르거나 신체가 허약하신 분은 트레이너와 상담 후 사용해야
      합니다.
    </li>
    <li>
      6. 시설유지와 안전사고 예방을 위하여
      <b class="c_red_1">어린이(미취학 아동)</b> 출입을 금합니다.
    </li>
    <li>
      7. <b class="c_red_1">음주, 흡연, 소란행위 등</b> 피해를 주는 행위를
      회원은 헬스장을 이용할 수 없으며, 발견 시 퇴장조치 합니다.
    </li>
    <li>
      8. <b class="c_red_1">본인의 부주의</b>로 인한 사고는 북부스포츠센터에서 책임지지 않습니다.
    </li>
    <li>
      9. <b class="c_red_1">귀중품</b>은 안내데스크에 보관해 주시고 보관하지
      않은 귀중품에 대해서는 일체 책임지지 않습니다.
    </li>
    <li>
      10. 헬스장 내에서는 절대 <b class="c_red_1">금연, 음식물 반입</b>을
      금합니다.
    </li>
    <li>11. 건강을 위하여 무리한 운동은 피해야 합니다.</li>
    <li>
      12. 헬스장에서는 트레이너 외에 회원 상호 및 외부강사의 지도를 금지합니다.
      문의사항 있을시 트레이너에게 문의하세요.
    </li>
    <li>13. 영업 시작(새벽6시) 및 마감 시간(저녁9시)은 준수하시기 바랍니다.</li>
    <li>14. 위 이용수칙을 지키지 않을시 퇴장조치 하겠습니다.</li>
  </ul>
</div>
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