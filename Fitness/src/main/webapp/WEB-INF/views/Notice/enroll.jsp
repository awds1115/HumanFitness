<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">



<!-- jQuery -->

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<!-- Favicon -->
<link rel="icon" type="image/x-icon" href="resources/assets/favicon.ico" />
<link rel="icon" type="image/x-icon" href="resources/assets1/favicon.ico" />
<!-- Simple line icons -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.5.5/css/simple-line-icons.min.css" rel="stylesheet" />
<!-- Google fonts -->
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap) -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/styles.css"/>


<!-- Bootstrap CSS -->

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">

<title>board</title>

<style>

 .containerchu { 

    padding-top: 100px;  
    padding-left: 200px;  
    padding-right: 200px;  
    padding-bottom: 30px;  
 } 
 
textarea{ 
 	resize:none; 
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

</style>

</head>

<body>
<section class="page-section bg-dark text-white">
<jsp:include page="../header.jsp"/>
</section>


	<article>

		<div class="containerchu" role="main">

			<h2>문의사항 등록</h2><hr><br><br>

			<form action="/fit/enroll" method="post">

				<div class="mb-3">

					<label for="title">제목</label>

					<input type="text" class="form-control" name="title" id="title" placeholder="제목을 입력해 주세요">

				</div>

				

				<div class="mb-3">

					<label for="content">내용</label>

					<textarea class="form-control" rows="15" name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea>

				</div>

				
			
			    <div class="input_wrap">
			        <input type=hidden name="writer" value="${nickname}">
			    </div>

			

			

			<div >

				<button class="btn btn-dark" id="btnSave">저장</button>

<!-- 				<button type="button" class="btn btn-sm btn-primary" id="btnList">목록</button> -->

			</div>
</form>
		</div>

	</article>
<jsp:include page="../footer.jsp"/>
</body>
<!-- Font Awesome icons (free version) -->
   <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
<!--     Core theme JS -->
   <script src="<c:url value='/resources/js/scripts.js' />"></script>
   <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * -->
   <!-- * *                               SB Forms JS                               * * -->
   <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * * -->
   <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * -->
   <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
   <!-- Bootstrap core JS -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
   <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<script>

</script>
</html>
<!-- <html lang="en"> -->
<!--     <head> -->
      
<!--         include libraries(jQuery, bootstrap) -->
<!--         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> -->

<!--         <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script> -->
<!--         <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script> -->
<!--         <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script> -->
        
<!--         <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet"> -->
<!--         <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>                      -->
 
    
<!--         <meta charset="UTF-8"> -->
<!--         <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<!--         <title>bulletin_write</title>   -->


<!--     </head> -->
<!--     <body style="padding-top: 5rem;"> -->
<!--         <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top"> -->
<!--             <a class="navbar-brand" href="#">Home</a> -->
<!--             <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation"> -->
<!--               <span class="navbar-toggler-icon"></span> -->
<!--             </button> -->
      
<!--             <div class="collapse navbar-collapse" id="navbarsExampleDefault"> -->
<!--               <ul class="navbar-nav mr-auto"> -->

<!--               </ul> -->
<!--               <form class="form-inline my-2 my-lg-0"> -->
<!--                 <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search"> -->
<!--                 <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button> -->
<!--               </form> -->
<!--             </div> -->
<!--         </nav> -->
  

<!--         <main role="main" class="container"> -->
<!--             <form name="form" method="POST" action="/bulletin_wr01"> -->
<!--                 <div class="pt-1"></div> -->
<!--                     <input type="text" name="title" placeholder="제목을 입력하세요" style="border-radius:5px; width:100%; padding:5px;"> -->
<!--                 </div> -->
<!--                 <div class="pt-1"> -->
<!--                     <textarea id="summernote" name="contents"></textarea> -->
<!--                 </div>     -->
<!--                 <script> -->
<!-- //                     $('#summernote').summernote({ -->
<!-- //                       placeholder: '내용을 입력해주세요', -->
<!-- //                       tabsize: 2, -->
<!-- //                       height: 300 -->
<!-- //                     }); -->
<!--                   </script>                      -->
<!--                 <div class="pt-1 text-right"> -->
<!--                     <button class="btn btn btn-success" type="submit" style="width:10%;" padding:5px;">제출</button> -->
<!--                 </div>     -->
<!--             </form> -->
<!--         </main>         -->
<!--     </body> -->
<!-- </html> -->
