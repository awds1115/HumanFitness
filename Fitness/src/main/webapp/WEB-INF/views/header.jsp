<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Human Fitness</title>
</head>
<style>
#navbarDarkDropdownMenuLink{color:rgba(255,255,255,0.7);}
.navbar-shrink #navbarDarkDropdownMenuLink{color:#212529;}
/* ul li태그에 리스트 스타일을 없앰 */
	ul li{
		list-style: none;
	}
/* a태그에 텍스트 밑줄을 없애고 색상을 #333 */
	a {
		text-decoration: none;
		color:white;
	}
	#menu {
		margin:-3px 0;
		text-align: center;
		position:relative;
		
	}

	.ulclass {
		display:none;
		background:#333;
		padding:7px;
		position:absolute;
		top:120%;
		left:50%;
		transform:translateX(-50%);
		width:120px;
		overflow:hidden;
		border-radius:10px;
	}
	.ulclass > li > a {
		display:block;
		padding:7px 0;
		transition:0.1s;
	}
	#menu > ul > li {
		
		font-size:14px;
		background: #333;
		
			
	}
	#menu> ul > li:hover {
		background: #f00000;
	}
	#menu > ul > li:hover a{
		color:#fff;
		font-weight:700;
	}
</style>
<body>
        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="home">Human Fitness</a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0" id=menu1>
                        <li class="nav-item"><a class="nav-link" id="buy">회원권결제</a></li>
                        <li class="nav-item"><a class="nav-link" href="notice">공지사항</a></li>
                        <li class="nav-item"><a class="nav-link" href="community">커뮤니티</a></li>
                        <li class="nav-item"><a class="nav-link" href="map">오시는길</a></li>
	        		<c:if test="${type==0 }">
	                	<li class="nav-item"><a class="nav-link" href="login">로그인</a></li>
	                	<li class="nav-item"><a class="nav-link" href="signon">회원가입</a></li>
	                </c:if>
	                <c:if test="${type==1 }">
						<li id=menu class="nav-item"><a href="#" id="navbarDarkDropdownMenuLink">${userid}</a>
							<ul class="ulclass">
								<li><a href="mypage">마이페이지</a></li>
								<li><a href="viewmember">관리자페이지</a></li>
								<li><a href="logout">로그아웃</a></li>
							</ul>
						</li>
					</c:if>
                    </ul>
                    
       			<c:if test="${type==2 }">
						<li id=menu class="nav-item"><a href="#" id="navbarDarkDropdownMenuLink">${userid}</a>
							<ul class="ulclass">
								<li><a href="mypage">마이페이지</a></li>
								<li><a href="logout">로그아웃</a></li>
							</ul>
						</li>
					</c:if>
                </div>
                </div>

        </nav>
</body>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script>
$(document)
.on('click','#navbarDarkDropdownMenuLink',function(){
	$('.ulclass').toggle();
	
})
</script>
</html>