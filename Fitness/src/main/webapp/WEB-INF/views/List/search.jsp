<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<style>
 table {
  border-collapse: collapse;
  border-spacing: 0;
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

.board-table .th-num {
  width: 100px;
  text-align: center;
}

.board-table .th-date {
  width: 200px;
}

.board-table th, .board-table td {
  padding: 14px 15px;
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
/* #alldata {
   border-radius: 5px;
   text-align:center;
   vertical-align:middle;
   border:1px solid #999;
   border-radius:0;
   float:left;
} */
.pageInfo_area { width:1000px; margin:0 auto;  }
.pageInfo {text-align:center; }
.pageInfo li { display:inline-block; text-align:center; }
 a:link {color:white; text-decoration: none;}
 a:visited {color:white; text-decoration: none;}
 
</style>
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Human Fitness</title>
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
<!-- Custom styles for this template -->
<!--     <link href="headers.css" rel="stylesheet"> -->

</head>
 <body id="page-top">
<section class="page-section bg-dark text-white">
<jsp:include page="../header.jsp"/>
</section>
   <section class="page-section" id="contact">
       <div class="container px-4 px-lg-5">
           <div class="row gx-4 gx-lg-5 justify-content-center">
               <div class="col-lg-8 col-xl-6 text-center">
               <br><br><br>
                   <h2 class="mt-0"><i class="bi bi-bar-chart-line-fill"></i>&nbsp;영양 정보가 궁금하시다면?</h2><br>
                   <hr class="divider" />
                   <p class="text-muted mb-5">아래 검색창에서 해당 식품에 관한 영양 정보를 찾아보세요!</p>
               </div>
           </div>
       </div>
       
<div id="board-search">
    <div class="container">
        <div class="search-window">
         <div class="search-wrapper">
             <div class="search-wrap" style="float:left;">
                <button id=alldata type=button class="btn" style="width: 350px;"></button>
         	</div>
            <div id='search' class="search-wrap">
                    <input type=search id=value1 name=value1 placeholder="찾을 식품을 입력하세요.">&nbsp;&nbsp;
                    <button id=btnSearch name=btnSearch class="btn btn-dark">찾기</button>&nbsp;
                    <svg xmlns="http://www.w3.org/2000/svg" width="23" height="23" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
					  <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
					</svg>
               </div>
         </div>   
        </div>
    </div>
</div>
       
       
<div id="board-list">
    <div class="container">
	    <table id=tblSearch class=board-table>
		</table>
	</div>
</div>
	<hr>
	<div class="pageInfo_wrap" >
        <div class="pageInfo_area">
 			<ul id="pageInfo" class="pageInfo">
 				<li><i class="bi bi-caret-left-fill"></i></li>
 				<li><input type=button id=back value=이전></li>&nbsp;&nbsp;&nbsp;&nbsp;
 				<li><input type=button id=next value=다음></li>
 				<li><i class="bi bi-caret-right-fill"></i></li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </ul>
        </div>
    </div>
</section>
<input type=hidden id=userid2 name=userid2 value=${userid }>
        <!-- Footer-->
<jsp:include page="../footer.jsp"/>
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
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
pageno=0;
$(document)
.on('click','#btnSearch',function(){
	search();
})
.on('click','#back',function(){
   pageno=pageno-1;
   if(pageno==-1) {
	  alert("처음 페이지 입니다.");
      pageno=0;
      return false;
   } else {
       $.ajax({url:'/fit/paging3',
        data:{pageno:pageno,keyword:$('#value1').val()},
        dataType:'JSON',
        method:'get',
        success:function(txt){
       	 	$('#tblSearch').empty();
       		let str2='<th>번호</th><th>식품이름</th><th>열량</th><th>탄수화물</th><th>단백질</th><th>지방</th><th>당류</th><th>나트륨</th><th>콜레스테롤</th><th>포화지방산</th><th>트랜스지방</th></tr>'
			$('#tblSearch').append(str2);
            for(i=0; i<txt.length; i++){
               let str='<tr><td>'+txt[i]['num']+'</td><td>'+txt[i]['name']
			+'</td><td>'+txt[i]['kcal']+'</td><td>'+txt[i]['carbohydrate']
			+'</td><td>'+txt[i]['protein']+'</td><td>'+txt[i]['fat']
			+'</td><td>'+txt[i]['sugars']+'</td><td>'+txt[i]['na']
			+'</td><td>'+txt[i]['cholesterol']+'</td><td>'+txt[i]['saturated_fatty_acids']
			+'</td><td>'+txt[i]['transfat']+'</td>';
			$('#tblSearch').append(str);
         	}  
      	}
   	   })
	}
})  // pagecheck

.on('click','#next',function(){
	pageno=pageno+1;
	$.ajax({url:'/fit/pagecheck3',
	  	data:{pageno:pageno,keyword:$('#value1').val()},
        datatype:'json',
        method:'get',
        success:function(txt){                                          
        	if(txt=='[]'){
               alert("마지막 페이지 입니다.");
               pageno=pageno-1;
               return false;
            }
			 $.ajax({url:'/fit/paging3',
		         data:{pageno:pageno,keyword:$('#value1').val()},
		         dataType:'JSON',
		         method:'get',
		         success:function(txt){
		        	 $('#tblSearch').empty();
		        	 let str2='<th>번호</th><th>식품이름</th><th>열량</th><th>탄수화물</th><th>단백질</th><th>지방</th><th>당류</th><th>나트륨</th><th>콜레스테롤</th><th>포화지방산</th><th>트랜스지방</th></tr>'
		     		 $('#tblSearch').append(str2);
		             for(i=0; i<txt.length; i++){
		                let str='<tr><td>'+txt[i]['num']+'</td><td>'+txt[i]['name']
						+'</td><td>'+txt[i]['kcal']+'</td><td>'+txt[i]['carbohydrate']
						+'</td><td>'+txt[i]['protein']+'</td><td>'+txt[i]['fat']
						+'</td><td>'+txt[i]['sugars']+'</td><td>'+txt[i]['na']
						+'</td><td>'+txt[i]['cholesterol']+'</td><td>'+txt[i]['saturated_fatty_acids']
						+'</td><td>'+txt[i]['transfat']+'</td>';
						$('#tblSearch').append(str);
		         	}
	   			}
	      	})
	    } // pagecheck
	}) // pagecheckc
})


$("#value1").keyup(function(e){
	if(e.keyCode == 13){
		search();
	}
})


// $(".pageInfo a").on("click", function(e){
//     e.preventDefault();
//     moveForm.find("input[name='pageNum']").val($(this).attr("href"));
//     moveForm.attr("action", "/fit/search");
//     moveForm.submit();
    
// });

function search(){
	$.ajax({
		url:"/fit/searchview",
		method:'get',
		data:{value:$('#value1').val()},
		dataType:'json',
		beforeSend:function(){
			$('#tblSearch').empty();
			$('#alldata').empty();
		},
		success:function(txt) {
			let str2='<th>번호</th><th>식품이름</th><th>열량</th><th>탄수화물</th><th>단백질</th><th>지방</th><th>당류</th><th>나트륨</th><th>콜레스테롤</th><th>포화지방산</th><th>트랜스지방</th></tr>'
			$('#tblSearch').append(str2);
			// 데이터가 50개 미만일 때
			if(txt.length<50) {
				$('#alldata').append("해당 식품 영양 정보 "+(txt.length-1)+"개");
				txt.pop();
				
				for(i=0; i<txt.length; i++) {
					let str='<tr><td>'+txt[i]['num']+'</td><td>'+txt[i]['name']
					+'</td><td>'+txt[i]['kcal']+'</td><td>'+txt[i]['carbohydrate']
					+'</td><td>'+txt[i]['protein']+'</td><td>'+txt[i]['fat']
					+'</td><td>'+txt[i]['sugars']+'</td><td>'+txt[i]['na']
					+'</td><td>'+txt[i]['cholesterol']+'</td><td>'+txt[i]['saturated_fatty_acids']
					+'</td><td>'+txt[i]['transfat']+'</td>';
					$('#tblSearch').append(str);
		    	}
				
			} else {
			// 데이터가 50개 이상일 때
				$('#alldata').append("해당 식품 영양 정보 "+txt[50]+"개");				
				txt.pop();
				
				for(i=0; i<txt.length; i++) {
					let str='<tr><td>'+txt[i]['num']+'</td><td>'+txt[i]['name']
					+'</td><td>'+txt[i]['kcal']+'</td><td>'+txt[i]['carbohydrate']
					+'</td><td>'+txt[i]['protein']+'</td><td>'+txt[i]['fat']
					+'</td><td>'+txt[i]['sugars']+'</td><td>'+txt[i]['na']
					+'</td><td>'+txt[i]['cholesterol']+'</td><td>'+txt[i]['saturated_fatty_acids']
					+'</td><td>'+txt[i]['transfat']+'</td>';
					$('#tblSearch').append(str);
	    		}
			}
    	}
	})
}
</script>
</body>
</html>