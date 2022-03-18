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

			<form action="/fit/QnA_enroll" method="post">

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
