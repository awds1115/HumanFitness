<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헬스장 지점</title>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
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
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script src='https://code.jquery.com/ui/1.13.0/jquery-ui.js'></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c3f2905f6044fbfb6bfe9a31a8286794&libraries=services,clusterer,drawing"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c3f2905f6044fbfb6bfe9a31a8286794&libraries=services"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=c3f2905f6044fbfb6bfe9a31a8286794&libraries=LIBRARY"></script>


</head>
<style>
.depth3{
	margin-top:100px;
	

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
	background:#A00000;
	}
.right-info-box { 
padding:1.5rem 0.5rem;
/*  border-bottom: 1px solid #c5c5c5;  */
 }
.right-info-box .info-row { width: 100%;padding:1rem;font-size:16px; }
.right-info-box .info-row .info-tit 
{ 
    display: inline-block;
    vertical-align: top;
    width: 100%;
    color: #000;
    font-weight: 600;
}
.right-info-box .info-row .info-cont
{
    padding:0 0.5rem;
    display: inline-block;
    width: auto;
    color: #888;
    line-height: 1.4; 
} 


</style>
<body>
<!-- 요가,헬스,pt,스피닝,필라테스 crud -->
<!-- 3,6,9,12 타입 crud -->
<section class="page-section bg-dark text-white">
<jsp:include page="header.jsp"/>
</section>
<div class=depth3>
<ul>
	<li class="on" id="cheonan"><a>천안</a></li>
	<li id="suwon"><a>수원</a></li>
	<li id="seoul"><a>서울</a></li>
</ul>
</div>


<!-- 천안지도 -->
<div style="margin-left:400px" id="cheonan_map" >
<div style="font:normal normal 400 12px/normal dotum, sans-serif; width:800px; height:432px; color:#333; position:relative"><div style="height: 400px;"><a href="https://map.kakao.com/?urlX=532830.0&amp;urlY=919106.0&amp;itemId=808699153&amp;q=%ED%9C%B4%EB%A8%BC%EA%B5%90%EC%9C%A1%EC%84%BC%ED%84%B0&amp;srcid=808699153&amp;map_type=TYPE_MAP&amp;from=roughmap" target="_blank"><img class="map" src="http://t1.daumcdn.net/roughmap/imgmap/75d8451c3da3359e6b67c6d663bce97b8cbbd76da37f4d59cd76cab74b36979f" width="798px" height="398px" style="border:1px solid #ccc;"></a></div><div style="overflow: hidden; padding: 7px 11px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 0px 0px 2px 2px; background-color: rgb(249, 249, 249);"><a href="https://map.kakao.com" target="_blank" style="float: left;"><img src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png" width="72" height="16" alt="카카오맵" style="display:block;width:72px;height:16px"></a><div style="float: right; position: relative; top: 1px; font-size: 11px;"><a target="_blank" href="https://map.kakao.com/?from=roughmap&amp;srcid=808699153&amp;confirmid=808699153&amp;q=%ED%9C%B4%EB%A8%BC%EA%B5%90%EC%9C%A1%EC%84%BC%ED%84%B0&amp;rv=on" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">로드뷰</a><span style="width: 1px;padding: 0;margin: 0 8px 0 9px;height: 11px;vertical-align: top;position: relative;top: 2px;border-left: 1px solid #d0d0d0;float: left;"></span><a target="_blank" href="https://map.kakao.com/?from=roughmap&amp;eName=%ED%9C%B4%EB%A8%BC%EA%B5%90%EC%9C%A1%EC%84%BC%ED%84%B0&amp;eX=532830.0&amp;eY=919106.0" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">길찾기</a><span style="width: 1px;padding: 0;margin: 0 8px 0 9px;height: 11px;vertical-align: top;position: relative;top: 2px;border-left: 1px solid #d0d0d0;float: left;"></span><a target="_blank" href="https://map.kakao.com?map_type=TYPE_MAP&amp;from=roughmap&amp;srcid=808699153&amp;itemId=808699153&amp;q=%ED%9C%B4%EB%A8%BC%EA%B5%90%EC%9C%A1%EC%84%BC%ED%84%B0&amp;urlX=532830.0&amp;urlY=919106.0" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">지도 크게 보기</a></div></div></div>
<div>
  <div class="right-info-box">
                    <div class="info-row">
                        <div class="info-tit">연락처</div>
                        <div class="info-cont">041-561-1122</div>
                    </div>
                    <div class="info-row">
                        <div class="info-tit">주소</div>
                        <div class="info-cont">충남 천안시 동남구 대흥로 215 7층</div>
                    </div>
                    <div class="info-row">
                        <div class="info-tit">찾아오시는길</div>
                        <div class="info-cont">1호선 천안역 3번출구 이용 도보 5분</div>
                    </div>
                    <div class="info-row">
                        <div class="info-tit">주차안내</div>
                        <div class="info-cont">무료주차 3시간 가능</div>
                    </div>
                </div>
