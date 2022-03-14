<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<style>
  table {
    padding: 10px;
    text-align:center;
    width: 100%;
    border: 1px solid #444444;
    border-collapse: collapse;
  }
  th, td {
    border: 1px solid #444444;
  }
  .pageInfo{
      list-style : none;
      display: inline-block;
    margin: 50px 0 0 100px;      
  }
  .pageInfo li{
      float: left;
    font-size: 20px;
    margin-left: 18px;
    padding: 7px;
    font-weight: 500;
  }
 a:link {color:black; text-decoration: none;}
 a:visited {color:black; text-decoration: none;}
 a:hover {color:black; text-decoration: underline;}
</style>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Creative - Start Bootstrap Theme</title>
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
        <!-- Contact-->
        <section class="page-section" id="contact">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6 text-center">
                        <h2 class="mt-0">영양 정보가 궁금하시다면?</h2>
                        <hr class="divider" />
                        <p class="text-muted mb-5">아래 검색창에서 해당 식품에 관한 영양 정보를 찾아보세요!</p>
                    </div>
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                    <div class="col-lg-6">
                   
                            <div class="form-floating mb-3" align=center>
                                <input type=text id=value1 name=value1 placeholder="찾을 식품을 입력하세요.">
                                <input type=button id=btnSearch name=btnSearch value="찾기" >
                            </div>
                            <div class="d-grid" style="table-layout:fixed;">
                            <button type=button class="btn btn-primary btn-xl disabled">해당 식품 영양 정보</button>
                            </div>
                    </div>
                </div>
            </div>
                            <table id=tblSearch>
							</table>
		<div class="pageInfo_wrap" >
        	<div class="pageInfo_area">
 				<ul id="pageInfo" class="pageInfo">
 					<!-- 이전페이지 버튼 -->
                	<c:if test="${SearchpageMaker.prev}">
                    	<li class="pageInfo_btn previous"><a href="${SearchpageMaker.startPage-1}">Previous</a></li>
                	</c:if>
 				
 					<!-- 각 번호 페이지 버튼 -->
                	<c:forEach var="num" begin="${SearchpageMaker.startPage}" end="${SearchpageMaker.endPage}">
                    	<li class="pageInfo_btn"><a href="${num}">${num}</a></li>
                	</c:forEach>
                	
                	<!-- 다음페이지 버튼 -->
               		<c:if test="${SearchpageMaker.next}">
                    	<li class="pageInfo_btn next"><a href="${SearchpageMaker.endPage + 1 }">Next</a></li>
                	</c:if> 
 				</ul>
        	</div>
    	</div>
    	
    	<form id="moveForm" method="get">
    		<input type="hidden" id=value1 name=value1>
    		<input type="hidden" name="pageNum" value="${SearchpageMaker.sp.pageNum}">
    		<input type="hidden" name="amount" value="${SearchpageMaker.sp.amount}">
    	</form>
        </section>
        
        <!-- Footer-->
        <jsp:include page="../footer.jsp"/>
<!--         <footer class="bg-light py-5"> -->
<!--             <div class="container px-4 px-lg-5"><div class="small text-center text-muted">Copyright &copy; 2022 - Human Fitness</div></div> -->
<!--         </footer> -->
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
<!-- <div class="searchbox"> -->
<!--       <div class="header"> -->
<!--         <h1>Search</h1> -->
<!--         <input type=text id=value1 name=value1 placeholder="찾을 음식을 입력하세요."> -->
<!--         <input type=button id=btnSearch name=btnSearch value="찾기" > -->
<!--       </div> -->
<!--       <div class="container"> -->
<!-- 		<table id=tblSearch> -->
<!-- 		</table> -->
<!--       </div> -->
<!-- </div> -->
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
$(document)
.on('click','#btnSearch',function(){
	search();
})

$("#value1").keyup(function(e){
	if(e.keyCode == 13){
		search();
	}
})


let moveForm = $("#moveForm");

$(".move").on("click", function(e){
    e.preventDefault();
    
    moveForm.append("<input type='hidden' name='num' value='"+ $(this).attr("href")+ "'>");
    moveForm.attr("action", "/fit/search");
    moveForm.submit();
});

$(".pageInfo a").on("click", function(e){
    e.preventDefault();
    moveForm.find("input[name='pageNum']").val($(this).attr("href"));
    moveForm.attr("action", "/fit/searchlist");
    moveForm.submit();
    
});


$(".search_area button").on("click", function(e){
    e.preventDefault();
    
    let type = $(".search_area select").val();
    let value = $(".search_area input[name='value1']").val();
    
    if(!value){
        alert("키워드를 입력하세요.");
        return false;
    }        
    
    moveForm.find("input[name='value1']").val(value);
    moveForm.find("input[name='pageNum']").val(1);
    moveForm.submit();
});

function search(){
	$.ajax({
		url:"/fit/searchview",
		method:'get',
		data:{value:$('#value1').val()},
		dataType:'json',
		beforeSend:function(){
			$('#tblSearch').empty();
		},
		success:function(txt) {
			let str2='<th>번호</th><th>식품이름</th><th>열량</th><th>탄수화물</th><th>단백질</th><th>지방</th><th>당류</th><th>나트륨</th><th>콜레스테롤</th><th>포화지방산</th><th>트랜스지방</th></tr>'
			$('#tblSearch').append(str2);
			
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
	})
};

</script>
</body>
</html>