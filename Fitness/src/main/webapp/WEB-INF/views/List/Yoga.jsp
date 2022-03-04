<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>요가</title>
</head>

<style>
.depth3{
	margin-top:200px;
	

	}
.depth3 > ul{
	font-size:0;
	text-align:center;

	}
.depth3 > ul > li{
	display:inline-block;
	vertical-align:top;
	min-width:180px;
	box-sizing:border-box;
	box-shadow: 1px 1px 0 0 #e5e5e5 inset, -1px -1px 0 0 #e5e5e5 inset;
	}
.depth3 > ul > li > a{
	display:block;
	height:46px;
	line-height:46px;
	text-align:center;box-sizing:border-box;
	color:#484848;padding:0 20px;
	font-size:14px;
	}
.depth3 > ul > li.on{box-shadow:none;}
.depth3 > ul > li.on > a{
	color:#f7f7e4;
	font-weight:600;
	background:#64a19d
	}
</style>
<body>


<jsp:include page="../header.jsp"/>
<div class="depth3">
	<ul>
		<li class="on"><a href="/fit/pt" >PT</a></li>
		<li><a href="/fit/health">헬스</a></li>
		<li><a href="/fit/pilates">필라테스</a></li>
	</ul>
	<br><br>
		<div id=video align=center></div>
		<div class="slide_text" align=center><br>
			<p class="text-black-50">요가는 명상과 호흡, 스트레칭 등을 결합하여 심신의 균형 있는 발달을 돕고 바른 자세와 골격 강화에 도움이 된다. 
			<br>또한 이완과 명상을 통해 마음의 평화와 안정을 가져다주어 피로 및 스트레스 해소 효과도 있다.</p>
		</div>
	</div>
</body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
$(document)
.ready(function(){
	//1~5까지 랜덤
	
	let random=Math.floor(Math.random() * 5) + 1;
	$.ajax({url:'/fit/video',
		data:{no:random},
		datatype:'text',
		method:'GET',
		success:function(txt){
			$('#video').append(txt[0]['url']);
			
		}
		})
})

</script>
<script src="<c:url value='/resources/js/scripts.js' />"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</html>