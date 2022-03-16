<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상담문의</title>
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
.tbl{
	width:90%;
}
#mailtbl tr {
	border: 1px solid white;
    border-collapse: collapse;
	background-color: rgb(3, 3, 3);
}
td,th{
	text-align: center;
	/* vertical-align:middle; */
	padding: 15px;
}
.search{
	margin-right:45px;
}
/* .depth3{
	margin-top:200px;
	} */
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
	text-align:center;
	box-sizing:border-box;
	color:#cccccc;
	padding:0 20px;
	font-size:14px;
	}
.depth3 > ul > li.on > a{
	color:#f7f7e4;
	font-weight:500;
	background:#A00000;
	}
a {
/*   color: rgb(233, 22, 36); */
  text-decoration: none;
}
#good {
	text-overflow: ellipsis; 
	white-space: nowrap; 
	max-width: 140px;
	overflow:hidden;
}
</style>
<body class="bg-dark">
<jsp:include page="../header.jsp"/>

<section class="page-section text-white" id="members" style="margin-top:100px;">
<h1 align=center class="text-white font-weight-bold">상담문의 관리</h1><br>
<div class="depth3">
	<ul>
		<li><a href="/fit/viewmember" >회원관리</a></li>
		<li><a href="/fit/mship" >운동종류 관리</a></li>
		<li class="on"><a href="/fit/M_contact" >상담문의 관리</a></li>
	</ul>
</div>
<table class=tbl align=center>
<tr><td align=right>
<div align=right id='search' class="input-group mb-3" style="left: 63%; width: 350px;">
      <input class='form-control' type="text" name="findMail" id="findMail"/>
      <button id="btnSearch" class="btn btn-secondary">회원검색</button>
      <input type="hidden" id=_mno name=_mno>
   </div>
</td></tr>
<tr><td align=center>
<input class="btn btn-secondary" type=button id=btnDelete value="선택삭제" style="margin-right:773px;">
	<table id=mailtbl class="mb-4" align=center>
		<!-- name,nickname,userid,age,gender,mobile,email,type -->
		<thead>
		<tr><th>\</th><th>이름</th><th>이메일</th><th>전화번호</th><th>메세지</th><th>전송날짜</th><th>/</th></tr>
		</thead>
		<tbody id=contacttbl></tbody>
	</table>
		<input class="btn btn-secondary" type=button id=back value="이전">
		<input class="btn btn-secondary" type=button id=next value="다음">
		
</td></tr>
</table>
</section>
<div id="mailview" title="문의 확인" style="display:none;">
	<input type=hidden id="_no" name="_no">
	<div class="input-group mb-3" style="width:500px; margin:auto;">
		<span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >이름</span>
		<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
		       id="nname" name="nname"  readonly>
	</div>
	<div class="input-group mb-3" style="width:500px; margin:auto;">
		<span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >이메일</span>
		<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
		       id="_email" name="_email" readonly>
	</div>
	<div class="input-group mb-3" style="width:500px; margin:auto;">
		<span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >전화번호</span>
		<input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default"
		       id="_mobile" name="_mobile" readonly>
	</div>
	<div class="input-group mb-3" style="width:500px; margin:auto;">
		<span class="input-group-text" id="inputGroup-sizing-default" style="width:90px;" >메세지</span>
		 <textarea class="form-control" id="_message" name="_message" style="height: 10rem" readonly></textarea>
	</div>	
	<input class="btn btn-secondary" type=button id=maildel style="float:right;margin-right:28px;" value="삭제하기">
