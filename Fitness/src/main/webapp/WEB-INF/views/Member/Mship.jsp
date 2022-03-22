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

</head>
<style>
.depth3>ul {
   font-size: 0;
   text-align: center;
   padding-left: 0;
}

.depth3>ul>li {
   display: inline-block;
   vertical-align: top;
   min-width: 180px;
   box-sizing: border-box;
   border: 1px solid #999;
}

.depth3>ul>li.on {
   border: 1px solid #A00000;
}

.depth3>ul>li>a {
   display: block;
   height: 46px;
   line-height: 46px;
   text-align: center;
   box-sizing: border-box;
   color: #555;
   padding: 0 20px;
   font-size: 14px;
}

.depth3>ul>li.on>a {
   color: #f7f7e4;
   font-weight: 500;
   background: #A00000;
}

.tbl {
   width: 90%;
   height: 500px;
   border: 1px solid white;
   border-collapse: collapse;
   background-color: #f9f7f9;
}

#selsports td {
   /* text-align: center; */
   vertical-align: middle;
   width: 150px;
   padding: 3px;
}

.radio_td {
   width: 50px;
}

#selsports tbody tr:hover {
   background-color: rgba(3, 3, 3, 0.5) !important;
}

a {
   /*   color: rgb(233, 22, 36); */
   text-decoration: none;
}
#sptype li{
	width:150px;
	float:right;
	margin-top: 8px;
}
#sptype li:hover{
	color: #999999;
}
</style>
<body>
<section class="page-section bg-dark text-white">
<jsp:include page="../header.jsp"/>
</section>

<section class="page-section" id="members">
  <div class="page-title"><br><br>
      <div class="container" align=center>
      <h2>관리자페이지</h2>
     </div><br><br><br>
   <div class="depth3">
      <ul>
         <li><a href="/fit/viewmember" >회원관리</a></li>
         <li class="on"><a href="/fit/mship" >운동종류 관리</a></li>
         <li><a href="/fit/M_contact" >상담문의 관리</a></li>
         <li><a href="/fit/refund" >환불 관리</a></li>
      </ul>
   </div>
  </div>
<hr align=center style="width: 90%; margin: auto;;">
<table align=center class="tbl">
<tr><td align=center valign='middle'>

   <div class="input-group mb-3" align=center style="width: 500px;">
      <table class='form-control' id=selsports>
         <tbody></tbody></table>
      <button id=showdlg class="btn btn-secondary">운동종류변경</button>
   </div>
   
</td><td align=center>

   <div>
      <div class="input-group mb-3" style="width: 500px;">
         <span class="input-group-text" id="inputGroup-sizing-default" style="width: 100px;">번호</span> 
         <input type="text" class="form-control" id=no name=no readonly>
      </div>

      <div class="input-group mb-3" style="width: 500px;">
         <span class="input-group-text" style="width: 100px;">운동명</span> 
         <select class="form-control" id=code name=code></select>
      </div>

      <div class="input-group mb-3" style="width: 500px;">
         <span class="input-group-text" style="width: 100px;">개월수</span> 
            <select class="form-control" id=month name=month></select>
      </div>

      <div class="input-group mb-3" style="width: 500px;">
         <span class="input-group-text" id="inputGroup-sizing-default" style="width: 100px;">가격</span> 
         <input type="text" class="form-control" id=price name=price>
      </div>
      
      <div align=center>
         <input type=button class="btn btn-secondary" value='확인' id=mship_submit> 
         <input type=button class="btn btn-secondary" value='초기화' id='reset'> 
         <input type=button class="btn btn-secondary" value='삭제' id=btnmshipDelete>
      </div>
   </div>
</td></tr>
</table>
</section>

<div id='dlgSports' align=center style='display: none; valign:middle' title='운동종류변경'>
   <!-- display:none;  -->
<!--    <table align=center valign=middle> -->
<!--       <tr><td align=center> -->
<!--          <table align=center> -->

<div style="float:left;background-color:white;color:black;">
<!-- <select id='SportsType' size=5 style="width: 150px;"></select> -->
<ul id='sptype' style="width:150px;"></ul>



</div><div style="float:right;">            

<div style="text-align:right;vertical-align:middle;margin-top: 25px;">
운동코드
<input readonly type=number name=Sportscode id=Sportscode><br>
운동명
         <input type=text name=Sportsname id=Sportsname><br>
</div>
</div>
</div>
   <input type=hidden id=userid2 name=userid2 value=${userid }>
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
.ready(function() {
		sports();
		code('#code');
		for (i = 1; i <= 12; i++) {
			$('#month').append('<option>' + i + '개월</option>');
		}
	})
.on('click', '#btnmshipDelete', function() {
		$.ajax({
			url : "/fit/D_Mship",
			data : {no : $('#no').val()},
			datatype : 'json',
			method : "GET",
			success : function(txt) {
				sports();
				$('#no').val('');
				$('#price').val('');
			}

		});
	})
