<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="home">Human Fitness</a>
        <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto my-2 my-lg-0">
                <li class="nav-item"><a class="nav-link" href="buyMship">회원권결제</a></li>
                <li class="nav-item"><a class="nav-link" href="list">공지사항</a></li>
                <li class="nav-item"><a class="nav-link" href="community">커뮤니티</a></li>
                <li class="nav-item"><a class="nav-link" href="map">오시는길</a></li>
			  <c:if test="${type==0 }">
		          <li class="nav-item"><a class="nav-link" href="login">로그인</a></li>
		          <li class="nav-item"><a class="nav-link" href="signon">회원가입</a></li>
	          </c:if>
	          <c:if test="${type==1 }">
				<li class="nav-item"><a class="nav-link" href="#">${userid}</a></li>
	            <div class="dropdown text-end">
		            <a class="nav-link dropdown-toggle" href="#" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
						<svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-emoji-smile" viewBox="0 0 16 16">
							<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
							<path d="M4.285 9.567a.5.5 0 0 1 .683.183A3.498 3.498 0 0 0 8 11.5a3.498 3.498 0 0 0 3.032-1.75.5.5 0 1 1 .866.5A4.498 4.498 0 0 1 8 12.5a4.498 4.498 0 0 1-3.898-2.25.5.5 0 0 1 .183-.683zM7 6.5C7 7.328 6.552 8 6 8s-1-.672-1-1.5S5.448 5 6 5s1 .672 1 1.5zm4 0c0 .828-.448 1.5-1 1.5s-1-.672-1-1.5S9.448 5 10 5s1 .672 1 1.5z"/>
						</svg>
					</a>
					
					<ul class="dropdown-menu" aria-labelledby="dropdownUser1">
						<li><a class="dropdown-item" href="mypage">마이페이지</a></li>
						<li><a class="dropdown-item" href="viewmember">관리자페이지</a></li>
						<li><a class="dropdown-item" href="logout">로그아웃</a></li>
					</ul>
				</div>
				</c:if>
			</ul>
		</div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
<div class="dropdown text-end">

<c:if test="${type==2 }">
<a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
<img src="https://github.com/mdo.png" alt="mdo" width="32" height="32" class="rounded-circle">&nbsp;&nbsp;&nbsp;&nbsp;${userid}
</a>
<ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
  <li><a class="dropdown-item" href="mypage">마이페이지</a></li>
<!-- <li><a class="dropdown-item" href="#"></a></li> -->
  <li><a class="dropdown-item" href="logout">로그아웃</a></li>
 
</ul>
</c:if>
</div>
		</div>
	</nav>
</body>
        <script src="<c:url value='/resources/js/scripts.js' />"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</html>