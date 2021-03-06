<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html> 
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>HumanFitness</title>
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
<!-- https://www.bodychannel.co.kr/dist/img/main/slide_bg_4.jpg -->
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <jsp:include page="header.jsp"/>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container px-4 px-lg-5 h-100">
                <div class="row gx-4 gx-lg-5 h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-8 align-self-end">
                        <h1 class="text-white font-weight-bold">LET'S GET MOVING</h1>
                        <hr class="divider" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 mb-5">"WHAT SEEMS IMPOSSIBLE TODAY WILL SOON<br> BECOME YOUR WARM-UP"</p>
                        <a class="btn btn-primary btn-xl" href="#about">Start</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- About-->
        <section class="page-section bg-primary" id="about">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 text-center">
                        <h2 class="text-white mt-0">Human Fitness</h2>
                        <hr class="divider divider-light" />
                        <p class="text-white-75 mb-4">Human Fitness ! ????????? ????????????. ????????? ????????? ????????? ???????????????! ??????????????? ????????? ??????????????? ???????????? ?????? ????????? ????????? ?????? ?????? ???????????? ?????? ?????? ?????? ?????????????????????. ????????? ???????????? ???????????? ????????????, ????????? ????????? ???????????? ????????? ????????? ?????? ????????? ????????? ????????? ????????? ?????? ????????? ??? ?????? ????????? ?????? ????????? ?????? ???????????????. ????????? ?????? ??????, ????????? ?????? ?????????????????????.</p>
                        <a class="btn btn-light btn-xl" href="map">????????????</a>
                    </div>
                </div>
            </div>
        </section>
       
        <!-- Portfolio-->
        <div id="portfolio">
            <div class="container-fluid p-0">
                <div class="row g-0">
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="health" title="health">
                            <img class="img-fluid2" src="resources/assets/img/goodhealth.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">HumanFitness</div>
                                <div class="project-name">Health</div>
                            </div>
                        </a>
                    </div>
                    
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="yoga" title="Yoga">
                            <img class="img-fluid3" src="resources/assets/img/goodyoga.jpg" alt="..."/>
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">HumanFitness</div>
                                <div class="project-name">Yoga</div>
                            </div>
                        </a>
                    </div>
                    
                    <div class="col-lg-4 col-sm-6">
                        <a class="portfolio-box" href="pilates" title="Pilates">
                            <img class="img-fluid" src="resources/assets/img/goodpilates.jpg" alt="..." />
                            <div class="portfolio-box-caption">
                                <div class="project-category text-white-50">HumanFitness</div>
                                <div class="project-name">Pilates</div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <br><br>
            <div class="container px-4 px-lg-5 text-center">
                <a class="btn btn-primary btn-xl" id=buy>????????? ??????</a>
            </div>

        <!-- Contact-->
        <section class="page-section" id="contact">
            <div class="container px-4 px-lg-5">
                <div class="row gx-4 gx-lg-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6 text-center">
                     	<h3 class="mt-0">Human Fitness</h3>
                        <h2 class="mt-0" style="color:#F00000;">????????????</h2>
                        <hr class="divider" />
                        <p class="text-muted mb-5">Human Fitness??? ?????? ???????????? ????????? ????????? ???????????????.<br>
												   ??????????????? ?????? ????????? ????????? ???????????? ???????????? ???????????? ????????? ????????? ??????????????????.</p>
                    </div>
                </div>
                <div class="row gx-4 gx-lg-5 justify-content-center mb-5">
                    <div class="col-lg-6">
                        <form action="/fit/contact" id="mailsend">
                            <!-- Name input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="name"  name="name" type="text" placeholder="Enter your name..." />
                                <label for="name">??????</label>
                            </div>
                            <!-- Email address input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="email" name="email"type="text" placeholder="name@example.com" />
                                <label for="email">?????????</label>
                            </div>
                            <!-- Phone number input-->
                            <div class="form-floating mb-3">
                                <input class="form-control" id="phone" name="phone" type="text" placeholder="(123) 456-7890" />
                                <label for="phone">????????????</label>
                            </div>
                            <!-- Message input-->
                            <div class="form-floating mb-3">
                                <textarea class="form-control" id="message" name="message"type="text" placeholder="Enter your message here..." style="height: 10rem" data-sb-validations="required"></textarea>
                                <label for="message">??????</label>
                            </div>
                            <div class="d-grid">
                            <button type="submit"  class="btn btn-primary btn-xl">????????????</button>
                            </div>
                        </form>
                    </div>
                </div>
             
            </div>
        </section>

        <jsp:include page="footer.jsp"/>
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
<!--         <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script> -->
    </body>
<script src='https://code.jquery.com/jquery-3.5.0.js'></script>
<script>
$(document)
.on('submit','#mailsend',function(){
	if($('#name').val()=="" || $('#email').val()=="" || $('#phone').val()=="" || $('#message').val()==""){
		alert("???????????? ?????? ????????? ????????????.");
		return false;
	} else {
		alert("??????????????? ??????????????? ?????? ???????????????.");
		return true;
	}
})
</script>
</html>
