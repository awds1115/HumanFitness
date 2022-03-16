<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head> 
<meta charset="UTF-8">
<title>회원권 결제</title>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
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
.s1B41v {
/* //best value */
	color: rgb(3, 3, 3);
	background-color: rgb(233, 22, 36);
	border-width: 0px;
	border-color: rgba(255,255,255,0)
}

.tbl1 {
	/* border: 1px solid white; */
    border-collapse: collapse;
	text-align: center;
	vertical-align:middle;
	width:80%;
	height:250px;
	padding: 15px;
}
.tblt{
    border-collapse: collapse;
	text-align: center;
	vertical-align:middle;
	width:80%;
	height:350px;
	padding: 15px;
}
.tbl2{
    border-collapse: collapse;
	text-align: center;
	vertical-align:middle;
	width:90%;
	height:90%;
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
.tbl2 tr {
	border: 1px solid white;
    border-collapse: collapse;
	background-color: rgb(3, 3, 3);
}
.tbl1 tbody,.tblt tbody {
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
a {
  color: rgb(233, 22, 36);
  text-decoration: none;
}
.total {
	border: 1px solid white;
	background-color:white;
	width: 99%;
	height: 95%;
}
.total td {
	text-align: center;
	vertical-align:middle;
	border: 1px solid white;
	width: 100px;
}
.totaltd {
	background-color:white;
}
</style>
<body class="bg-dark">
	<!-- 회원권구매,회원권조회 -->
	<!-- 시작날짜, 끝나는날짜, 운동종류, 개월수, 가격, -->
	<!-- select조회 -->
	<!-- insert(userid,운동종류,개월수,시작날짜, 끝나는날짜) -->
<jsp:include page="../header.jsp"/>
<section class="page-section text-white" id="buyMship">
<br><h1 align=center class="text-white font-weight-bold">Booking service</h1><br><br>
	
	<table class=tbl1 align=center>
	<thead><tr><th><h2><a href="/fit/yoga">YOGA</a></h2></th>
		<th><h2><a href="/fit/pt">PT</a></h2></th>
		<th><h2><a href="/fit/health">HEALTH</a></h2></th>
		<th><h2><a href="/fit/pilates">PILATES</a></h2></th></tr></thead>
	<tbody><tr><td align=center>
			<input type="hidden" id=yogacode name=yogacode value="1">
			<input type="hidden" id=nameyoga name=nameyoga value="yoga">
		<table id=yogatbl class="price">
			<tbody></tbody>
		</table>
	</td><td align=center>
			<input type="hidden" id=ptcode name=ptcode value="2">
			<input type="hidden" id=namept name=namept value="pt">
		<table id=pttbl class="price">
			<tbody></tbody>
		</table>
	</td><td align=center>
			<input type="hidden" id=healthcode name=healthcode value="3">
			<input type="hidden" id=namehealth name=codehealth value="health">
		<table id=healthtbl class="price">
			<tbody></tbody>
		</table>
	</td><td align=center>
			<input type="hidden" id=pilatescode name=pilatescode value="4">
			<input type="hidden" id=namepilates name=namepilates value="pilates">
		<table id=pilatestbl class="price">
			<tbody></tbody>
		</table>
	</td></tr>
	</tbody>
	</table><br>

<table class=tblt align=center>
<tr><td>
	<table class=tbl2 align=center>
		<tr>
			<c:if test="${userid == 'null'}"><td>로그인 후 사용해 주세요</td></c:if>
			<c:if test="${userid != 'null'}"><td>${userid}님 안녕하세요</td></c:if>
		</tr>
		<tr><td>
			운동복 (월 5000 ₩)&nbsp;&nbsp;&nbsp;&nbsp;
			<input type=checkbox id=sportswear name=sportswear value='5000'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			락커 (월 5000 ₩)&nbsp;&nbsp;&nbsp;&nbsp;
			<input type=checkbox id=locker name=locker value='5000'></td></tr>
		<tr><td align=center class='totaltd'>
			<table class='total'><tbody>
				<tr><td>종목</td><td>결제내역</td><td>총 결제요금</td></tr>
				<tr><td><span id=months></span></td><td><span id=price></span></td><td><span id=total></span></td></tr>
			</tbody></table>
		</td></tr>
		
		<tr><td><input type=text id=date>&nbsp;&nbsp;-&nbsp;&nbsp;<input type=text id=end_date></td></tr>
		<tr><td><input type=button id='btnPay' name='btnPay' value='결제하기'></td></tr>
	</table>
</td></tr>
</table>

</section>
<jsp:include page="../footer.jsp"/>
</body>
<script src="<c:url value='/resources/js/scripts.js' />"></script>
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<!-- * *                               SB Forms JS                               * *-->
<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<script>document.getElementById('date').value = new Date().toISOString().substring(0, 10);</script>
<script>
$(document)
.ready(function(){
	Mship('yoga');
	Mship('pt');
	Mship('health');
	Mship('pilates');
	
	ClickTables('yoga');
	ClickTables('pt');
	ClickTables('health');
	ClickTables('pilates');

})



//결제하기
.on('click','#btnPay',function(){
	let id='${userid}';
	if(id==''){
		alert('로그인 후 이용 바랍니다.');
		return false;
	} else if ($('#total').html()==''){
		alert('운동종류와 기간을 선택해주세요.');
		return false;
	} else {
		$.ajax({
		   url:"/fit/payment",
		   data:{userid:id,
		        sports_name:$('#months').html(),
		        start_dt:$('#date').val(),
		        end_dt:$('#end_date').val()},
		   method:"GET",
		   datatype:'json',
		   beforeSend:function(){
		   },
		   success:function(data){
		      alert("예약이 완료되었습니다.");
		      document.location='/fit/home';
		   }
		});
	}
})

//datepicker
	$.datepicker.setDefaults({
		dateFormat: 'yy-mm-dd',
		prevText: '이전 달',
		nextText: '다음 달',
		monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
		dayNames: ['일', '월', '화', '수', '목', '금', '토'],
		dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        showMonthAfterYear: true,
        yearSuffix: '',
        minDate: 0
	});

	$("#date").datepicker({
		yearRange: 'c-0:c+3',
		changeYear: true,
		changeMonth: true
	});
	
	let first_date='';
	$('#date').focus(function(){
		first_date=$('#date').val();
	})
	$('#date').change(function(){
		
		after_date = new Date($(this).val());
		let ayyyy = after_date.getFullYear();
		let aMM = after_date.getMonth()+1;
		let add = after_date.getDate();
		console.log('after_date:'+ayyyy+'-'+aMM+'-'+add);
		
		before_date = new Date(first_date);
		let byyyy = before_date.getFullYear();
		let bMM = before_date.getMonth()+1;
		let bdd = before_date.getDate();
		console.log('before_date:'+byyyy+'-'+bMM+'-'+bdd);
		
		let d=add-bdd;
		console.log(d);
		after_end_date = new Date($('#end_date').val());
		console.log(after_end_date);
		let aeyyyy = after_end_date.getFullYear();
		let aeMM = after_end_date.getMonth()+1;
		let aedd = after_end_date.getDate()+d;
		
		console.log('after_end_date:'+aeyyyy+'-'+aeMM+'-'+aedd);
		$('#end_date').val(aeyyyy+'-'+aeMM+'-'+aedd);
	})
//__날짜

function ClickTables(sports){
	$(document).on('click','#'+sports+'tbl > tbody > tr',function(){
		$(this).find("input[type=radio]").prop("checked", true);
		
		var mcode = $('input[name=mcode]:checked').val();
		var sportsName = $('#name'+sports).val();
		let flag = false;
		
		$('#sportswear,#locker').prop("checked",flag);
		
		let arLine = [];
		for(i = 1; i < $('td',this).length + 1; i++){
	        arLine.push($('td:nth-child('+ i +')', this).text());
	     }
		console.log(arLine);
		
		CountDate();
		$('#months').html(sportsName.toUpperCase()+'  '+arLine[1]);
		let arline2=arLine[2].split(' ');
		let swPrice,lckPrice=0;
		let total=parseInt(arline2[0]);
		
		$('#sportswear,#locker').change(function(){
				
			if ($('#sportswear').is(":checked") && $('#locker').is(":checked")){
				console.log('locker and sportsw checked');
				lckPrice= parseInt(mcode)*parseInt($('#locker').val());
				swPrice= parseInt(mcode)*parseInt($('#sportswear').val());
				console.log(lckPrice);
				console.log(swPrice);

				$('#price').html(arline2[0]+' + '+swPrice+' (운동복) '+' + '+lckPrice+' (라커) '+arline2[1]);
				total=parseInt(arline2[0])+swPrice+lckPrice;
				$('#total').html(total+' ₩');
				
			} else if($('#locker').is(":checked")){
				console.log('locker checked');
				lckPrice= parseInt(mcode)*parseInt($('#locker').val());
				console.log(lckPrice);
					
				$('#price').html(arline2[0]+' + '+lckPrice+' (라커) '+arline2[1]);
				total=parseInt(arline2[0])+lckPrice;
				$('#total').html(total+' ₩');
				
			} else if($('#sportswear').is(":checked")){
				console.log('sports checked');
				swPrice= parseInt(mcode)*parseInt($('#sportswear').val());
				console.log(swPrice);
					
				$('#price').html(arline2[0]+' + '+swPrice+' (운동복) '+arline2[1]);
				total=parseInt(arline2[0])+swPrice;
				$('#total').html(total+' ₩');
				
			} else {
				console.log('sports !checked');
				swPrice=0;
				lckPrice=0;
				total=parseInt(arline2[0]);
				$('#price').html(arline2[0]+' '+arline2[1]);
				$('#total').html(total+' ₩');
			}
			return flag;
		})

		$('#price').html(arline2[0]+' '+arline2[1]);
		$('#total').html(total+' ₩');
	})
}

function CountDate(){
		var mcode = $('input[name=mcode]:checked').val();
		if (mcode == '12') {
			let start_date=$('#date').val();
			date = new Date(start_date);
			let yyyy = date.getFullYear();
			let MM = date.getMonth();
			let dd = date.getDate();
			
			date.setFullYear(date.getFullYear()+1);
			yyyy = date.getFullYear();
			date.setMonth(date.getMonth()+1);
			MM = date.getMonth();
			date.setDate(date.getDate()-1);
			dd = date.getDate();

			$('#end_date').val(yyyy+'-'+MM+'-'+dd);
	    } else {
	    	console.log('mcode:'+mcode)
	    	
	    	let start_date=$('#date').val();
			date = new Date(start_date);
			let yyyy = date.getFullYear();
			let MM = date.getMonth();
			let dd = date.getDate();
			
			date.setMonth(date.getMonth()+parseInt(mcode)+1);
			MM = date.getMonth();
			date.setDate(date.getDate()-1);
			dd = date.getDate();

			$('#end_date').val(yyyy+'-'+MM+'-'+dd);
	    }
	}

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
			  let check='<tr><td><input type=radio id=mcode name="mcode" value="'+data[i]['M_code']+'"></td>'
			  let str='<td>'+data[i]['month']+'</td><td>'+data[i]['price']+' ₩</td></tr>'
			  console.log(check+str);
			  
		      $('#'+sports+'tbl tbody').append(check+str);
		   }
		}
	})
}
</script>
</html>