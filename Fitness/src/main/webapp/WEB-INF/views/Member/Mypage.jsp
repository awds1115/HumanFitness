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
<title>마이페이지</title>
</head>
<style>
@import url('https://fonts.googleapis.com/css?family=Roboto+Condensed');

input{
　border-left-width:0;
　border-right-width:0;
　border-top-width:0;
　border-bottom-width:1;
}

.back {
    width: 33%;
    height: 200px;
/*     float: left; */
    background-color: #eeeeee;
    border: 10px;
    border-color: #ffffff;
    border-style: solid;
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    counter-increment: bc;
    padding: 0px 5px 5px 5px;
    text-align: center;
    margin-left:auto;
    margin-right:auto;
}


@media screen and (max-width: 1260px) {
    .back {
        width: 50%;
    }
}

@media screen and (max-width: 840px) {
    .back {
        width: 100%;
    }
}


.mb_container_wrap{width:100%; text-align:center; margin-top:200px;}
.m_container{
	text-align:center;
	width:45%;
	color:white;
	display:inline-block;
	vertical-align:top;
}
.b_container{
	display:inline-block;
	width:31.5%;
	padding:0 2rem;
}
	section {width:100%;height:60px;margin:0 auto;}

	section > p {height:30px;width:20%;text-align:center;vertical-align:middle;position:relative;display:inline-block;float:left;font-weight:bold;color:#fff;font-size:13px;}
	section > p strong {position:absolute;bottom:-20px;display:block;width:100%;text-align:center;color:#777;}
	section > p em {vertical-align:middle;font-size:20px;}
	section > p:nth-child(1) {background:#719bb6;}
	section > p:nth-child(2) {background:#4d74cd;}
	section > p:nth-child(3) {background:#6c6ec6;}
	section > p:nth-child(4) {background:#ac6dc9;}
	section > p:nth-child(5) {background:#ec4d5e;}
	table.general td, table.general th {
    border: 0;
    padding: 10px 0;
    text-align: center;
    line-height: 140%;
    vertical-align: middle;
    height: auto;
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
    border-top: solid 2px #a00000;
}
table.general li {
    line-height: normal;
    padding-bottom: 5px;
    text-align: left;
}
#imgpush{padding:2rem 0; background:#fff; text-align:center; position:relative; height:300px; overflow:hidden;}
#imgpush img{max-width:70%; position:absolute; left:50%; top:50%; transform:translate(-50%,-50%);}
</style> 
<body class='bg-dark' class="page-section text-white">
<jsp:include page="../header.jsp"/>
<div class="mb_container_wrap">
	<div class=b_container>
		<div id="imgpush">
			<img src="https://as1.ftcdn.net/v2/jpg/04/71/31/16/1000_F_471311603_v4cR4dSdafLwClot9PtuYUSskqfmumlq.jpg">
		</div><br>
		<c:if test="${view2.weight!=0 }">
		<div class="input-group mb-3" style="margin:auto;" >
		     <span class="input-group-text" id="inputGroup-sizing-default"style="width:97px;">몸무게(kg)</span>
		     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
		           id=weight name=weight value="${view2.weight }">
			 <span class="input-group-text" id="inputGroup-sizing-default"style="width:90px;">키(cm)</span>
		     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
		           id=height name=height value="${view2.height }">           
		</div>
		</c:if>
		<c:if test="${view2.weight ==0 }">
			<div class="input-group mb-3" style="margin:auto;" >
		    	<span class="input-group-text" id="inputGroup-sizing-default"style="width:97px;">몸무게(kg)</span>
		    	<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
		           id=weight name=weight placeholder="입력란">
			 	<span class="input-group-text" id="inputGroup-sizing-default"style="width:90px;">키(cm)</span>
		     	<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
		           id=height name=height placeholder="입력란">           
			</div>
		</c:if>
		<div class="input-group mb-3" style="margin:auto; margin-top:20px; height:60px;" >
	     	<span class="input-group-text" id="inputGroup-sizing-default"style="width:90px;">BMI</span>
	     	<input type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
	               id=bmicheck name=bmicheck readonly>
	     	<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
	               id=bmicheck2 name=bmicheck2 readonly>           
		</div>
		<section id="graph">
			<p><em>저체중</em><strong>1~18.5</strong></p>
			<p><em>정상</em><strong>18.6~23</strong></p>
			<p><em>과체중</em><strong>24~25</strong></p>
			<p><em>비만</em><strong>26~30</strong></p>
			<p><em>고도비만</em><strong>31이상</strong></p>
		</section>
		<div style="margin-bottom: 15px;" align=center>
			<input type="button" class="btn btn-secondary" value="등록하기" id=bmi name=bmi ><br>
		</div>
		
		<div id=pscheck title='비밀번호 확인' style="display:none;">
			<div class="input-group mb-3" style="width:500px; margin:auto;" >
	   			<span class="input-group-text" id="inputGroup-sizing-default"style="width:90px;" >비밀번호</span>
	     		<input type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
	           id=passw name=passw style="text-overflow: ellipsis;">
			</div>
			<div style="margin-bottom: 15px;" align=center>
				<input type="button" class="btn btn-secondary" value="확인" id=next name=next ><br>
			</div>
		</div>	
	</div>
	<div class=m_container >
		<div class="input-group mb-3" style="width:500px; margin:auto;">
		     <span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >아이디</span>
		     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
		           id=id name=id value="${view.userid }" readonly>
		</div>
		<div class="input-group mb-3" style="width:500px; margin:auto;">
		     <span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >닉네임</span>
		     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
		           id=nname name=nname value="${view.nickname }" readonly>
		</div>
		<div class="input-group mb-3" style="width:500px; margin:auto;">
		     <span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >이메일</span>
		     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
		           id=email name=email value="${view.email }" readonly>
		</div>
		<div class="input-group mb-3" style="width:500px; margin:auto;">
		     <span class="input-group-text" id="inputGroup-sizing-default"  >전화번호</span>
		     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
		           id=phone name=phone value="${view.mobile }" readonly>
		</div>
		<div class="input-group mb-3" style="width:500px; margin:auto;" >
		     <span class="input-group-text" id="inputGroup-sizing-default"style="width:90px;" >주소</span>
		     <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
		           id=address name=address value="${view.address }" style="text-overflow: ellipsis;" readonly>
		</div>
		
		<div style="margin-bottom:15px; ">
			<input type="button" class="btn btn-secondary" value="수정하기" id=m_update name=m_update >
			<button type="button" class="btn btn-secondary" id=m_quit name=m_quit style="margin-left:70px;">회원탈퇴</button>  
		</div><br><br>
		<table class="general" style="margin-left:114px;">
			<thead>
				<tr><th>운동명</th><th>기간</th><th>시작날짜</th><th>끝나는날짜</th></tr>
			</thead>
			<tbody id="ticket">
			</tbody>
			<tr><td colspan="3"><td><input type="button" class="btn btn-secondary" value="환불신청" id=ref name=ref></td></tr>
		</table>
	</div>
</div>
</body>
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
.on('click','#next',function(){
	$.ajax({url:'/fit/pwCheck',
		data:{id:$('#id').val()},
		dataType:'json',
		method:'GET',
		success:function(data){
			if($('#passw').val()==data[0]['pw']){
				alert("확인되었습니다.");
				document.location='/fit/M_update';
				return true;
			} else{
				alert("비밀번호가 맞지 않습니다.");
				return false;
			}
		}
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
				let img='<img src="https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=http%3A%2F%2Fcfile4.uf.tistory.com%2Fimage%2F995C2D365E734A1603CCEB">';
				$('#imgpush').append(img);
			}
		}
	})
})
.on('click','#m_update',function(){
	$('#pscheck').dialog({
        width: 600
        })
})
.on('click','#m_quit',function(){
	document.location='/fit/delInfo';
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
				let str="<tr><td><input type=radio id='ticketed' name='ticketed' value='"+data[i]['name']+"'>"+sports_name[0]+"</td><td>"+sports_name[1]+"</td><td>"
						+data[i]['start']+"</td><td>"+data[i]['end']+"</td></tr>"
				$('#ticket').append(str);
			}
		}
})
}
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