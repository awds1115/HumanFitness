<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원권 관리</title>
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
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script src='https://code.jquery.com/ui/1.13.0/jquery-ui.js'></script>
</head>
<style>
.Mship_home{
	float:right;
	margin-top:280px;
	margin-right:20%;
}
</style>
<body class="bg-dark">
<!-- 요가,헬스,pt,스피닝,필라테스 crud -->
<!-- 3,6,9,12 타입 crud -->
<jsp:include page="../header.jsp" />


				<div class="input-group mb-3" style="width:300px; margin:auto; margin-top:200px;float:left; margin-left:25%;">
				<input type=button id=showdlg value='운동종류변경' style="margin-left:58%;" class="btn btn-secondary">
				     <select  aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
        			   id=selsports style="width:300px;" size=15></select>
   				</div>
	<div class=Mship_home>
				<div class="input-group mb-3" style="width: 160px; margin: auto; margin-right:100%;">
         			<span class="input-group-text" id="inputGroup-sizing-default"
            		style="width: 90px;">번호</span> <input type="text"
            		class="form-control" aria-label="Sizing example input"
            		aria-describedby="inputGroup-sizing-default" id=no name=no
             		readonly>
      			</div>

					<div class="input-group mb-3" style="width:500px; margin:auto;">
				     	<span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >운동명</span>
				     	<select  aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
				           id=code name=code style="width:200px;"></select>
				   </div>

					<div class="input-group mb-3" style="width:500px; margin:auto;">
				     	<span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >개월수</span>
				     	<select  aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
				           id=month name=month style="width:200px;"></select>
				   </div>

				<div class="input-group mb-3" style="width: 200px; margin: auto;margin-right:100%;">
			         <span class="input-group-text" id="inputGroup-sizing-default" style="width: 90px;">가격</span> 
			         <input type="text" class="form-control" aria-label="Sizing example input"
			            aria-describedby="inputGroup-sizing-default" id=price name=price>
      			</div>
				<div style="margin-right:50%;" align=center>
      
      					<input type=button class="btn btn-secondary"  value='확인' id=mship_submit>
						<input type=button class="btn btn-secondary"  value='초기화' id='reset'>
						<input type=button class="btn btn-secondary"  value='삭제' id=btnmshipDelete>
   				</div>
						

</div>

<div id='dlgSports' style='text-align:center; valign:middle;display:none; '> <!-- display:none;  -->
	<table>
		<tr>
			<td>
					<table>
						<tr>
							<td>
								운동코드
								</td><td><input readonly type=number name=Sportscode id=Sportscode><br>
							</td>
						<tr>
							<td>
								운동명
								</td><td><input type=text name=Sportsname id=Sportsname><br>
							</td>
						</tr>
						<tr>
							<td>
								<input type=button value='확인' id=s_type_submit>
								<input type=reset value='초기화' id=s_type_reset>
								<input type=button value='삭제' id=btnTypeDelete>
							</td>
						</tr>
					</table>
			
			<td>
				<select id='SportsType' size=5>
				</select>
			</td>
		</tr>	
	</table>
	</div>
</body>
<script>
$(document)
.ready(function(){
	sports();
	code('#code');
	for(i=1;i<=12;i++){
		$('#month').append('<option>'+i+'개월</option>');
	}
})
.on('click','#btnmshipDelete',function(){
	$.ajax({url:"/fit/D_Mship",
		data:{no:$('#no').val()},
		datatype:'json',
		method:"GET",
		success:function(txt){
			sports();
			$('#no').val('');
			$('#price').val('');
		}
		
	});
})
.on('click','#btnTypeDelete',function(){
	$.ajax({url:"/fit/D_sports_type",
		data:{
			code:$('#Sportscode').val(),
			},
		datatype:'json',
		method:"GET",
		success:function(txt){
			code('#SportsType');
			$('#Sportscode,#Sportsname').val('');
		}
	});
})
.on('click','#s_type_submit',function(){
	$.ajax({url:"/fit/CU_sports_type",
		data:{
			code:$('#Sportscode').val(),
			Sportsname:$('#Sportsname').val()
			},
		datatype:'json',
		method:"GET",
		success:function(txt){
			code('#SportsType');
			$('#Sportscode,#Sportsname').val('');
		}
	});
})
.on('click','#mship_submit',function(){
	let M_code=$('#month').val().replace('개월','');
	$.ajax({url:"/fit/CU_Mship",
		data:{no:$('#no').val(),
			code:$("#code").val(),
			month:$('#month').val(),
			price:$('#price').val(),
			M_code:M_code},
		datatype:'json',
		method:"GET",
		success:function(txt){
			sports();
		}
		
	});
})
.on('click','#s_type_reset',function(){
	$('#Sportscode').val('');
	$('#Sportsname').val('');
})
.on('click','#SportsType option',function(){
	console.log($(this).text());
	$('#Sportscode').val($(this).val());
	let str=$(this).text();
	$('input[name=Sportsname]').val(str);

	return false;
})
.on('click','#showdlg',function(){
	$('#dlgSports').dialog({
		width:600,
		modal:true,
		open:function(){
			code('#SportsType');
		},
		close:function(){
			sports();
		}
	})
})
.on('click','#reset',function(){
	$('#no').val('');
	$('#month').val('');
	$('#price').val('');
})
.on('click','#selsports option',function(){
	console.log($(this).text());
	$('#no').val($(this).val());
	let str=$(this).text();
	let ar=str.split(',');
	let code=$.trim(ar[0]);
	let month=$.trim(ar[1]);
	$('#month option').each(function(){
		if($(this).text()==month){
			$(this).prop('selected',true);
			return false;
		}
	});
	$('input[name=price]').val(ar[2]);
	$('#code').val('');
	$('#code option').each(function(){
		if($(this).text()==code){
			$(this).prop('selected',true);
			return false;
		}
	})	
	return false;
})
function sports(){
	$('#selsports').empty();
	$.ajax({url:"/fit/mshiplist",
		data:{},
		datatype:'json',
		method:"GET",
		success:function(txt){
			for(i=0;i<txt.length;i++){
				let str='<option value='+txt[i]['no']+'>'+txt[i]['s_name']+','+txt[i]['month']+','+txt[i]['price']+'</option>';
				$('#selsports').append(str);
			}
		}
		
	});
	
}
function code(sel){
	$(sel).empty();
	$.ajax({url:"/fit/sportslist",
		data:{},
		datatype:'json',
		method:"GET",
		success:function(txt){
			for(i=0;i<txt.length;i++){
				let str='<option value='+txt[i]['code']+'>'+txt[i]['s_name']+'</option>';
				$(sel).append(str);
			}
		}
		
	});
}
</script>

<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<!-- * *                               SB Forms JS                               * *-->
<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->

</html>