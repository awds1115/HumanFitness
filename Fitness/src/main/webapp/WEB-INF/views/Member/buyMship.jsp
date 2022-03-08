<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원권 결제</title>
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
    --color_0: 255,255,255;
    --color_1: 0,0,0;
    --color_2: 255,255,255;
    --color_3: 237,28,36;
    --color_4: 0,136,203;
    --color_5: 255,203,5;
    --color_6: 114,114,114;
    --color_7: 176,176,176;
    --color_8: 255,255,255;
    --color_9: 114,114,114;
    --color_10: 176,176,176;
    --color_11: 3,3,3;
    --color_12: 68,68,68;
    --color_13: 102,102,102;
    --color_14: 153,153,153;
    --color_15: 255,255,255;
    --color_16: 79,18,22;
    --color_17: 147,54,62;
    --color_18: 233,22,36;
    --color_19: 242,149,155;
    --color_20: 249,185,189;
    --color_21: 38,21,67;
    --color_22: 58,29,107;
    --color_23: 76,42,133;
    --color_24: 141,111,194;
    --color_25: 200,186,225;
    --color_26: 11,71,45;
    --color_27: 21,143,90;
    --color_28: 32,214,135;
    --color_29: 131,228,186;
    --color_30: 173,241,212;
    --color_31: 45,50,47;
    --color_32: 89,99,94;
    --color_33: 134,149,141;
    --color_34: 178,198,188;
    --color_35: 223,248,235;
    --font_0: normal normal normal 100px/1.4em lulo-clean-w01-one-bold,lulo-clean-w05-one-bold,sans-serif;
    --font_1: normal normal normal 14px/1.4em spinnaker,sans-serif;
    --font_2: normal normal normal 38px/1.4em lulo-clean-w01-one-bold,lulo-clean-w05-one-bold,sans-serif;
    --font_3: normal normal normal 36px/1.4em raleway,sans-serif;
    --font_4: normal normal normal 30px/1.4em raleway,sans-serif;
    --font_5: normal normal normal 28px/1.4em raleway,sans-serif;
    --font_6: normal normal normal 26px/1.4em lulo-clean-w01-one-bold,lulo-clean-w05-one-bold,sans-serif;
    --font_7: normal normal bold 18px/1.4em raleway,sans-serif;
    --font_8: normal normal normal 14px/1.4em raleway,sans-serif;
    --font_9: normal normal normal 13px/1.4em raleway,sans-serif;
    --font_10: normal normal normal 12px/1.4em spinnaker,sans-serif;
    --wix-ads-height: 0px;
    --wix-ads-top-height: 0px;
    --site-width: 980px;
    --above-all-z-index: 100000;
    --portals-z-index: 100001;
    --minViewportSize: 320;
    --maxViewportSize: 1920;
    --pinned-layers-in-page: 0;
    --pinned-layer-in-container: 51;
    --above-all-in-container: 49;
    --transition-duration: 600ms;

.s1B41v {
/* //best value */
	color: rgb(3, 3, 3);
	background-color: rgb(233, 22, 36);
	border-width: 0px;
	border-color: rgba(255,255,255,0)
}

.tbl1,.tbl2 {
	/* border: 1px solid white; */
    border-collapse: collapse;
	text-align: center;
	vertical-align:middle;
	width:80%;
	height:250px;
	padding: 15px;
}
.price td{
	text-align: center;
	vertical-align:middle;
	padding: 10px;
}
.price tr {
	border: 1px solid white;
    border-collapse: collapse;
	background-color: rgb(3, 3, 3);
}
.tbl1 tbody,.tbl2 tbody {
	border: 1px solid white;
    border-collapse: collapse;
}
button{
	border-radius: 0;
	color: rgb(3, 3, 3);
	background-color: rgb(233, 22, 36);
	border-color: rgba(3, 3, 3, 0);
	border-width: 0px;
	padding: 10px;
}

/* #yogatbl,#pttbl,#healthtbl,#pilatestbl {
	width:80%;
} */
</style>
<body class="bg-dark">
	<!-- 회원권구매,회원권조회 -->
	<!-- 시작날짜, 끝나는날짜, 운동종류, 개월수, 가격, -->
	<!-- select조회 -->
	<!-- insert(userid,운동종류,개월수,시작날짜, 끝나는날짜) -->
<jsp:include page="header.jsp"/>
<section class="page-section text-white" id="buyMship">
	<table class=tbl1 align=center>
	<thead><tr><th><h2><a href="/fit/sports1">YOGA</a></h2></th>
		<th><h2><a href="/fit/sports1">PT</a></h2></th>
		<th><h2><a href="/fit/sports1">HEALTH</a></h2></th>
		<th><h2><a href="/fit/sports1">PILATES</a></h2></th></tr></thead>
	<tbody><tr><td align=center>
			<input type="hidden" id=yogacode name=yogacode value="1">
		<table id=yogatbl class="price">
			<tbody></tbody>
		</table>
	</td><td align=center>
			<input type="hidden" id=ptcode name=ptcode value="2">
		<table id=pttbl class="price">
			<tbody></tbody>
		</table>
	</td><td align=center>
			<input type="hidden" id=healthcode name=healthcode value="3">
		<table id=healthtbl class="price">
			<tbody></tbody>
		</table>
	</td><td align=center>
			<input type="hidden" id=pilatescode name=pilatescode value="4">
		<table id=pilatestbl class="price">
			<tbody></tbody>
		</table>
	</td></tr>
	</tbody>
	</table><br>

	<table class=tbl2 align=center>
		<tr><td><input type=date id=date></td></tr>
	</table>

</section>
</body>

<script>
  document.getElementById('date').value = new Date().toISOString().substring(0, 10);;
</script>
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
	Mship('yoga');
	Mship('pt');
	Mship('health');
	Mship('pilates');
})

function Mship(sports){
	$.ajax({
		url:'/fit/Mship',
		data:{code:$('#'+sports+'code').val()},
		dataType:'json',
		method:'GET',
		beforeSend:function(){
			$('#'+sports+'tbl tbody').empty();
		},
		success:function(data){
		   for(i=0; i<data.length; i++){
		      let str='<tr><td>'+data[i]['month']+'</td><td>'+data[i]['price']+' ₩</td>'
			  let check='<td><input type=radio name="radio" value="'+$('#'+sports+'code').val()+'"></td></tr>'
		      console.log(str);
		      $('#'+sports+'tbl tbody').append(str+check);
		   }
		}
	})
}
</script>
</html>