</div>
</div>
<!-- 서울지도 -->
<div id="seoul_map" style="display:none;margin-left:400px;">
<div style="font:normal normal 400 12px/normal dotum, sans-serif; width:800px; height:432px; color:#333; position:relative"><div style="height: 400px;"><a href="https://map.kakao.com/?urlX=479321.0&amp;urlY=1116340.0&amp;itemId=1742826337&amp;q=%ED%9C%B4%EB%A8%BC%EA%B5%90%EC%9C%A1%EC%84%BC%ED%84%B0%20%EC%84%9C%EC%9A%B8&amp;srcid=1742826337&amp;map_type=TYPE_MAP&amp;from=roughmap" target="_blank"><img class="map" src="http://t1.daumcdn.net/roughmap/imgmap/a9b4f0fb89c1c1fb71a3bc155de5de11433f6b61de8699be98a946d72aef4dc3" width="798px" height="398px" style="border:1px solid #ccc;"></a></div><div style="overflow: hidden; padding: 7px 11px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 0px 0px 2px 2px; background-color: rgb(249, 249, 249);"><a href="https://map.kakao.com" target="_blank" style="float: left;"><img src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png" width="72" height="16" alt="카카오맵" style="display:block;width:72px;height:16px"></a><div style="float: right; position: relative; top: 1px; font-size: 11px;"><a target="_blank" href="https://map.kakao.com/?from=roughmap&amp;srcid=1742826337&amp;confirmid=1742826337&amp;q=%ED%9C%B4%EB%A8%BC%EA%B5%90%EC%9C%A1%EC%84%BC%ED%84%B0%20%EC%84%9C%EC%9A%B8&amp;rv=on" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">로드뷰</a><span style="width: 1px;padding: 0;margin: 0 8px 0 9px;height: 11px;vertical-align: top;position: relative;top: 2px;border-left: 1px solid #d0d0d0;float: left;"></span><a target="_blank" href="https://map.kakao.com/?from=roughmap&amp;eName=%ED%9C%B4%EB%A8%BC%EA%B5%90%EC%9C%A1%EC%84%BC%ED%84%B0%20%EC%84%9C%EC%9A%B8&amp;eX=479321.0&amp;eY=1116340.0" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">길찾기</a><span style="width: 1px;padding: 0;margin: 0 8px 0 9px;height: 11px;vertical-align: top;position: relative;top: 2px;border-left: 1px solid #d0d0d0;float: left;"></span><a target="_blank" href="https://map.kakao.com?map_type=TYPE_MAP&amp;from=roughmap&amp;srcid=1742826337&amp;itemId=1742826337&amp;q=%ED%9C%B4%EB%A8%BC%EA%B5%90%EC%9C%A1%EC%84%BC%ED%84%B0%20%EC%84%9C%EC%9A%B8&amp;urlX=479321.0&amp;urlY=1116340.0" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">지도 크게 보기</a></div></div></div>
<div>
  <div class="right-info-box">
                    <div class="info-row">
                        <div class="info-tit">연락처</div>
                        <div class="info-cont">02-3667-3688</div>
                    </div>
                    <div class="info-row">
                        <div class="info-tit">주소</div>
                        <div class="info-cont">서울 영등포구 영중로8길 6 6층</div>
                    </div>
                    <div class="info-row">
                        <div class="info-tit">찾아오시는길</div>
                        <div class="info-cont">1호선 영등포역 5번출구 이용 300m</div><br>
                        <div class="info-cont">5호선 영등포시장역 3번출구 이용 500m</div>
                    </div>
                    <div class="info-row">
                        <div class="info-tit">주차안내</div>
                        <div class="info-cont">무료주차 3시간 가능</div>
                    </div>
                </div>
</div>
</div>

