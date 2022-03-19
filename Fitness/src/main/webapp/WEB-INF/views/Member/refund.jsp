<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환불관리</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script src="//code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
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
.ch-window .search-wrap .btn {
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
.board-table th {
  text-align: center;
}

.board-table .th-num {
  width: 100px;
  text-align: center;
}

.board-table .th-date {
  width: 200px;
}

.board-table th, .board-table td {
  padding: 14px 0;
}

.board-table tbody td {
  border-top: 1px solid #e7e7e7;
  text-align: center;
}

.board-table tbody th {
  padding-left: 28px;
  padding-right: 14px;
  border-top: 1px solid #e7e7e7;
  text-align: left;
}

.board-table tbody th p{
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
#search{
   margin-left:45px;
}

.depth3 > ul{
   font-size:0;
   text-align:center;
   padding-left:0;
   }
.depth3 > ul > li {
   display:inline-block;
   vertical-align:top;
   min-width:180px;
   box-sizing:border-box;
   border:1px solid #999;
   border-right:0;
}
.depth3 > ul > li.on {
   border:1px solid #A00000;
}
.depth3 > ul > li > a {
   display:block;
   height:46px;
   line-height:46px;
   text-align:center;
   box-sizing:border-box;
   color:#555;
   padding:0 20px;
   font-size:14px;
   }
.depth3 > ul > li.on > a {
   color:#f7f7e4;
   font-weight:500;
   background:#A00000;
}
a {
  text-decoration: none;
}
#btnDelete {
   border-radius: 5px;
   text-align:center;
   vertical-align:middle;
   border:1px solid #999;
   border-radius:0;
}
#back,#next {
   vertical-align: middle;
   text-align: center;
   align: center;
   padding:3px 10px;
}
#good {
   text-overflow: ellipsis; 
   white-space: nowrap; 
   max-width: 140px;
   overflow:hidden;
}
</style>
<body>
<section class="page-section bg-dark text-white">
<jsp:include page="../header.jsp"/>
</section>

<section class="page-section" id="members">
  <div class="page-title">
      <div class="container" align=center>
      <h2>관리자페이지</h2><br><br>
     </div>
   <div class="depth3">
      <ul>
         <li><a href="/fit/viewmember" >회원관리</a></li>
         <li><a href="/fit/mship" >운동종류 관리</a></li>
         <li><a href="/fit/M_contact" >상담문의 관리</a></li>
         <li class="on"><a href="/fit/refund" >환불 관리</a></li>
      </ul>
   </div>
  </div>
  
<div id="board-search">
    <div class="container">
        <div class="search-window">
         <div class="search-wrapper">
            <div style="width: 350px; float:left;" class="search-wrap">
               <button class="btn" id=btnDelete>상태변경</button>
               				<select class="btn btn-dark" id=stat style="padding:1.65%">
					<option value=0>모두보기</option>
					<c:forEach items="${stat }" var="st">
					<option value="${st.no_type }">${st.ref_name }</option>
					</c:forEach>
				</select>
            </div>
            <div id='search' class="search-wrap"></div>
            <div id='search' class="search-wrap">
               <input type="search" name="findMail" id="findMail"/>
               <button id="btnSearch" class="btn btn-dark">회원검색</button>
            </div>
         </div>   
        </div>
    </div>
</div>
    
<div id="board-list">
    <div class="container">
    
   <table id=mailtbl class="board-table" align=center>
      <thead>
      <tr><th>\</th><th>아이디</th><th>운동명</th><th>개월수</th><th>시작날짜</th><th>끝나는날짜</th><th>상태</th><th>/</th></tr>
      </thead>
      <tbody id=reftbl></tbody>
   </table>
   </div>
    <div id="board-search">
    <div class="container">
        <div class="search-window">
      <button id='back' class="btn btn-light">
         <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-left-square-fill" viewBox="0 0 16 16">
           <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm10.5 10V4a.5.5 0 0 0-.832-.374l-4.5 4a.5.5 0 0 0 0 .748l4.5 4A.5.5 0 0 0 10.5 12z"/>
         </svg>
      </button>&nbsp;&nbsp;&nbsp;&nbsp;
      <button id='next' class="btn btn-light">
         <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-caret-right-square-fill" viewBox="0 0 16 16">
           <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2zm5.5 10a.5.5 0 0 0 .832.374l4.5-4a.5.5 0 0 0 0-.748l-4.5-4A.5.5 0 0 0 5.5 4v8z"/>
         </svg>
      </button>
      </div>
      </div>
   </div>