</div>

        <footer>
        <jsp:include page="../footer.jsp"/>
        </footer>
        <!-- Bootstrap core JS-->
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
</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script src='https://code.jquery.com/ui/1.13.0/jquery-ui.js'></script>
<script>
let pageno=0;
$(document)
.ready(function(){
	loadcontact();
})
.on('click','#back',function(){
	pageno=pageno-1;
													
	if(pageno==-1){
		alert("처음 페이지 입니다.");
		pageno=0;
		return false;
	} else{
	$.ajax({url:'/fit/paging',
		data:{pageno:pageno,find:$('#findMail').val()},
		dataType:'JSON',
		method:'GET',
		beforeSend:function(){
			$('#contacttbl').empty();
		},
		success:function(data){
			for(i=0;i<data.length;i++){
				let str="<tr><td><input type=checkbox value='"+data[i]["no"]+"'name='check' id='check'></td><td id="+data[i]['no']+">"+data[i]['name']+"</td><td>"+data[i]['email']+"</td><td>"
				+data[i]['mobile']+"</td><td id='good'>"+data[i]['message']+"</td><td>"+data[i]['send_dt']+"</td>"
				let button='<td><input type="button" id=btnType value="view" data-userid='+data[i]["no"]+'></td></tr>'
				$('#contacttbl').append(str+button);
			}  
		}
	})
	}
})
.on('click','#next',function(){
   pageno=pageno+1;
      $.ajax({url:'/fit/pagecheck',
            data:{pageno:pageno,find:$('#findMail').val()},
            datatype:'json',
            method:'get',
            success:function(data){
            	console.log(data);
               if(data.length==0 ){
                  alert("마지막 페이지 입니다.");
                  pageno=pageno-1;
                  return false;
               } else{
			   $.ajax({url:'/fit/paging',
			         data:{pageno:pageno,find:$('#findMail').val()},
			         dataType:'JSON',
			         method:'GET',
			 		beforeSend:function(){
						$('#contacttbl').empty();
					},
			         success:function(data){
						for(i=0;i<data.length;i++){
							let str="<tr><td><input type=checkbox value='"+data[i]["no"]+"'name='check' id='check'></td><td id="+data[i]['no']+">"+data[i]['name']+"</td><td>"+data[i]['email']+"</td><td>"
							+data[i]['mobile']+"</td><td id='good'>"+data[i]['message']+"</td><td>"+data[i]['send_dt']+"</td>"
							let button='<td><input type="button" id=btnType value="view" data-userid='+data[i]["no"]+'></td></tr>'
							$('#contacttbl').append(str+button);
						}
			  		 }	
			   })
               }
          } 
	}) 
})
.on('click','#btnSearch',function(){
	$.ajax({url:'/fit/findmail',
		data:{find:$('#findMail').val()},
		dataType:'json',
		method:'GET',
		beforeSend:function(){
			$('#contacttbl').empty();
		},
		success:function(data){
			for(i=0;i<data.length;i++){
				let str="<tr><td><input type=checkbox value='"+data[i]["no"]+"'name='check' id='check'></td><td id="+data[i]['no']+">"+data[i]['name']+"</td><td>"+data[i]['email']+"</td><td>"
				+data[i]['mobile']+"</td><td id='good'>"+data[i]['message']+"</td><td>"+data[i]['send_dt']+"</td>"
				let button='<td><input type="button" id=btnType value="view" data-userid='+data[i]["no"]+'></td></tr>'
				$('#contacttbl').append(str+button);
			}
		}
	})
})
.on('click','#btnDelete',function(){
	if($('input[name=check]:checked').length==0) {
	      alert('하나 이상 체크하세요.');
	      return false;
	   }
	   let check='';
	   $('input[name=check]:checked').each(function() {
	      check+=$(this).val()+",";
	   })
	   console.log(check);
	   if(confirm("정말 삭제하시겠습니까?")){
		$.ajax({
			url:'/fit/muldel',
			data:{check:check},
	   		datatype:'text',
	   		method:'GET',
	   		success:function(txt) {
	            if(txt=="ok") {
	               alert('삭제 되었습니다.');
	               document.location='M_contact';
	            } else { alert('다시 삭제해주세요.'); }
	         }
		});
	   } else{
		   alert("취소하였습니다.");
		   return false;
	   }
})
.on('click','#maildel',function(){
	if(confirm('정말 삭제하시겠습니까?')){
		$.ajax({url:'/fit/maildel',
			data:{no:$('#_no').val()},
			dataType:'text',
			method:'GET',
			success:function(data){
				if(data=="ok"){
					alert("삭제되었습니다.");
					document.location="M_contact";
				} else{
					alert("삭제에 실패 하였습니다.");
					return false;
				}
			}
		})
	} else{
		alert("취소되었습니다.");
		return false;
	}
})	
.on('click','#btnType',function(){
	$('#_mno').val($(this).attr('data-userid'));
	$('#_no').val($(this).attr('data-userid'));
	$('#mailview').dialog({
        width: 600,
        modal:true,
        draggable: true,
        open:function(){
        	$.ajax({url:'/fit/mailview',
        			data:{no:$('#_mno').val()},
        			dataType:'json',
        			method:'GET',
        			success:function(data){
        				$('#nname').val(data[0]['name']);
        				$('#_email').val(data[0]['email']);
        				$('#_mobile').val(data[0]['mobile']);
        				$('#_message').val(data[0]['message']);
        				
        			}
        	})
        }
        })
})
function loadcontact(){
	$.ajax({url:'/fit/contacting',
		data:{},
		dataType:'json',
		method:'GET',
		beforeSend:function(){
			$('#contacttbl').empty();
		},
		success:function(data){
			for(i=0;i<data.length;i++){
				let str="<tr><td><input type=checkbox value='"+data[i]["no"]+"'name='check' id='check'></td><td id="+data[i]['no']+">"+data[i]['name']+"</td><td>"+data[i]['email']+"</td><td>"
						+data[i]['mobile']+"</td><td id='good'>"+data[i]['message']+"</td><td>"+data[i]['send_dt']+"</td>"
				let button='<td><input type="button" id=btnType value="view" data-userid='+data[i]["no"]+'></td></tr>'
				$('#contacttbl').append(str+button);
			}
		}
	})
}
</script>
</html>