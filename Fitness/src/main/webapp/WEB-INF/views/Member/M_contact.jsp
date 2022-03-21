   <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상담문의</title>
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
 table {
  border-collapse: collapse;
  border-spacing: 0;
}
section.notice {
  padding: 80px 0;
}

.page-title {
  margin-bottom: 60px;
}
.page-title h3 {
  font-size: 28px;
  color: #333333;
  font-weight: 400;
  text-align: center;
}

#board-search .search-window {
  padding: 15px 0;
  background-color: #f9f7f9;
}
#board-search .search-window .search-wrap {
  position: relative;
/*    padding-right: 124px; */
   display: block;
   margin: 20px 0 20px 0;
   float:right;
}
#board-search .search-window .search-wrapper {
   overflow:hidden;
   padding:0 1.3rem;
}
#board-search .search-window .search-wrap input {
  height: 40px;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board-search .search-window .search-wrap select {
  height: 40px;
  width: 300px;
  align: left;
  font-size: 14px;
  padding: 7px 14px;
  border: 1px solid #ccc;
}
#board-search .search-window .search-wrap input:focus {
  border-color: #333;
  outline: 0;
  border-width: 1px;
}
#board-search .search-window .search-wrap .btn {
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

/* reset */

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

///////////////////////////////////

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
  <div class="page-title"><br><br>
      <div class="container" align=center>
      <h2>관리자페이지</h2>
     </div><br><br><br>
   <div class="depth3">
      <ul>
         <li><a href="/fit/viewmember" >회원관리</a></li>
         <li><a href="/fit/mship" >운동종류 관리</a></li>
         <li class="on"><a href="/fit/M_contact" >상담문의 관리</a></li>
         <li><a href="/fit/refund" >환불 관리</a></li>
      </ul>
   </div>
  </div>
  
<div id="board-search">
    <div class="container">
        <div class="search-window">
         <div class="search-wrapper">
            <div style="width: 350px; float:left;" class="search-wrap">
               <button class="btn" id=btnDelete>선택삭제</button>
            </div>
            <div id='search' class="search-wrap">
               <input type="search" name="findMail" id="findMail"/>
               <button id="btnSearch" class="btn btn-dark">회원검색</button>
                  <input type="hidden" id=_mno name=_mno>
            </div>
         </div>   
        </div>
    </div>
</div>
    
<div id="board-list">
    <div class="container">
    
   <table id=mailtbl class="board-table" align=center>
      <!-- name,nickname,userid,age,gender,mobile,email,type -->
      <thead>
      <tr><th>\</th><th>이름</th><th>이메일</th><th>전화번호</th><th>메세지</th><th>전송날짜</th><th>/</th></tr>
      </thead>
      <tbody id=contacttbl></tbody>
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
   } else {
      $.ajax({url:'/fit/paging',
         data:{pageno:pageno,find:$('#findMail').val()},
         dataType:'JSON',
         method:'GET',
         beforeSend:function(){
            $('#contacttbl').empty();
         },
         success:function(data){
            for(i=0;i<data.length;i++){
               let str="<tr><td><input type=checkbox value='"+data[i]["no"]
                  +"'name='check' id='check'></td><td id="+data[i]['no']
                  +">"+data[i]['name']+"</td><td>"+data[i]['email']+"</td><td>"
                  +data[i]['mobile']+"</td><td id='good'>"+data[i]['message']
                  +"</td><td>"+data[i]['send_dt']+"</td>"
               let button='<td><input type="button" class="btn btn-dark" id=btnType value="view" data-userid='+data[i]["no"]+'></td></tr>'
               $('#contacttbl').append(str+button);
            }}
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
               } else {
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
                     let button='<td><input type="button" class="btn btn-dark" id=btnType value="view" data-userid='+data[i]["no"]+'></td></tr>'
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
            let button='<td><input type="button" class="btn btn-dark" id=btnType value="view" data-userid='+data[i]["no"]+'></td></tr>'
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
.on('click','#btnType',function(){
   $('#_mno').val($(this).attr('data-userid'));
   $('#_no').val($(this).attr('data-userid'));
   $('#mailview').dialog({
        width: 600,
        modal: true,
        draggable: true,
        buttons: {
          "Delete": function() { 
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
             } else {
                alert("취소되었습니다.");
                return false;
             }
          }
       },
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
     });
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
            let button='<td><input type="button" class="btn btn-dark" id=btnType value="view" data-userid='+data[i]["no"]+'></td></tr>'
            $('#contacttbl').append(str+button);
         }
      }
   })
}
</script>
</html>