</div>
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
</div>

<div id=refchange title='상태변경' style="display:none;">
		<div>변경하실 상태를 고른 후 완료 를 눌러주세요.</div>
			<select class="btn btn-dark" id=changeref>
				<c:forEach items="${stat }" var="st">
					<option value="${st.no_type }">${st.ref_name }</option>
				</c:forEach>
			</select>
	<div style="margin-bottom: 15px;" align=center>
		<input type="button" class="btn btn-dark" value="확인" id=refund2 name=refund2 ><br>
	</div>
</div>


<footer>
<jsp:include page="../footer.jsp"/>
</footer>
</body>

       
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
        <!-- Core theme JS-->
                <script src="<c:url value='/resources/js/scripts.js' />"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script src='https://code.jquery.com/ui/1.13.0/jquery-ui.js'></script>
<script>
let fitst="";
let second="";
let third="";
let spname="";

$(document)
.ready(function(){
	loadticket();
})
.on('click','#refund2',function(){
   	$('#reftbl tr').each(function(){
  		if($(this).find('td:eq(0) input:checkbox').prop('checked')==true){
  			first = $(this).find('td:eq(1)').text();
  			second = $(this).find('td:eq(2)').text();
  			third = $(this).find('td:eq(3)').text();
  			spname = second+"  "+third;
  		      $.ajax({
  		          url:'/fit/delref',
  		          data:{userid:first,spname:spname, ref_no:$("#changeref option:selected").val()},
  		             datatype:'text',
  		             method:'GET',
  		             success:function(txt) {}
  		       });
  		     }
  	})
  	alert("완료되었습니다.");
  	document.location="refund";
})
.on('change','#stat',function(){
	if($("#stat option:selected").val() != 0 ){
		$.ajax({url:'/fit/stating',
			data:{stat:$("#stat option:selected").val()},
			dataType:'json',
			method:'GET',
			beforeSend:function(){
				$('#reftbl').empty();
			},
			success:function(data){
				console.log(data);
				for(i=0;i<data.length;i++){
					sports_name=data[i]['name'].split("  ");
					let str="<tr><td><input type=checkbox id='check' name='check' value='"+data[i]['userid']+"'></td><td>"+data[i]['userid']+"</td><td>"+sports_name[0]+"</td><td>"+sports_name[1]+"</td><td>"
							+data[i]['start']+"</td><td>"+data[i]['end']+"</td><td>"+data[i]['refund']+"</td></tr>"
					$('#reftbl').append(str);
				}
			}
		})
	} else {
		loadticket();
	}
})
.on('click','#btnDelete',function(){
   if($('input[name=check]:checked').length==0) {
         alert('하나 이상 체크하세요.');
         return false;
      }
	$('#refchange').dialog({
        width: 600,
        modal: true,
        })
})   
function loadticket(){
	$.ajax({url:'/fit/refunding',
		data:{},
		dataType:'json',
		method:'GET',
		beforeSend:function(){
			$('#reftbl').empty();
		},
		success:function(data){
			console.log(data);
			for(i=0;i<data.length;i++){
				sports_name=data[i]['name'].split("  ");
				let str="<tr><td><input type=checkbox id='check' name='check' value='"+data[i]['userid']+"'></td><td>"+data[i]['userid']+"</td><td>"+sports_name[0]+"</td><td>"+sports_name[1]+"</td><td>"
						+data[i]['start']+"</td><td>"+data[i]['end']+"</td><td>"+data[i]['refund']+"</td></tr>"
				$('#reftbl').append(str);
			}
		}
})
}
</script>
</body>
</html>