<!-- 수원지도 -->
<div id=suwon_map style="display:none;margin-left:400px;">
<div style="font:normal normal 400 12px/normal dotum, sans-serif; width:800px; height:432px; color:#333; position:relative"><div style="height: 400px;"><a href="https://map.kakao.com/?urlX=506100.0&amp;urlY=1049382.0&amp;itemId=322722768&amp;q=%ED%9C%B4%EB%A8%BC%EA%B5%90%EC%9C%A1%EC%84%BC%ED%84%B0&amp;srcid=322722768&amp;map_type=TYPE_MAP&amp;from=roughmap" target="_blank"><img class="map" src="http://t1.daumcdn.net/roughmap/imgmap/f91b863b109e74ffcb5590b2a328a8d7ee5e48cfe6bc3123b6018b10672fc0bc" width="798px" height="398px" style="border:1px solid #ccc;"></a></div><div style="overflow: hidden; padding: 7px 11px; border: 1px solid rgba(0, 0, 0, 0.1); border-radius: 0px 0px 2px 2px; background-color: rgb(249, 249, 249);"><a href="https://map.kakao.com" target="_blank" style="float: left;"><img src="//t1.daumcdn.net/localimg/localimages/07/2018/pc/common/logo_kakaomap.png" width="72" height="16" alt="카카오맵" style="display:block;width:72px;height:16px"></a><div style="float: right; position: relative; top: 1px; font-size: 11px;"><a target="_blank" href="https://map.kakao.com/?from=roughmap&amp;srcid=322722768&amp;confirmid=322722768&amp;q=%ED%9C%B4%EB%A8%BC%EA%B5%90%EC%9C%A1%EC%84%BC%ED%84%B0&amp;rv=on" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">로드뷰</a><span style="width: 1px;padding: 0;margin: 0 8px 0 9px;height: 11px;vertical-align: top;position: relative;top: 2px;border-left: 1px solid #d0d0d0;float: left;"></span><a target="_blank" href="https://map.kakao.com/?from=roughmap&amp;eName=%ED%9C%B4%EB%A8%BC%EA%B5%90%EC%9C%A1%EC%84%BC%ED%84%B0&amp;eX=506100.0&amp;eY=1049382.0" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">길찾기</a><span style="width: 1px;padding: 0;margin: 0 8px 0 9px;height: 11px;vertical-align: top;position: relative;top: 2px;border-left: 1px solid #d0d0d0;float: left;"></span><a target="_blank" href="https://map.kakao.com?map_type=TYPE_MAP&amp;from=roughmap&amp;srcid=322722768&amp;itemId=322722768&amp;q=%ED%9C%B4%EB%A8%BC%EA%B5%90%EC%9C%A1%EC%84%BC%ED%84%B0&amp;urlX=506100.0&amp;urlY=1049382.0" style="float:left;height:15px;padding-top:1px;line-height:15px;color:#000;text-decoration: none;">지도 크게 보기</a></div></div></div>
<div>
  <div class="right-info-box">
                    <div class="info-row">
                        <div class="info-tit">연락처</div>
                        <div class="info-cont">031-239-5855</div>
                    </div>
                    <div class="info-row">
                        <div class="info-tit">주소</div>
                        <div class="info-cont">경기 수원시 팔달구 중부대로 100</div>
                    </div>
                    <div class="info-row">
                        <div class="info-tit">찾아오시는길</div>
                        <div class="info-cont">분당선 매교역 7번출구이용 도보 26분</div>
                    </div>
                    <div class="info-row">
                        <div class="info-tit">주차안내</div>
                        <div class="info-cont">무료주차 3시간 가능</div>
                    </div>
                </div>
</div>
</div>


<jsp:include page="footer.jsp"/>

</body>
<script>
$(document)
.on('click','#cheonan',function(){
	$('#suwon').removeClass("on");
	$('#seoul').removeClass("on");
	$('#cheonan').addClass("on");
	$("#suwon_map").hide();
	$("#seoul_map").hide();
	$("#cheonan_map").show();
})
.on('click','#suwon',function(){
	$('#cheonan').removeClass("on");
	$('#seoul').removeClass("on");
	$('#suwon').addClass("on");
	$("#cheonan_map").hide();
	$("#seoul_map").hide();
	$("#suwon_map").show();
})
.on('click','#seoul',function(){
	$('#suwon').removeClass("on");
	$('#seoul').addClass("on");
	$('#cheonan').removeClass("on");
	$("#suwon_map").hide();
	$("#cheonan_map").hide();
	$("#seoul_map").show();
})
</script>
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
</html>