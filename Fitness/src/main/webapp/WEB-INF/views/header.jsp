<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
#dropdownUser1{ 
    font-family: "Merriweather Sans", -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
    font-weight: 700;
    color:#fff;
    }
</style>
<body>
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="home">Human Fitness</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="buyMship">회원권결제</a></li>
                        <li class="nav-item"><a class="nav-link" href="list">공지사항</a></li>
                        <li class="nav-item"><a class="nav-link" href="#portfolio">커뮤니티</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">??</a></li>
        		  <c:if test="${type==0 }">
                  <li class="nav-item"><a class="nav-link" href="login">로그인</a></li>
                  <li class="nav-item"><a class="nav-link" href="signon">회원가입</a></li>
                  </c:if>
                    </ul>
                </div>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 
                  

				<c:if test="${type==1 }">
				   <div class="dropdown text-end">
                  <a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="https://github.com/mdo.png" alt="mdo" width="32" height="32" class="rounded-circle">&nbsp;${userid}
                  </a>
                 
                  <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
                  
                    <li><a class="dropdown-item" href="mypage">마이페이지</a></li>
                    
                    <li><a class="dropdown-item" href="viewmember">관리자페이지</a></li>
                   
<!--                     <li><a class="dropdown-item" href="#"></a></li> -->
<!--                     <li><hr class="dropdown-divider"></li> -->
                    <li><a class="dropdown-item" href="logout">로그아웃</a></li>
                   
                  </ul>
       			</c:if>
       			<c:if test="${type==2 }">
       			 <div class="dropdown text-end">
       			<a href="#" class="d-block link-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                    <img src="https://github.com/mdo.png" alt="mdo" width="32" height="32" class="rounded-circle">&nbsp;${userid}
                  </a>
                  <ul class="dropdown-menu text-small" aria-labelledby="dropdownUser1">
                    <li><a class="dropdown-item" href="mypage">마이페이지</a></li>
<!--                     <li><a class="dropdown-item" href="#"></a></li> -->
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