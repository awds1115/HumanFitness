<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
<!--         Navigation -->
        <jsp:include page="../header.jsp"/>
        <!-- Contact-->
        <section class="page-section" id="contact">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6 text-center">
                        <h2 class="mt-0">영양 정보가 궁금하시다면?</h2>
                        <hr class="divider" />
                        <p class="text-muted mb-5">아래 검색창에서 해당 음식에 관한 영양 정보를 찾아보세요!</p>
                    </div>
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                    <div class="col-lg-6">
                   
                            <div class="form-floating mb-3" align=center>
                                <input type=text id=value1 name=value1 placeholder="찾을 음식을 입력하세요.">
                                <input type=button id=btnSearch name=btnSearch value="찾기" >
                            </div>
                            <div class="d-grid" style="table-layout:fixed;">
                            <button type=button class="btn btn-primary btn-xl disabled">영양 정보</button>
                                <table id=tblSearch style="margin-left: auto; margin-right: auto;" style="text-align: center;">
								</table>
                            </div>
                    </div>
                </div>
               
            </div>
        </section>
        <!-- Footer-->
        <footer class="bg-light py-5">
            <div class="container px-4 px-lg-5"><div class="small text-center text-muted">Copyright &copy; 2022 - Human Fitness</div></div>
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
}

// function filter(){

//   var value, i;

//   value = document.getElementById("value").value.toUpperCase();

//   for(i=0;i<item.length;i++){
//     if(name[0].innerHTML.toUpperCase().indexOf(value) > -1){
//       item[i].style.display = "flex";
//     }else{
//       item[i].style.display = "none";
//     }
//   }
// }
</script>
</html>