.on('click', '#mship_submit', function() {
		let M_code = $('#month').val().replace('개월', '');
		$.ajax({
			url : "/fit/CU_Mship",
			data : {
				no : $('#no').val(),
				code : $("#code").val(),
				month : $('#month').val(),
				price : $('#price').val(),
				M_code : M_code
			},
			datatype : 'json',
			method : "GET",
			success : function(txt) {
				sports();
			}

		});
	})
.on('click', '#SportsType option', function() {
		console.log($(this).text());
		$('#Sportscode').val($(this).val());
		let str = $(this).text();
		$('input[name=Sportsname]').val(str);

		return false;
	})
.on('click', '#sptype li', function() {
		console.log($(this).text());
		$('#Sportscode').val($(this).val());
		let str = $(this).text();
		$('input[name=Sportsname]').val(str);

		return false;
	})
.on('click', '#showdlg', function() {
		$('#dlgSports').dialog({
			width: 500,
			height: 300,
		    modal: true,
		    draggable: true,
		    buttons: {
		    	"확인" : function(){
		    		$.ajax({
		    			url : "/fit/CU_sports_type",
		    			data : {
		    				code : $('#Sportscode').val(),
		    				Sportsname : $('#Sportsname').val() },
		    			datatype : 'json',
		    			method : "GET",
		    			success : function(txt) {
// 		    				code('#SportsType');
							ulcode('#sptype');
		    				$('#Sportscode,#Sportsname').val('');
		    			}
		    		});
		    	},
		    	"초기화" : function(){
		    		$('#Sportscode').val('');
		    		$('#Sportsname').val('');
		    	},
		    	"삭제" : function(){
		    		$.ajax({
		    			url : "/fit/D_sports_type",
		    			data : {
		    				code : $('#Sportscode').val(),
		    			},
		    			datatype : 'json',
		    			method : "GET",
		    			success : function(txt) {
// 		    				code('#SportsType');
							ulcode('#sptype');
		    				$('#Sportscode,#Sportsname').val('');
		    			}
		    		});
		    	}
		    },
			open : function() {
// 				code('#SportsType');
				ulcode('#sptype');
			},
			close : function() {
				sports();
			}
		})
	})
.on('click', '#reset', function() {
		$('#no').val('');
		$('#month').val('');
		$('#price').val('');
	})
.on('click', '#selsports > tbody > tr', function() {
	$(this).find("input[type=radio]").prop("checked", true);
		$('#no').val($('input[name=m_num]:checked').val());
		
		let arLine = [];
		for(i = 2; i < $('td',this).length + 1; i++){
	        arLine.push($('td:nth-child('+ i +')', this).text());
	     }
		console.log(arLine);
		
		let code = $.trim(arLine[0]);
		let month = $.trim(arLine[1]);
		$('#month option').each(function() {
			console.log($(this).text());
			if ($(this).text() == month) {
				$(this).prop('selected', true);
				return false;
			}
		});
		$('#price').val(arLine[2]);
		$('#code').val('');
		$('#code option').each(function() {
			console.log($(this).text());
			if ($(this).text() == code) {
				$(this).prop('selected', true);
				return false;
			}
		})
		return false;
	})
	.on('click','#buy',function(){
   if($('#userid2').val()=="null"){
      if(confirm("로그인이 필요한 서비스 입니다.\n로그인을 하시겠습니까?")){
         document.location="login";
      } else{
         return false;
      }

   } else{
      document.location="buyMship";
   }
})
function sports() {
		$('#selsports tbody').empty();
		$.ajax({
			url : "/fit/mshiplist",
			data : {},
			datatype : 'json',
			method : "GET",
			success : function(txt) {
				for (i = 0; i < txt.length; i++) {
					let str = '<tr><td class="radio_td"><input type=radio name="m_num" value="'+txt[i]['no']+'"></td><td>'
							+ txt[i]['s_name'] + '</td><td>' + txt[i]['month'] + '</td><td>'
							+ txt[i]['price'] + '</td></tr>';
					$('#selsports tbody').append(str);
				}
			}

		});

	}
function code(sel) {
		$(sel).empty();
		$.ajax({
			url : "/fit/sportslist",
			data : {},
			datatype : 'json',
			method : "GET",
			success : function(txt) {
				for (i = 0; i < txt.length; i++) {
					let str = '<option value='+txt[i]['code']+'>'
							+ txt[i]['s_name'] + '</option>';
					$(sel).append(str);
				}
			}

		});
	}
function ulcode(sel) {
	$(sel).empty();
	$.ajax({
		url : "/fit/sportslist",
		data : {},
		datatype : 'json',
		method : "GET",
		success : function(txt) {
			for (i = 0; i < txt.length; i++) {
				let str = '<li value='+txt[i]['code']+'>'
						+ txt[i]['s_name'] + '</li>';
				$(sel).append(str);
			}
		}

	});
}
</script>
</html>